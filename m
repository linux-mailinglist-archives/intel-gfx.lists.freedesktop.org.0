Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GE/pBHCsxGnl2AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 04:48:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C3332EE6A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 04:47:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B59210E8FC;
	Thu, 26 Mar 2026 03:47:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m+hYEI5V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42E1610E8FA;
 Thu, 26 Mar 2026 03:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774496876; x=1806032876;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mnCyzAUusFuOFVpAH4ukrgVr7Uf92C3PWQ7A/aCd48s=;
 b=m+hYEI5V/GmPvqGegwpZj5F0E+gK4f4LXh9DNVO8mT0Q8N14b2aBsXuU
 fJfvOZm+QsHUDiFAED7kFGs8JhqK061C09falgNCV8yI3wJSvpXlLs45S
 J5TKyJzjbkoodCLkdnXdI7UNhrgvICr5+IDtVBuyzJXdlhGzl2fUXum5K
 gDKCAWwuV8XO54H/RfZtQrDixUvcboUPDF20o77zH7NpNNcdf0tFzzVwr
 KB5Iuyxlmt3LzuDalVxu8gEPJ33RgoT985F/SHmgKBtaoHy/tW/eElo0e
 QlhbsUyWPiDt5XVoVgxeb7pgrtbxUI2Fqj7a0Xr+irxyjl4Go9x8OnaF9 Q==;
X-CSE-ConnectionGUID: Yk39gNMkRQ6EsaEpz/6r3Q==
X-CSE-MsgGUID: EiPAqi+QS66OdIdwE39xdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="87025102"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="87025102"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 20:47:55 -0700
X-CSE-ConnectionGUID: kxdN68XiSlCESZVKD7Fq8w==
X-CSE-MsgGUID: YC6L/3PqQZuzZlhvQ63YQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="220037150"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 20:47:55 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 20:47:55 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 20:47:55 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.70) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 20:47:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KSWCq5rLk2/tW22kWbmyFrBfHibZOP9aHd9js0h0fYXwnQfWvtYaTKdns9/gunEWYel/s6GmfDdQvXcOfwWMFPzJMYfoMIOGZAnFTDTS0XT/WSBsRZqn01elS1wT9FJ9YAa9+41tbPZFp1U7bwGwNbg096EtWqNJjSHxHQ827QklWP3/3ucpGKf9VEy5eIfSbGFfEYEfakOCe5ETkc2VgoFBc6LIGOKoHT/WKVbqquWzB6zeh5qxd7VFeTqVBtNXnHCstaQHDoJRqLV+9rE4VGpeftPaUj+NnBHNk7Hh58KK5bcVhE0QZ9nQIflZY6CjgCrUXxjNnsv6wdtyYtLBQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vEA1G2L/shvXDastSSqVowgimZlIDPUC+PxgdTSQ+RM=;
 b=jZk1Dk7DVodujwzD/bBRSmaZat3koGkuzyMVEi5PzoWCwe49a/vMNvTEoBYJ0YtRYBL6k90v1b26lBGWVlwXfZgrwna4m3hJpyNezZSB6chk3F3oIXLXxFKNa0U30dVXoTbh5Xe1qQwr1T08Sdhxj4fTm18qyiLaqk3WzSehH/eQinboOAMxQPKZcpJXwIxt827BkGLYtZ55UzFDaql/84jELEuFokUNBmB8M+fOxJaGJQOXeUDE6IO76CcdpOU2fFZtiH59RjB5KZrqOTOKnSQEBgts6NuEW7p1rftLexaZcMcZPSBJ64JjLthv0Znbx6rQRMVdtCbW+oj/JcRWQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM3PR11MB8758.namprd11.prod.outlook.com
 (2603:10b6:0:47::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.13; Thu, 26 Mar
 2026 03:47:50 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%4]) with mapi id 15.20.9745.019; Thu, 26 Mar 2026
 03:47:50 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "S,
 Sowmiya" <sowmiya.s@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Sharma, Swati2" <swati2.sharma@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 18/26] drm/i915/writeback: Define writeback frame
 capture function
