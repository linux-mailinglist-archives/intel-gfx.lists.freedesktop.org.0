Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KAAMoufxGki1gQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 03:52:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E0132E861
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 03:52:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D1CC10E224;
	Thu, 26 Mar 2026 02:52:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YCMDN7hH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D861010E224;
 Thu, 26 Mar 2026 02:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774493577; x=1806029577;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oizRnLCSRjnZeImnqQ5zth+/GJxyTckn6UL7ZVYcX2g=;
 b=YCMDN7hHI/qYsKx6XlYOnYlcuLYtU++2CjG9xnpyBEe4HQnGIuYWUI2q
 3Z1fmJneE5GJR7Em6Qf+jmv32tVcqARqGyApFKH8geYJIgUGREL48BAuU
 yjUkmJOwkFk5bQ5oRhC9Zwv2Ji/IeU4NAUw5LLBZ3V3hiqFpvAQeQWyAo
 FXEDvcXIBjNW8+lUlaRl8Yp9gfEBih403ZNZwOLPYKNVslRsQlFDq6hDI
 YLozgQBmnOwJtKscOnp/nRDn9vLnfQPH00ZMdlSN84UKaAQi9++gp3ydv
 j+J3h1TuWvS5YROVlUjo/fOtqI4YxnDyOHl1Iqn3hl/xozYlKQniyA7iE A==;
X-CSE-ConnectionGUID: sRaq8+vcTfW3flRD8yMD/g==
X-CSE-MsgGUID: 9D7AGPiMQAWK2Vrj7za2oA==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="79449101"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="79449101"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 19:52:57 -0700
X-CSE-ConnectionGUID: UZ/VVx6xQkeNq+9oVpQT4Q==
X-CSE-MsgGUID: wWRAk419SuKS8B47GPX+lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="224053700"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 19:52:56 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 19:52:55 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 19:52:55 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.60)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 19:52:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JVYH7m2+Zke7+pI0kVCuz0FXFft/D6QWjfuG9tko6sDC7DmtIMWKrph2sauo86B9crGVgd3no9jvHzdtvEW8B5/ZAajSaHdgcOjHNGuMaOZxP/iVn4xuziVVFFezyvDNQDg9AadhIvo4KQ5+1zFIEGzXjEVxk98VusukupPsffKo58ovDLB7YvzAyiQiC7g19zfJgVvLhS4qEBDSom09C0anacwxXA4PFn2kSFXRiw5fn6CKQD7NKZXoup/xi82BARwEI1YL8oLJMac6cZhkFMI6AWCRRxJyncLIs22FfEPiyy28SVMIpgrHS07mJ94ov7Nth3PPbDFU5Z+lzZZ8eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GblDGKDulMki+NF57cfivpQx96TgAk8XhQSNYyJOiIE=;
 b=a+3l0KeTRa9DqJbYb1a72GNNSMaTUuKI97NzpzDYhoaMhdKdVchfjvpcDldYe3zJodKhs5LTHl4khcIYona2Cz5BCnTMEN10Pxe3iPiyVyEj01f2fNUWgpzz7Fa39a2uznpLPszUfJuGUBa1wtoWW/yFPtMr2t2gQAxut37GyE6+me6NEdnLzFIAzZAvYSdUcLh1u/uzdIe1QwJrQ38VDdSTJlE0lx3mLvG/37q57bHAapeq0srOolODAsVLafZsbXzM+E51DZqRcCWQ+l6BrnsSfk6ftWWbPHX1D4gUAl5fbZ1Vj50gBOWYSJVM4PBH0NmHm4cqYhpnlVOvfCMlOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS3PR11MB9647.namprd11.prod.outlook.com
 (2603:10b6:8:38e::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.19; Thu, 26 Mar
 2026 02:52:52 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%4]) with mapi id 15.20.9745.019; Thu, 26 Mar 2026
 02:52:52 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "S,
 Sowmiya" <sowmiya.s@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Sharma, Swati2" <swati2.sharma@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 09/26] drm/i915/writeback: Fill encoder->get_config
Thread-Topic: [PATCH v3 09/26] drm/i915/writeback: Fill encoder->get_config
Thread-Index: AQHcvEeyPwSjjwq60k+WqV9vZXM67rW/Ka8AgAD021A=
Date: Thu, 26 Mar 2026 02:52:52 +0000
Message-ID: <DM3PPF208195D8D11D89E14087904A4745CE356A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-10-suraj.kandpal@intel.com>
 <acPR-MKLf9VlkED6@intel.com>
