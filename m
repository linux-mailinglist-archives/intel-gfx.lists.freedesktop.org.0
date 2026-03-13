Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKUEFUSEs2msXQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 04:28:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A39E027D167
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 04:28:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0850810EAD7;
	Fri, 13 Mar 2026 03:28:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AHrhsE6U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E25D210E08C;
 Fri, 13 Mar 2026 03:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773372481; x=1804908481;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2AGvmpUigQ9Zz8u7pxqTVwsRHIh5h+I+1lVw7imTzWI=;
 b=AHrhsE6Uk/rx0JKE7LpgGs3oVuffdZT0YhbBQCz6DvEMVnZgu+egmzX4
 +ThE9kvQFXTvxkrxG0XZcMdacukPSa1dWyPp5CHRxfW2WQkbVp+LAkq9p
 Aqi+AK7teLEi+Riz1sglqTdgKSAGKADSlrkWtt92ncogU7oXI21DEM67F
 BlMJp1kGuzjzRUln0GLJp09TAyfR1AqYi2jDh1Tm+MLAlga1aZoSg17N4
 Uxa2QdALTZP/2TU4Oj/c+8P7gQwoevvRYUycE3jxdgM2dkcnPBSJQ8A7B
 gkgXpPqJ/IltM5Mx/V4ZDQw9dVzKY4cfjhTpWYtfCUOnGCYuijQsTBOsw g==;