Thread-Topic: [PATCH v3 18/26] drm/i915/writeback: Define writeback frame
 capture function
Thread-Index: AQHcvEe/sqXrhTR/U0iRcCIR2LLigLW/LrOAgAD+7sA=
Date: Thu, 26 Mar 2026 03:47:50 +0000
Message-ID: <DM3PPF208195D8D9356804E4DF67569B62EE356A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-19-suraj.kandpal@intel.com>
 <acPWLdgT46MhXJL9@intel.com>
In-Reply-To: <acPWLdgT46MhXJL9@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM3PR11MB8758:EE_
x-ms-office365-filtering-correlation-id: 81c5bbc3-cb8f-4bf6-3b4c-08de8aea73f6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: 3y4ZjbkHNw82DB+fRixbhHjROLpBkvtB2t9zGoOdqPN3kvWA4kPQ6YMyUxMlSA2NiMq0CWJVGXVSqw2enA/toSGd2W+06jO15yCfixPl8tMj0mRGoFq9MnAtyfIcVYtsd3ROLm3v9yIXbqEK7d5ttRa1A6kQlEEFa+1VS9qsmsdhijuvGJj9Luo6L+7PxyoHAtP4VZwBRb1XdPDP8YIapjawaAFKiCDMSMRxfmbxoXoJmxBBxCodUIGD04kgps+T4xJsZ6GeExK9HGPc9k5Z50e7gBOfI4KMj4wlRG5aMhmSs94moOGpNoU/lWYnALKDOL5VxoXcq4t0r0OxJGGY+1KHVuo9mS6I5k0KGnNRKRWIOy2WWWxD1v5B0C1pp5DrQLlKv37KK3QnGORHadZxmxR5Hb5JJkTCR3gK/52ix5i06j9bMXioC83hGBbZbkZxXqUA44RmSk7faHNUKMp/jNFgtb94ZJfgZqde+4jg2aB/Ux8Rs13zxAbCtVvmdWzBwVZSqY2bSj0yvrSeCJnTVs45/IV3aHmbG0s146+WPd9lhIIAFi/jVUFGRQTJiyaVsADn6ZmDyQiqiTvXAw7x4rIjD/XKAK206S+0aXMUTSO2SziNPn5HqV3k4SmhuOgCozAokmYotiyg/eddFmBCplFkSrGa8wdZ9uVI+wMYGUJMkSXbie/o/obG52ji3bELP7bX6UTKAmZv4GEE2kpntFSgDI/lRuFZvopDHKGoKQtutivugC7oZkYYp5TB7t8KGjpmiuzGLM381torIipb5H3j8BpiBFqwdg29ZMdJNNs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?w5RKwuFLNKumxD8CXYoy1lV3UidyUDUuIwS7ip9BXNKgzk2nb4iwo4XEAN?=
 =?iso-8859-1?Q?Y0OJKMz459sKWJIW/R45mGcEL6SwL9EL2DNiUyzHHM0lGKftsEDdKqrimk?=
 =?iso-8859-1?Q?+pqkrppe/4m9VFkVL+7FlKqvE59MdQKaDxFOKs5WHRR1LxxgNjIlHUykfY?=
 =?iso-8859-1?Q?Cl9sApReprgNnOTE3Xt1a41O03rU3dUuYfCRpP3nn3tct+30zaVKdnMgvH?=
 =?iso-8859-1?Q?In7WqLCI0q2QFYS0p3n8yZRdqTaL6kocxlfMVZgjv0sOBOnh8Zpg5EPb+X?=
 =?iso-8859-1?Q?o2bd81jLXsOKFIUCfg9Qny5QfeJEP6HSY8ZCN6Wjc62n3dRr9fRqF1FgxG?=
 =?iso-8859-1?Q?CSZyEKTB5zIa6lBibeU5BvarJacuX0ybu8ZLseZFMJrImSPI7MNmTe2eNP?=
 =?iso-8859-1?Q?jt63STE4+DgFUvV++kzfYw40o7Uzslgauliiq/ll80Do+Qk/KRDQ52lCza?=
 =?iso-8859-1?Q?2Bu3Konw6O6pswmuKHIiF1Z2emIHgnRhDgkj0t2eft/601eniIsOMh81Z0?=
 =?iso-8859-1?Q?EheUn0EM7iJzAEUJ5lYOhxfAzlUiJyZ8sHSSSsnFOcPYaYwXuA+RikVqaz?=
 =?iso-8859-1?Q?Qnfh7xMA2zVP2d/lWxJ1/7r6BAx++QCyKi0aXYI2knbsC6x1rfFudR/PCP?=
 =?iso-8859-1?Q?l55FVInevKh+bdmVYfR7hS60XGaRCI/c7rmCEfJ3w/SiDZN2E2Y+1gI8Ym?=
 =?iso-8859-1?Q?+1tYBAvCxOXd9Kj6D29do2hehizNaK1GFYx2/OgbVKlZaTkhnj53TCG0M0?=
 =?iso-8859-1?Q?maaPbsmYn/qIDD57B07umsS9ZKgvbvQxQUcFxSTJD5Hf8BcycN58KaWoX4?=
 =?iso-8859-1?Q?p62GISPJH1cHN4RLTzqqRzgMaBPOdUYWWbKaPcpjFzhL630JSqFaO5lm2f?=
 =?iso-8859-1?Q?gir4TfJf7Qg9HE8i072MGdnnrKLkJXENbwtJxNdsvrHGQxN1P90hYf/zYN?=
 =?iso-8859-1?Q?eILCbroVeltXFzOise8BOzlM+Op60l6I/s1DJ283FsQ1yfhxHhnZSVUZSs?=
 =?iso-8859-1?Q?EzcbhCFc+nV7mr92vqWizWzt7WmxJ/n5RZMW7pyZRDk9UQp+KLCwyL/fW1?=
 =?iso-8859-1?Q?RfN6q+Lo8pHKpwf5KC4qD1/jnqGgcr7WXLhINlZGhRIirgTu0HyEsQQCKx?=
 =?iso-8859-1?Q?RTrhGdlkuZSXrJ2syw1OHU7QKdYDtE/LamHHqzrw5suUNlR1+ufNIKxcGy?=
 =?iso-8859-1?Q?J5POzOkk4Cf4Jd56seocVSnKz0is7LT3SREsEQI6ZYggpIZQcQ4tKHM3WF?=
 =?iso-8859-1?Q?biNGJTwYSJqyGKq9/ZD+Z6e/x6GDKsJe+5WCsbLXxG17S+weGaWbD+5l0m?=
 =?iso-8859-1?Q?IKrzIfYNMquInY0YBePybib12bB8q6+9GXVLEiqktWyQOsClO6BGd6paQY?=
 =?iso-8859-1?Q?q69GwJdXM3TAW2xAps0rkno+wSea4DdfBisfP99xdZxHWjrYRui5KCBfwS?=
 =?iso-8859-1?Q?nVY/0RWsqkMbz2im/L4G5iMKJoJAvxBnLMINTCS7dygTqCzo+BF7p/DdQB?=
 =?iso-8859-1?Q?kPzmQLJkCXU4d6qeDuZlS+LKi6yfmb2AlQ3XRcTKFzCl1KEN2QVaY9IPaI?=
 =?iso-8859-1?Q?8Pl3wErjj9n3/23WrqpWVqKY6XJLn+j9/c/jLXPlusD/noWdWmcXiEV+NZ?=
 =?iso-8859-1?Q?H3d7ouCBhREqOPwCkf0jfqMEIg0uzU5Xyf04HR7kPi8q1kP859lnr2EMCx?=
 =?iso-8859-1?Q?aKhY20VZqy0t+BJBak4KTNG+vBm5SLIGn29nRiV6vpuUPSo1Pu2HdXz1vh?=
 =?iso-8859-1?Q?hc00KGem2qt/H6rSLHTqK1kyTuoFkvHH8xBNmWaZq0MYFfrLaNv+Z+1tLD?=
 =?iso-8859-1?Q?kF7VPr1sVA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: E1I2m2VT0zE/LSPGLJ3We49zwPlMa8n5r/G68B6LPxmY0qzM+KZS1ON1XvhZL/1bWrWtevAM69QEO5sgWfQq/tGw/P0JBwNZgAQGxJhcnrjtt5HpTJAFJ2EQWnOqXYlt5fTypF6t2foL0kG5HBqga+fF0+yMCFrcq/jwnzGZ33TC1vJODkVkeRO5HGKPq88GiiYmkiVuOW2yWzjVOZfoc0PSCRE80X3++Okk4/C+uHO7FTJQN2cTAi+Muxo7QYCyxDUEADcHKirOr3/eBC4S4h3yE65VS0VG7kKJmaMOzI6Q/p7oAmwwPw8o7I9g4MR1Vcw6pgR8HAyLkNeXWB2v5Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81c5bbc3-cb8f-4bf6-3b4c-08de8aea73f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 03:47:50.5538 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9eAiJX534oB2XUP1w/zHkovvId2mKGWm0F3lgpB1syEJKbI0tanWh2QfKwbVg8X3SopcM7SVc91B3zGBQmXnNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8758