In-Reply-To: <acPR-MKLf9VlkED6@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS3PR11MB9647:EE_
x-ms-office365-filtering-correlation-id: b96a657e-ec92-4e38-f3fd-08de8ae2c65f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: kwAjPoGPuQHsqxJgPhPpULuQ0ehXpTHafN/XR/OHdoluBwld2Czz/7PDE9r6F5w7MgOJPmWJX/ptPhHAfjQ41cJ3+uS/V3HSZT0MK6Sk8nnRyriqou8GmGPP05BAFRp2kB0IRQddacEA6EWU56RLJ02czrXv5Sz3wHYfa5dP+3v383uPf051MbmIHuN0927OTiHwREZ7rhWW5JWjyM/HK8URmR1VKPHyDcQfPuwDxp5rhV7gVoN8YCXmQMqi5PU/LKev0fiwDEmWNM6wA2kEQsvc3JAXPxVKNWs11ziDOLZVVZ2uTmE3tsTIsaPcMCmA+TUBCkNUA7K16WtSl5i2RJSApHZjrQxW//cR3XKsZ6JmDyfJrlP+Btpq1iyncGWWO+WxLxFFwwe2MAR2xTkDKeLmapPXOywdL5PE35vVUH2eF5km8LKuXjsT08EZuP+xpxbh6mKFqltVPd9IwuLUw0nBXl2WA+1bTnOKWViPF+XN/vEJ1a7EvDXv1k6ZiYZuAf/AgfLkBA4AcvLccvHbvnr3LogYe6CBpq0hZdS2OfLFnuRFdDvxxXPxD7zOPn9mxx3jzEodr0+laiZWlW4GygESD1HshXIcSOP8XeciRx04stAsVdjf7NnvUY2W3q+424PjENW+fzgD63TJ4RKwTrXyCP8JZ0PgmDrJb6fRASE2SQEYJWWXuN/4fm+uGcrnv5ykxbNhnL/oNmpFHrlEpCW1gR7LTYaEBzpO7yQAz/kJMud78uHNpaBvuyR0xzU6e8bzn2p1h3gzQthw7x/slbK299gCh6Xh990N402faRg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?4aYtnwu8DBFRKgPh0k4tcUIoCFF0+9VqmdPKnD62AUXg8JmGoRKNC0Y3bq?=
 =?iso-8859-1?Q?6Fqz04C5AIJTYV++Nd07WUkzdlNCki8yBvmNLFnPAtDavSLF/dKPg1VRhx?=
 =?iso-8859-1?Q?NlBYbE9tbQxNdr8rp8Kn6oEtRxe9+SmthY3EO6Ncr4l+7hyXYv1NJQhFAH?=
 =?iso-8859-1?Q?Jb3/aXA2pRChthWZlU8fxByOQpMroTHI2pqJCGvVlaOPEBAU5X5zXnaEJt?=
 =?iso-8859-1?Q?+R7GP1XicaZs7GIhpYMvtsphNM88W+ywbXXWKKw6sFz3vlGN7UYKsVM3y2?=
 =?iso-8859-1?Q?q7AfljsfE1cJOSMUb107+0abha6AZ5FRDxlR6kcsKdNsLP749ZeoYE5d8f?=
 =?iso-8859-1?Q?wWGfJQAIPiosVNVI/j+sMSsMaM/8b6Xl0jtQVlzhTSwdO9tHObyEIcr8iN?=
 =?iso-8859-1?Q?jeQCNTtexVkieSh+E9Vurl6rf9vMx9nUvCKFcgdbpZ+eg9KA7T/O7dt6tl?=
 =?iso-8859-1?Q?rQgceLnaGBcoIeyQr1fqPpCyHogpFG7/obBbwdcZYFtA+i6xBamK3Ly2Wb?=
 =?iso-8859-1?Q?FArExjIcT2biPlt0aOMpAfQ7QtkibPo/KY7G7ZFTd7BPpJeOSrvG2VkF0g?=
 =?iso-8859-1?Q?2/lADNSTFpTmxbmAnhIF4EIyeQZ9ZqnPWK2Qo4U1aOF8LUtxplFLCLRmxt?=
 =?iso-8859-1?Q?aFyNi3QU5+5vCb3W7trdOC4kjXhHzqura1CDn5f5VxW1BQnCVwKXgXAMVz?=
 =?iso-8859-1?Q?jvRMgPkQAK0xwH9BdI8aKVsc9fxxK3udXF1g2AN+w9Uda1ovSM4nVnlera?=
 =?iso-8859-1?Q?YGIxYfbCCkQ+ejicbMEccQfcB8vaLBtaZJCl10ESiB8QkDP29FgUwbQ/QR?=
 =?iso-8859-1?Q?fo0CLeKkPfidsuY6HE3xqPqm4vPlBUPVp6odXutmvxrZUg8VBY9RVWf07N?=
 =?iso-8859-1?Q?Vd0Z0zRlZfEX+HYDX8Naxi0F0hGzxvkete+Z8dkwvSNT3oVCtBkdlKKnEo?=
 =?iso-8859-1?Q?IYNKgQgA9NT9HV8D0bgSXioSFxbjUFiuyQ8CUnVhCc1QrH9Km+v44vPcFQ?=
 =?iso-8859-1?Q?goTMqv7BJretUR66Ypa4S7AHHuubH8bc7Zs9gj7JPyz8qP5y2kcSYQSn0/?=
 =?iso-8859-1?Q?GOCY7x6Tf2x6QsIUZQpytJmZ+k62gEC7v38odR4GAJfz/JZWZ3QF9ZYRFn?=
 =?iso-8859-1?Q?jeLzOQtILrEP5j6bO3CIIzZrmVSHF+NpDftCK7A2aI0GXuYf62W/+yZGyU?=
 =?iso-8859-1?Q?oJa7gomjhBXqzNdD4UvRFSnZoP99IHJnN6aTKCL8+Mw4ZoKb+eLDBlRg7E?=
 =?iso-8859-1?Q?rZNvB6EqKbJ3JVBt5EzOflzNRQYqgixg/Q/RcS2xAomfv1vzWeMWqXNZTq?=
 =?iso-8859-1?Q?03MIWjj4YYynor20axYV/N+uKQXqOv56MYQd0fE/hl8thOMsNSQMis3zIc?=
 =?iso-8859-1?Q?DOUsuXAjCP8loDPM+xsW2Hs5jYhpc75Cy8g57MNFQanFFmuTnc5u8cOP1d?=
 =?iso-8859-1?Q?RXW2277ZWsyPnCQY7f5hzq4ax2CYyAnjLavfld+BmfCa3iOr/g0OaZAT/J?=
 =?iso-8859-1?Q?phYg/twQwUxhB2C7/b1N+J8IjrOn2b38X2/iPhSIoWl/MT2DO/laC5nFQc?=
 =?iso-8859-1?Q?9uY3Y57R4mZ7mLhI4vHG2N4tnCnIpaK0cKisCY8Ta8wghA7UtLanDe/15m?=
 =?iso-8859-1?Q?E07dtEM0bn41ikU5yu0Xb82vybKgVMIWect3ztfpYexWKufNML7ArhQaca?=
 =?iso-8859-1?Q?R2BmUG7JyrdZd8l1ruWvLC31PI2Cc2gujuPCFq+XeQucdvPSqIdZdEEYF4?=
 =?iso-8859-1?Q?/fe3xa5/xEObTROvLPpdYt8nuuISqFK4efhKFHSjKEuBzxx4tGN/MeWlrx?=
 =?iso-8859-1?Q?6OAjDI15yA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: nKnFephG4kmdnn79lZWyCD+VC8L6vAspbn8XPQ3AmM3UIDx4PROva8pEx67XI4PQ9Ha5J0g9BnfAZuBRMLD06kTEmn9bXvHLOI2l8SHm2g6MQ7cauHTFVTZYepspHw5ah8zDE9YsviNukN1+VMpff0gaeKvXlcS1dMk8EgjDefe4BP6IfIXwIDcu8VNOv+nGSiz6Rmqgvtbnb5U4NcULCzTppnjsaiVd6siMWmnkeYEtV6do7pa7qTi+WZgaXzGaY4do5+wtzmM3Z7orEIf1S6opENACBP0um4T45bCxgAK03w++leCCuUqw8KAirg2hGWqvyhVzuEb9+RUiMlwyIg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b96a657e-ec92-4e38-f3fd-08de8ae2c65f
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 02:52:52.7994 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 49a94K2rOAwgPbYrrNkKRESVKjrBXwUtmbK9SvyXHsfMUMUV5aZvcDoxf3Z+IiNZRk0cMDoh5FURTVnOufjhxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS3PR11MB9647
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
X-Rspamd-Queue-Id: 32E0132E861
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, March 25, 2026 5:46 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; S, S=
owmiya
> <sowmiya.s@intel.com>; Shankar, Uma <uma.shankar@intel.com>; Sharma,
> Swati2 <swati2.sharma@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>
> Subject: Re: [PATCH v3 09/26] drm/i915/writeback: Fill encoder->get_confi=
g
>=20
> On Wed, Mar 25, 2026 at 04:37:27PM +0530, Suraj Kandpal wrote:
> > Fill the encoder->get_config hook with relevant data which helps
> > verify state.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_writeback.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c
> > b/drivers/gpu/drm/i915/display/intel_writeback.c
> > index 64769609aefe..1df04538d48c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> > +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> > @@ -100,6 +100,14 @@ static const struct drm_connector_helper_funcs
> conn_helper_funcs =3D {
> >  	.mode_valid =3D intel_writeback_mode_valid,  };
> >
> > +static void
> > +intel_writeback_get_config(struct intel_encoder *encoder,
> > +			   struct intel_crtc_state *crtc_state) {
> > +	crtc_state->output_types |=3D BIT(INTEL_OUTPUT_WRITEBACK);
> > +	crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
>=20
> That should already be covered by hsw_get_pipe_config()

Let me have a look at it once and what modifications this function would re=
quire.

Regards,
Suraj Kandpal

>=20
> > +}
> > +
> >  static bool
> >  intel_writeback_get_hw_state(struct intel_encoder *encoder,
> >  			     enum pipe *pipe)
> > @@ -170,6 +178,7 @@ int intel_writeback_init(struct intel_display
> *display)
> >  	encoder->type =3D INTEL_OUTPUT_WRITEBACK;
> >  	encoder->pipe_mask =3D ~0;
> >  	encoder->cloneable =3D 0;
> > +	encoder->get_config =3D intel_writeback_get_config;
> >  	encoder->get_hw_state =3D intel_writeback_get_hw_state;
> >
> >  	connector =3D &writeback_conn->connector;
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