X-CSE-ConnectionGUID: wsmadZCMRgK57X4nNpBebA==
X-CSE-MsgGUID: 20m0avzBTxK+ZTrnntyfog==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="85832314"
X-IronPort-AV: E=Sophos;i="6.23,117,1770624000"; d="scan'208";a="85832314"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 20:28:01 -0700
X-CSE-ConnectionGUID: DAsArJwIRuSOlhhKdvikrQ==
X-CSE-MsgGUID: +e2nfY23RW+VijRVxOIgtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,117,1770624000"; d="scan'208";a="218401610"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 20:28:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 20:27:59 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 20:27:59 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.34) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 20:27:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CZHaIGr2nqDOEeC/HHhVvng1ME9JNsGOeYomvo94FYIQKcY7G0ArbVExC8SzM+lJgfv4nSDoryLuLpbzeh8RnrLVNh/SFByT+4HC5gKbmzrD37+G8Whrkmj07BBW1drV2rde9ybxox1BNq0Aa7Es3npNv+eRPTpe+MAoVYwbNfQKn+shMnlvh47QSxw642w3Gukoo6JD8Aed+4GiGRKYdcerpzmyGiTlSX4BgtG4jgF/WxZgKO2z+c/yjCOABjwBEwIBFonaTi03DXGpCpgSBJsTvf9STnOjk9fRlDN/BIZfojq3YM6a4ZiDhH9F5ixTCytlrqOAdUGcMg6eJiiboQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lmAp5rURzY9nCWEw+2DMCRSPlM9syYfDBiY9bcNaB1k=;
 b=Vcnk4enJQMEV7trO09HOHMOFs2wXh36dE3dicxfEmIHslxki6GdJiP5pkglDNzrfXTJS/YjGxNFPw9zoctc1OqYSX1N8jW0aw0lxm8hdR15dIZWTA+dn9mgsC0Gn+ut2KK4cXdWXuAH6k5YVTFsOCdDWbyul9QhoYQ1oVy9pYpZ/1e6hO2z0xLpVSR1ItHVolvQ3G08rSwO8OP5A8/s3awyARu+FbXUNu38kmdxcq/Lm6QseTT3oUHYg7ACGYvDhBSZXEMS1b4L6897/uvbRJbEenfXi/kjuFAgkdsGV31JFSvcR0Z52B4Y8R0U31QrL9eJhPjh/1JKfSaTqbEBfzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SN7PR11MB7993.namprd11.prod.outlook.com
 (2603:10b6:806:2e5::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Fri, 13 Mar
 2026 03:27:57 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Fri, 13 Mar 2026
 03:27:57 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar, 
 Uma" <uma.shankar@intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>
Subject: RE: [PATCH v3 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
Thread-Topic: [PATCH v3 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
Thread-Index: AQHcsiQakmfa43yQ4ku0Jge3qfAJobWrzmcg
Date: Fri, 13 Mar 2026 03:27:57 +0000
Message-ID: <DM3PPF208195D8D6B243CEB2396B644388AE345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260312132941.2614478-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260312132941.2614478-3-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260312132941.2614478-3-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SN7PR11MB7993:EE_
x-ms-office365-filtering-correlation-id: fca4aa34-7a6a-49ef-b235-08de80b08553
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: Alo7TB5JcytHhwfC7dCElETYrIars1BhM6Z/uexyaxHiXhk6kY2ncn6oH0D4VTaJEHew9rJpo6zDzKeVSq8rpj1UlrnCi0cG9VhLMXhz26VEqRUP+lFe+VSDlB2Tf/EVVAIXr7i9GeiXveEWWew1B51BvvbISU98ntc0wivh1tJLU0acyGWBZJge4gN8uAdJRi4pfDeeS2nJNfiCmYyM6LjHdJvocNaiaXfkFZMMQNCvMAqGHsKwxrhqWvu29Aye8XkIcJ4MRbuphhhFAoInZS5tiw/GFHnsbkTjdSAcZ9pmMuc8rFSH07W/NLTTCBd8QlCfRDePySzQJZFbwRZ0BCsFIzn07MGSDdWTRa0GpTrAYdgYSpUEptkCtWTvqfs736YDNtyWVzAqw540Z8IuknvnbrBPZ1W7rTudvHGsaZ/gRATLcn4QKTDdNE4rtR+tjz8K4x5jRR8MhFJfV14UfjebwNso4wFTlAag37u1T8P1fAAUXNQbgbrFVPKAiDojVuzdI76eoMfz8ccZrFJwiIIZSswB3MWqDBhjZpuMQxbx5xkTkBVmuxySYbwyrAaWx1p9Av74LaMTVlqdx9446VuZZYFC8DZ7ln5pXVCTsesnBErxHbiOrjlF6ch42YgRpRHPqQrNC++Ga633ExT3AkMgPJvOQDGyzOKlySYFm1KoNunRTSBVrcjRyPWc5oVGSIP6iH6GSexKCAShjSRLI/+Jrde43rd9vmjjyBYckuBqRaJDzsijYFeQOl1t2mBMID0Y0XGe0DKwAdFdmO9o1jlguuCKSqBcZtjXlJCwFjU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8247bL2w+ubuk/mZSBp3FVVNbe8iRRFiyCV9UxurxxLFYQryZiUZsbpDG11+?=
 =?us-ascii?Q?rE9DIsVswC77k1pDXTOEPegBc8B7+l1UfPck9sG0qULbJfUuF2qepbsVacvX?=
 =?us-ascii?Q?e9Ta+WeVby9zef31NZ6wSY9ZSI+dT7P/IahpDpFfacPkwTM2MvBB/8eEXwdB?=
 =?us-ascii?Q?FQEgcFXCqelA2+p3B3HuiTnT1BG/GPg5C3Iw1iOgiOT+rTt0S/X9NwZ3Vdpn?=
 =?us-ascii?Q?/gF87H2GxluQ4UkYtZkGgpbMhIbab0p574mgDRikOcPDj/4y3hVn5TUbTbPx?=
 =?us-ascii?Q?WgDF2A6Q6UPs6WmuxZHUfUlbe/benhldgNTQvRc94vY+A13OJgrYzaaX3YML?=
 =?us-ascii?Q?X5vWwvXdvjtNRxOSMV6nmwFvlW3vIiM+SznkgBzi7dgSJS+lZIki9ypC6YbR?=
 =?us-ascii?Q?1cVPorOdUVWfdivWAipo1wQKKpXz8IJhArN8izjEkLaqYRd0ioZJlOi/dovX?=
 =?us-ascii?Q?063XMxS1ieFq8Ex92I5hm+07W26QE8RU4J7f6O4Pk/dXIXgy+GTZLA3FcsDc?=
 =?us-ascii?Q?UHP9nhBluXeYXnBq40DKYPW5wRIVnkJ4A1VxC58kqQJXRknj/3XFzo8d6J8W?=
 =?us-ascii?Q?AU7jiqcORQ0sDex4KYtAfcaIcFaorbeEuV6HVQculmcfh5M7TlzOfjwm1Frc?=
 =?us-ascii?Q?wjJZgw0xNkLFXHXeCw1M0HDOZqpIk/Ck4C78pTL/6Stz5fpiUkh0d/8IL+pH?=
 =?us-ascii?Q?YD9JMTrxch3so3XrPK1EwRz6wizSRe3SA0YNPQQPPmqqN6QPs+/0+63W33/L?=
 =?us-ascii?Q?jPamlkjKY/85coHaEQOl4TRQ5dQK9vn8J+9oPiRREuIFPocE/IaR4/W6yPOc?=
 =?us-ascii?Q?VBIQGpC7a2A6h+CSs2iJMzrKts8qWxtlM+/BXpNDxCgsc4osJCjJrs+QCdnW?=
 =?us-ascii?Q?jDMNS6Vq3/8Z4tdOpwaB98jLwGA8XwUoPPXq799ZuC0jrwOlH3Z2kr8qg96c?=
 =?us-ascii?Q?HzYirl6jdIePOavKLQ18D8KfKudoJyRpK2zrl4R0WOgY+YlQGd4snb5b9nUb?=
 =?us-ascii?Q?AgwkLH3RsF++W20jpflQt7HuXtKBse6QCnSltGISAblzcPmY+k7HqcBvIx8R?=
 =?us-ascii?Q?XLKFlDR9RVTqggQfB8hlm6SnWTgCObVST7cMlM/E4nsvX8PhpwYxVwy6FIKA?=
 =?us-ascii?Q?NBJ6V7+vpFc5xPQpewWO3TRNzRGiuqWfNF9hQJuGUM5eJaV5mB3/Bza0K209?=
 =?us-ascii?Q?hGito1UB8QkRzmZxtnCxHqumGJC1B/NALmA1kqTRsgU9lncWL/Bh5m77omNg?=
 =?us-ascii?Q?uPZnvOrL3QNopqs2mzxnaIbTpIc469F8IPnU/QRG1DckoiF4oSmQ5xtZjxkI?=
 =?us-ascii?Q?lkctWG2dSUv7ygLy8nmMZs6xRS0hbWxHlZxdtiuyHCOaVd5pJl+5nDrodlf8?=
 =?us-ascii?Q?QLO6uLZ4rKEnYZBWcL+PgyLuHei2zcUT2+OiAh3nluWS5eFtjjDXkzPezNMa?=
 =?us-ascii?Q?enf4IMjtpbs8OL6c+IrgSUn5mXO/m7PMyHmWg3gw/ICR/DjEkA/jBLxlnS6M?=
 =?us-ascii?Q?xnEO4wp80LXCmm5wCVNHVkZhLcFUTdhytOakRY4RwLF8BKRdBXYKkQua+x9b?=
 =?us-ascii?Q?fH1xBr683JahTro+/mH1qUIbjezzq5O4Gx/0fOaHx8xWLNkVpjUGW4/bTyCv?=
 =?us-ascii?Q?bdRPLUTYtGG4IiaNe336DkA0dD2LLWlDIXtzLfKxvFBeaXr0OgPUmqxgBv9v?=
 =?us-ascii?Q?y4OqWuY5WJYSjfKqxkM4jUHjBOFyUjfHptzHjwlo2zJFaXzjJAtl1YEdqvOb?=
 =?us-ascii?Q?agLaf11HtQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: U2l40Za9Vie2vXgMn2UMT+W0JqsDFLZHLRgQk7LOATE3hWBitIQobIXos64MwpsN4uOvojQEcn81Ro3ge22QZFWlcFKC8xQYnRUJetabhh5KOvM/k10YEBpYf0Od+cKni2xTNcqyveyLgQ+FN0hoZrrOpzPTsCUYgfMNVpSruCzKVFlBF2TG9HF1XdnmWrbXuXGVBuG0Rj6iiIrgyr7OoUPWeky97ea3R7crFuHtzqaIpTxwLFml0+O9tVn2lQESbYXwyze/WTd58MevjtBy+6NmUz/HDGrEgwg7onm81EQcDtIt8QJ0KYEbAl8hFcGhRXditc/+Ywqwoc54WdHjBA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fca4aa34-7a6a-49ef-b235-08de80b08553
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2026 03:27:57.2439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3fsXjDLJUERbYeCeFddQZeMBmjbdo3XWtVFBMu7skDbpDw2N15JpjGmV8ZabiqoTLmmd7WYj+97n5lfdOSSJaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7993
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A39E027D167
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH v3 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
>=20
> Enable PIPEDMC_ERROR interrupt bit for display version 35+.
>=20
> Bspec: 70296

Check comment on v2
>=20
> Changes in v2:
> - Move PIPEDMC_ERROR interrupt enable to a separate patch (Ville Syrjala)
> Changes in v3:
> - Add Bspec reference (Suraj Kandpal)
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 38b284a0db82..e60f1f977070 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -510,7 +510,8 @@ static void pipedmc_clock_gating_wa(struct
> intel_display *display, bool enable)  static u32 pipedmc_interrupt_mask(s=
truct
> intel_display *display)  {
>  	if (DISPLAY_VER(display) >=3D 35)
> -		return PIPEDMC_FLIPQ_PROG_DONE;
> +		return PIPEDMC_FLIPQ_PROG_DONE |
> +			PIPEDMC_ERROR;
>=20
>  	/*
>  	 * FIXME PIPEDMC_ERROR not enabled for now due to LNL pipe B
> --
> 2.43.0

