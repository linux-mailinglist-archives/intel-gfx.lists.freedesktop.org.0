Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDwXLy6Es2msXQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 04:27:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 292AD27D159
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 04:27:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6B1E10EADA;
	Fri, 13 Mar 2026 03:27:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DpZz54kW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53B9010E08C;
 Fri, 13 Mar 2026 03:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773372459; x=1804908459;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HpLK1pryZiwpkJNaUZAN8yFfhyzTKX+3KU0pUBBGmsw=;
 b=DpZz54kWe+SgkBX2ZE3C2uqpUf93rtsuu0Lpr0p+kzUPbwgk/1AL3oAP
 XB9oRxI1OxjtRced6q9IOrX32nIfSBDlcuV87EUOGnZ0slFgeMkK1heXG
 brffMqAa+jzvC7PUy+qwtvBx2R/SdmBWC+zYu2Sdk9SpzkxAIIDpxsT+h
 x+YzERF63knsZacDveKhvyY4BYZGDXn+DRRgO+ZuGbGpOXAgXxwUUFrhh
 gU7Oiqe6EXLKsRDRKpNzY/27g/cIXHwbx8pIus9eNUgb5OvH0Ly+NCKBl
 829583gHDAWQ0tigSODgDglS2Ffk9O4dg8Sts/uF6BRYlYuJA+VAw5Owc Q==;