X-OriginatorOrg: intel.com
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 74C3332EE6A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: Re: [PATCH v3 18/26] drm/i915/writeback: Define writeback frame
> capture function
>=20
> On Wed, Mar 25, 2026 at 04:37:36PM +0530, Suraj Kandpal wrote:
> > Define the commit function to be called at atomic_commit_tail if
> > drm_writeback_job is available. This function calls the capture
> > function and queues the job to be called later via interrupt handler
> > when the job is complete.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  3 +
> >  .../gpu/drm/i915/display/intel_writeback.c    | 58 +++++++++++++++++++
> >  .../gpu/drm/i915/display/intel_writeback.h    |  4 ++
> >  3 files changed, 65 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index d433ffaadd65..4cc3e0779e8a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -126,6 +126,7 @@
> >  #include "intel_vga.h"
> >  #include "intel_vrr.h"
> >  #include "intel_wm.h"
> > +#include "intel_writeback.h"
> >  #include "skl_scaler.h"
> >  #include "skl_universal_plane.h"
> >  #include "skl_watermark.h"
> > @@ -7564,6 +7565,8 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
> >  	/* FIXME probably need to sequence this properly */
> >  	intel_program_dpkgc_latency(state);
> >
> > +	intel_writeback_atomic_commit(state);
> > +
> >  	intel_wait_for_vblank_workers(state);
> >
> >  	/* FIXME: We should call drm_atomic_helper_commit_hw_done()
> here
> > diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c
> > b/drivers/gpu/drm/i915/display/intel_writeback.c
> > index d45d5faaf7cc..c79e7330b81c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> > +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> > @@ -51,6 +51,12 @@ static const u32 writeback_formats[] =3D {
> >  	DRM_FORMAT_XBGR2101010,
> >  };
> >
> > +static struct intel_writeback_connector
> > +*conn_to_intel_writeback_connector(struct intel_connector *connector)
> > +{
> > +	return container_of(connector, struct intel_writeback_connector,
> > +connector); }
> > +
> >  static struct intel_writeback_connector
> > *enc_to_intel_writeback_connector(struct intel_encoder *encoder)  { @@
> > -224,6 +230,58 @@ static int intel_writeback_atomic_check(struct
> drm_connector *connector,
> >  	return 0;
> >  }
> >
> > +static void intel_writeback_capture(struct intel_atomic_state *state,
> > +				    struct intel_connector *connector) {
> > +	struct intel_display *display =3D to_intel_display(connector);
> > +	struct intel_writeback_connector *wb_conn =3D
> > +		conn_to_intel_writeback_connector(connector);
> > +	enum transcoder trans =3D wb_conn->trans;
> > +	u32 val =3D 0;
> > +
> > +	val |=3D START_TRIGGER_FRAME | WD_FRAME_NUMBER(wb_conn-
> >frame_num);
> > +	intel_de_rmw(display, WD_TRANS_FUNC_CTL(trans),
> > +		     START_TRIGGER_FRAME | WD_FRAME_NUMBER_MASK,
> > +		     val);
> > +
> > +	if (intel_de_wait_for_set_ms(display, WD_FRAME_STATUS(trans),
> > +				     WD_FRAME_COMPLETE, 50)) {
>=20
> I think we need to hook up the interrupts to avoid this kind of thing.
>=20
> The trigger we should probably just do from intel_pipe_update_end().

I do hook up interrupts in later patches but I have found the writeback job=
 done interrupt to be a little unreliable.
Could try this out and see if it works out.

Regards,
Suraj Kandpal

>=20
> > +		drm_dbg_kms(display->drm,
> > +			    "Frame was not captured after triggering a
> capture\n");
> > +		intel_de_rmw(display, WD_TRANS_FUNC_CTL(trans),
> > +			     STOP_TRIGGER_FRAME,
> > +			     STOP_TRIGGER_FRAME);
> > +	} else {
> > +		drm_writeback_signal_completion(&connector->base, 0);
> > +		intel_de_write(display, WD_FRAME_STATUS(trans),
> WD_FRAME_COMPLETE);
> > +		wb_conn->frame_num++;
> > +		if (wb_conn->frame_num > 7)
> > +			wb_conn->frame_num =3D 1;
> > +		wb_conn->job =3D NULL;
> > +	}
> > +}
> > +
> > +void intel_writeback_atomic_commit(struct intel_atomic_state *state)
> > +{
> > +	struct drm_connector *connector;
> > +	struct drm_connector_state *conn_state;
> > +	int i;
> > +
> > +	for_each_new_connector_in_state(&state->base, connector,
> conn_state, i) {
> > +		struct intel_connector *intel_connector =3D
> > +to_intel_connector(connector);
> > +
> > +		if (!conn_state)
> > +			return;
> > +
> > +		if (conn_state->writeback_job && conn_state-
> >writeback_job->fb) {
> > +			WARN_ON(connector->connector_type !=3D
> > +DRM_MODE_CONNECTOR_WRITEBACK);
> > +
> > +			drm_writeback_queue_job(connector, conn_state);
> > +			intel_writeback_capture(state, intel_connector);
> > +		}
> > +	}
> > +}
> > +
> >  static void intel_writeback_enable_encoder(struct intel_atomic_state
> *state,
> >  					   struct intel_encoder *encoder,
> >  					   const struct intel_crtc_state
> *crtc_state, diff --git
> > a/drivers/gpu/drm/i915/display/intel_writeback.h
> > b/drivers/gpu/drm/i915/display/intel_writeback.h
> > index 5911684cb81a..3c145cf73e20 100644
> > --- a/drivers/gpu/drm/i915/display/intel_writeback.h
> > +++ b/drivers/gpu/drm/i915/display/intel_writeback.h
> > @@ -8,10 +8,14 @@
> >
> >  #include <linux/types.h>
> >
> > +#include "intel_display_types.h"
> > +
> > +struct intel_atomic_state;
> >  struct intel_display;
> >  struct intel_writeback_connector;
> >
> >  int intel_writeback_init(struct intel_display *display);
> > +void intel_writeback_atomic_commit(struct intel_atomic_state *state);
> >
> >  #endif /* __INTEL_WRITEBACK_H__ */
> >
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