X-CSE-ConnectionGUID: z6h/tpYdTkWHqx2E1p1ZKQ==
X-CSE-MsgGUID: ELwJ7Ne1R0Wj7ZVQw3W/Hg==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="62049185"
X-IronPort-AV: E=Sophos;i="6.23,117,1770624000"; d="scan'208";a="62049185"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 20:27:39 -0700
X-CSE-ConnectionGUID: hT+QIU8MQmenc0+X41//TA==
X-CSE-MsgGUID: xviBItF5QTiXNkJ6oWGmTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,117,1770624000"; d="scan'208";a="220124410"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 20:27:39 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 20:27:38 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 20:27:38 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.65) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 20:27:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MnijHveRbGBfK2maq30fjEUOmaC+q2UaFz0yGor5gjb1/IBtAUOPhA5YBuJw2Sj0Xt45ugUIJ4ocp6kXvV2a3kKHHKJxCK1bJ/nK8trbbYoGcHed4zPFvXnm8/boQRzbrpkjDV7ml4OeuekNN7Ci8J5GT9O2twV1/mFUPjl8T+2/vnoLEGEplGK8R7aSxh2L/9wLGxzA4aa3eFWoS7Lzk2g7sJOEUnw01sC18m6cJTUUZsB4sY5tlQNfuy0kQF9ipMtghBwNCQcMK7MQt9YcxGjhya7crt2G07LtaCg8ACfwsZXa47zD9fvc2K/RY3EdMDbxO7KxeoIT/2rHSYqffQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PbNPDOGgpJkcFAweDxbtgOEGie5heYou+R/99JFso4Y=;
 b=DySEfiLodXS1fOdX1rLMgzxTDOM2cRrh5vA/UWYFAY1G4xHGy2jcqf5kWpwWMRjZxSAeLnmVXhy34OaTBhOim1xiwLX25nM26rn0jNxqk9d6E9gegBM/J1sfQWmHtQtiSJ1EnzlyNrCkByH2hc0CDLn5ESA21d8+mqd8UDdfWJZ4siFy/b6h4PkddHCT4bBHBcRiMQmeMQ1XsbcK/3OguuzD+BAsnduSrHYx+EseFu2B+ce1hBBUwrcJa6me71WBgbbIVH0Uu7gMzqxZAHPlWjllpwNkdocy1MYAKPJ8L5bDv+2xAd8utasXj1mCYlDTM3eX0jXJGEkU/bwYhsZPRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SN7PR11MB7993.namprd11.prod.outlook.com
 (2603:10b6:806:2e5::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Fri, 13 Mar
 2026 03:27:35 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Fri, 13 Mar 2026
 03:27:35 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar, 
 Uma" <uma.shankar@intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>
Subject: RE: [PATCH v3 1/2] drm/i915/dmc: Remove invalid PIPEDMC interrupt bits
Thread-Topic: [PATCH v3 1/2] drm/i915/dmc: Remove invalid PIPEDMC interrupt
 bits
Thread-Index: AQHcsiQZdjlAUs6nakGPE18pTvu/3bWrzifw
Date: Fri, 13 Mar 2026 03:27:35 +0000
Message-ID: <DM3PPF208195D8DB8C494DE7133F61AAD40E345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260312132941.2614478-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260312132941.2614478-2-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260312132941.2614478-2-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SN7PR11MB7993:EE_
x-ms-office365-filtering-correlation-id: 18218ac9-1f05-4144-e36d-08de80b07887
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: ALiy5+8n24lA/JQLEz/sZ6zyW5n7nvzJqbkl54M4mTJgdgdXPb2gFq4vfIV+VlIfPpntJXyAHqR19mV3Y8SPeoGDD7omVsgybaUINZzNDGQyuIZ9CErkg8nuhzSLxEnbxHEVxJq/jTZHRFg/vG1T00W4LgvoV4Wk+tZ16yKiayFzOtmaq+nha10OV7/A7rxP/om6C03g9kmcV2E/S8a3Lmr+wWxDhMEvJGY6DSzPYpdoDwVRBn36dOedQ8eAsB8pM0B1MTueYECGO85HLRmwD8k9DzY1Q5J5YYcWLW9fS+Uunsw4tIppvaw3duTNNRtq0pUEoHEtp0TDpb0qwxDxjylbJU0V6YIyhONJptZY04eEynLA1IQo5knFyfeliW+YlgOMftmdXLX92GqvBxDZwcOie2FJeBnbB4IvO5A4FFO9yz33sa73wh8LC4Umaynwegy+6Q8UVaS7fcGLM7QYdi6BCvbiBRw+sTEMgOWbYJ6Kb9Ik1NhpjRvGF2+RnuNNgFcj+vRBpdYDjlV61AxP3v5XoRmaUvkhMz94Uoq6c2iPERhmwEiIsuHyELXq29yCStI7/lcZ+CiiUzny8pSMlsgH4a+h/dxIX+bXaPwxBSqSXvYu91L+TnCec/gbvxY0fh0WHCzb4I0ZoX3XDHq5AlSaxr6BLXtkytb1Qp1jE0yjWzawyEUWW62tZxXUX7orGvZVcJEAf5OccjTI104k2MGz3w+nJslSLMXP+sQyL+3FRtfuZQcvJnbOlSXJ1iVNLbWME/kvulM//MROh86wD5okfNuDX4uazvb42FHs494=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0Gi7ouPywPCLbBU1RAQYmAOsh0z6ZrxP9/jZyiTRwl4UhGo+ZNuU0h1kqOZz?=
 =?us-ascii?Q?CFjLPh8XqwvxEfp6SmILcyquiPvGpUQ1XlC0+EBLPDYe9Y//SqfvP7LXHcjU?=
 =?us-ascii?Q?0IqpVkXTKUkRA9aKTQdzn0m4enaNcTvQsXha8Sraq7n5XRYY5ihyJyMKhHIv?=
 =?us-ascii?Q?QSZcRNCQVm7MBnqVWA6ZrDyQMDayThdbKlZvS54DrAHQAeptoKZLR+dRLDNG?=
 =?us-ascii?Q?VjFLi48wwdOjkOtf//uZx1QGtHvlOOI2arXw+LLs1pcs0Zybip7KTXYN1EOp?=
 =?us-ascii?Q?Cjgw7s56bqHT2SIOAoDjKpdCQmZo7oQt9wD5IqU5cMAShV3+5a6LPXlyO6kU?=
 =?us-ascii?Q?aEx/d4mzS/PDKhjFO2J0lBgHZ4AmfNdJoyYtSVKwTn2FWRjjQGCHOpXRgVYK?=
 =?us-ascii?Q?1JP1EJ2bf16psbyvHBIHpNFWMeVzZofTx+ONBawfVztu6p5xenP5LoN1GTA+?=
 =?us-ascii?Q?Oc/p9YHdixg9rMB8wKmdm2V4Bm8t+APpoY1ZuXyim06c4oRbSW7OUX8G/a+U?=
 =?us-ascii?Q?lFkUC1etGXg2bWv/e+ZBel6Oi1qPu8TPJQjyybqXROMvyOQttPXKOielan4R?=
 =?us-ascii?Q?ZVOi2NyD6H714sLzEZVOsNaij6DqNzCHfZKkV0XRhrZ1UOpb3bIaSj7ULINw?=
 =?us-ascii?Q?dL2OW7TFoBDxnwRIziaEQepJleas2Vh4zFeXhLjEx12J6+Ky7HjmzR/0COjP?=
 =?us-ascii?Q?+OSv01DnQRfBEtWai7C4tIZULcuypcJxuyGlrLixYh+6ajlrayxPW5nQBjWj?=
 =?us-ascii?Q?09gndElkRgVW3pXpYOZWilk5kNgXHardVNrbOlSoOS3inODdTiwrcwtl1WZ8?=
 =?us-ascii?Q?Uw9ra6VCk9kZZTN5UtdBLpb9QjzEDSrsLwUQGPN30jDlLs4Ghs+1t5E2fm7+?=
 =?us-ascii?Q?koTHippsvQlvh9zP0696tahVA/lmkRGCAbfnx7OpqrnkV+7kzIqVuNGRgUdr?=
 =?us-ascii?Q?dgFNzwQb3+61B5gK/A5XCkKbaFPXaY+LkVrGAM70fW65JHDrfcZUbdvRZYHg?=
 =?us-ascii?Q?9t5FFpTgFTo4EQas5DjOgohHqQ3yjXwiAwWmVmwa6wOG7X5YTgF9pXJsRNLT?=
 =?us-ascii?Q?IWQU9bbzGUnTewpfeCyR3K9Q4IdTT+nzoeOKOSDJ8SXoSeVvXuqUJ59ruZAA?=
 =?us-ascii?Q?9WfCWU0TzUQCw9ckiAZPVy/UfQadEa2hrw1Kku4KXewirXtkl/JnTdOqmMT1?=
 =?us-ascii?Q?XgqaQKLAEqGsytXjTGhr626alkLjHl7+mdoIeJJKOvk1KhBI8/iCOZZQeXvQ?=
 =?us-ascii?Q?vKh0rLRTe+afPQI73TLTyCIYnUuYLsuVBqp2nmBN+odkvCZkOE+bc8LasvPr?=
 =?us-ascii?Q?x9blpqIAaJTRJAkejOUAHKgpun7vLzusfY1hE5mlW9HMboVAavu2OisJCcFh?=
 =?us-ascii?Q?GszS8AKF3R5BpbKUqEupN7f2EzNZNydMab1YgIevSCM8PgmSCwGNUfbP2vUU?=
 =?us-ascii?Q?EVYTUTFymhxUVJozUcCc+95Ms1Jm9hx8RKIscBeFlB6lHNXKWJFZo24PjCTH?=
 =?us-ascii?Q?xS9Pv5WK5A4dR4pvIlTWmguLfiKWKJnLKR9KjqjshcE39L2ijWrpjBuAyxpv?=
 =?us-ascii?Q?bNtvJK8ptMXQlz2snbef95d5ww/IvLagKgGbTgtpsb6BiC3BzWIlVz5ykWHJ?=
 =?us-ascii?Q?cyZrrBW+NTGeGWAGYCp/+HtDntrRD47ef1YMUx9w0lmrVc0xS/rseMKkh9t5?=
 =?us-ascii?Q?nU4+JdmHMOMdix+g3aEtRqo+3ruII5iyF3yyYPs2/u/iH8V2iYtI6oQ2gsU3?=
 =?us-ascii?Q?n/O1SZUuEw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: gKhEaMCdW7yh77ka8OWp5pzLXvgc91jQ7GISyRptk1WILiJv04ccuYfzyOir6eqLvVvSSzQbjaHWeptrrw7VZuhDwCN+C/mOY+0kdYY0kYKQB/9hNoIWNuYQ4ra7mcDPPQERxHtty4uQOyzFTu3qmVkFDK5vEq7u0CtHPY9vlTwMTd7c2Y6FVr+ZpYOk9NF0Q+wMPEVyunPHtYwWEUf1Y0/5rd7xEt+vKXnQLq/5ErQ/tSuatf9kWaauUmDH40z7BXrl/uL6bCYJmFzhQXCHaLekVpbe5oHkptOdZzl/Pzxd1VlxRFfvxlaFYW6m6ShWDAxHYjk8NFYQZyCYdKMUcQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18218ac9-1f05-4144-e36d-08de80b07887
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2026 03:27:35.7731 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7suiwzo+vAcPa6nsZGES0b2Njl3BF9NIcwElKPdrU1bPrReZuxekntB6b42B2oYX5ugomTt6jQIpMTK0ltIEhg==
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	URIBL_MULTI_FAIL(0.00)[gabe.freedesktop.org:server fail,intel.com:server fail,DM3PPF208195D8D.namprd11.prod.outlook.com:server fail];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 292AD27D159
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH v3 1/2] drm/i915/dmc: Remove invalid PIPEDMC interrupt
> bits
>=20
> On display version 35+ PIPEDMC_ATS_FAULT and PIPEDMC_GTT_FAULT
> interrupt bits are no longer defined.
>=20
> Update the interrupt mask to drop these.
>=20
> Bspec: 70296

This need to be moved right above Signed-off-by without a new line
>=20
> Changes in v2:
> - Move PIPEDMC_ERROR interrupt enable to a separate patch (Ville Syrjala)
> Changes in v3:
> - Add Bspec reference (Suraj Kandpal)
>=20

here
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index c3b411259a0c..38b284a0db82 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -509,6 +509,9 @@ static void pipedmc_clock_gating_wa(struct
> intel_display *display, bool enable)
>=20
>  static u32 pipedmc_interrupt_mask(struct intel_display *display)  {
> +	if (DISPLAY_VER(display) >=3D 35)
> +		return PIPEDMC_FLIPQ_PROG_DONE;
> +
>  	/*
>  	 * FIXME PIPEDMC_ERROR not enabled for now due to LNL pipe B
>  	 * triggering it during the first DC state transition. Figure
> --
> 2.43.0

