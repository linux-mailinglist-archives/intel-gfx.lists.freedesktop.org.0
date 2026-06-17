Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 10nMHVd3Mmqg0QUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 12:30:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3884698817
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 12:30:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=fAIrgziM;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A76C10EF89;
	Wed, 17 Jun 2026 10:30:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83DC510EF89;
 Wed, 17 Jun 2026 10:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781692244; x=1813228244;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=14I+bz+LX3vSOttN+qGav8CvQcsVk+K18Z8RKEKj6yg=;
 b=fAIrgziMNsBSPsnfVymQkonKW6oU/E4dbcGPklscrYGHkAdkUyyJ3deA
 8kcBZhRGxZcDvRUCItoK5of1e8Js88Un5KekjI0HzGyHAz5sJkmTycAWp
 QO+NAg6MXl+L8maCD7umAIr/A81zMTthH3LwoVwycb031ND/n1WfFLTve
 a+nQMEA2F6MUmBIZMeMdR1Tq8UUsoeKRXBQNacPpG7V5nhnCMo8jaZKY7
 STbVqTKkZNdXLDwdF/8tFvepS6R8eOMw1y/7Rt4eJE9x63G/SX8rN6jUo
 wf0mdg/XIUqDiq7y++9Eyxjb2D7rQ3KA0WZOXw6inluIwVvd7ooka5ycZ Q==;
X-CSE-ConnectionGUID: u6hlVu4fRTK7PRrf9vX2/A==
X-CSE-MsgGUID: 1nGKD19zRtGzawnujYyYFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="70013321"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="70013321"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 03:30:44 -0700
X-CSE-ConnectionGUID: CgEpOLv9TN2A8AXMhMbSkA==
X-CSE-MsgGUID: ZaHddTOERVqwjuytgfqCiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="252334104"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 03:30:44 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 03:30:43 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 03:30:43 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.60) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 03:30:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lniiLLntFKvFB16Z6BtL1ZsSPi7lC8nBuT5Fa+uZ//kCLJgLmly06cOV4sTs3Lbtl1YJM8SssFZhBpTb5dJEakdqqls1N+LG77Osog7zH5nuSLqYnYg+zqWMHwVFhwkwFj2U3BNVxi3dk/1gHVgTquXo+SH8kIt0gFJRe3K16+xxtvrJFzNqG9wDIDCfyROtbO5b1BMXwWAOFsBXfmsDjsJb3dgB4xq/+Bk0uJwaN25V2bdmRPA34NKlT+2I7VsKEwfWBh5lBIBPjNGyeYgh9ZNCor7ZKXhk1jfrhrvXkiyTVucfQdhyXNnSyo99YxcZsrPOqXdinJaj0WP96IZqnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8RBvraeYDgUNSlT/EclSRWWDOiimR6d6epbcbrgPX5U=;
 b=W/DM79JaaWBlajk92IgkbMsd9PafDSEg6kY3fNOsSeHwgIlf2CX8WOfDI4rcSPUjikCNT8x+MiDk+CzA5fpNi67PjmZTy2mtBPp/GtIrn7Ibi2rnbilZCj8gF/96W6b5bt1J00R+9JnHj+GyVqNmzlpj5iV90yjJ78R2uYj7eulm3AU9fFWGAs5wwpFE+3uLK4SmM+mbCuMu8XDJEvWLveSrUEANJnPxO/vyeg4DRniKlhevy23lDUExHVbaKPumJpn5CjUJUwBl1p7p4QP754tBVxVZPjXaiHrcHr+YYGCpbceK+0qkLBLjt5IkU/xUoi02kkvMotXpnlx1TNcUCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 BN9PR11MB5275.namprd11.prod.outlook.com (2603:10b6:408:134::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Wed, 17 Jun
 2026 10:30:39 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 10:30:39 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v6 12/16] drm/i915/display: PSR Add delayed work to exit
 DC3CO
Thread-Topic: [PATCH v6 12/16] drm/i915/display: PSR Add delayed work to exit
 DC3CO
Thread-Index: AQHc/ax8U5vMDCgjWUC9m9yWcTifBLZCi+4A
Date: Wed, 17 Jun 2026 10:30:39 +0000
Message-ID: <DS0PR11MB80492C8542FB98AAB4D6F2B1F9E42@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260616162154.2630995-13-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260616162154.2630995-13-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|BN9PR11MB5275:EE_
x-ms-office365-filtering-correlation-id: 9cae8020-731b-405d-c0c2-08decc5b79e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|23010399003|38070700021|22082099003|18002099003|4143699003|11063799006|56012099006|6133799003;
x-microsoft-antispam-message-info: Nlp2i0mysXUhXQf+ekJn7+pXEr+HCeH3zaMoskS/QAP9QcycvYayq+b9zhwUxPO0plXIqBlo2Vze7C8d0yT5T75KbaGe99juMUjLi7aAU7n02V2jlIPbAfSaOCc8+MvnY/R6CaIR2xMQesuXMWRYIPXNqm1E38l6p3i1KBW4/kHabjUE9WuSK4GJfUPY778/wOD43p8wUwKr4ZZd368tEQczlPaO8LBBxeQhlnh0qiHBjQCMyfhsyzjP5Z0z+19qlnTjrpFdEhslqCNLHOV6xN8BponWzeQWHMPqgimnAB1BDXh6Umr7ieYFjwPjYuk7tv5AWoEV7Tt5/nNHTDc1JYOe2BDTAWRzeTZsBlWDKZrbLrdbK4ZCoWZv2o4/xe8dIbE31bR5I3pOgaieYGBXtx99MVmhbUXc03CvD9pdMSRtUJ03+Yiqfna3hozfwVhk1Vh74ia/jdc5LcyevyQkxYQFf2TEuDNkTNlkGZTpHYj2uscEqO3+CR2fOvqTMjqNMiKG9rk6e2LZQJfXOvu1mCORwFJkzttknGni1rIfyQc3OreOzQ8y+KbJCbZznCxKaiPNVPBRr51TqQTnBHTTY6yYB3mrwVR5fuEGceYJ9jDw4n5GSH4DSxRvZZNOgj8X1LT1rSGT7WBbp5oWt17cfPy3QZ3KJzaBhcS7EQub1AibKhapOtAzkXdju60u0CV8h6x9UtUow6kNsFr+67hSXTT5z3rHAlypshK9Cr5uWpiJ1lB3AlIZNk4TD988egCu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(23010399003)(38070700021)(22082099003)(18002099003)(4143699003)(11063799006)(56012099006)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KsNQJFyOD4Wls9rMgTL6LObjmaUm2RMv23KgxVtykfum0AS6iY1pZr7CPYeL?=
 =?us-ascii?Q?diQ6DvFjs9mlQZWLORGKX2mpmvBZPU1hruCbDKB4671OHIQjS9/+orKOQ2sI?=
 =?us-ascii?Q?O/2jVLM11xFV2r5hWs6cGbgqnHp/Sau4GdmILlEnIHbZSdOEsinSP0ZQ66F7?=
 =?us-ascii?Q?K7ZDbRyAj0GROPxinHOYHHA0EC/Gv4+VjfmEZVmmkTx4XcZ5qlFw4oilIf9d?=
 =?us-ascii?Q?lYWuEOhbGw3mfuvi0IR2nAi8TnKwdC5g2nRWqIwTItv11wG42qChSOXWWgg2?=
 =?us-ascii?Q?btUmFa7y1EIHS7iga2r1/HYJM7mZ006BKXhj2sG18ll+I+g5SzQlnkCEzSYf?=
 =?us-ascii?Q?FCSMjDBgAtU5IW87mUwkhyVg9TeaHU4R1plJMADHdVy+G+D2qWcoXSmVqWH3?=
 =?us-ascii?Q?MbMWuIk66LWsBwMPC6WGZlfbav1Iq+2FAhDKhfeSIpKBo/ZITQFSkaTNDhkL?=
 =?us-ascii?Q?4UawR2MJG0w0Ozcg8c5CfmMnwhki1DykDmakKhbdg9QR6kBnx4cKMgKMnRYS?=
 =?us-ascii?Q?+HJlKbjujg01Q3A6ywp/78/8s34ScH0Ti44o5x4w0GyCMBuRoPz/nxkTsse3?=
 =?us-ascii?Q?PBRUHPDTdq2HR77YLgQjsr/bsatFtnzctjRdp6MQzTWRPMxwibmmaR8tYeUE?=
 =?us-ascii?Q?t4o3R0gXimgXSOLpugG8rhCAprHUdx3ltIcjVjuFPD6uwuS0Y0grpDCjQPTf?=
 =?us-ascii?Q?7tDbngzOJOdrGoT6uolTQWlDf4UsIjgbRHUfUYFMLs5+z5EcyWfdySgIESd3?=
 =?us-ascii?Q?ltVt3/2wqt+qSb5Fx4fRxQOOVpkKdVAmYKOKshKEazKU9/fOki+mbx5NKadb?=
 =?us-ascii?Q?aIx3cr3XR5nPK+qf/BHhE4UKXZKfFPPQnyQWQp0GRYHWi8xJVX9+XyVd6Gt+?=
 =?us-ascii?Q?ljgTRsYbEeTK1B1zSn4f0OlclQ7U9SxJOHr/hMXE+gpbWaltjuE8Zw6IJqC5?=
 =?us-ascii?Q?+l7/Vkv89biEbapbsMdsPtRlDxcnlQdiXu2u0f/9Q31SLAOZJNyn8ryn1gz3?=
 =?us-ascii?Q?GwcPzZAkJE67gJ3ac9vpC7Xxb1+GTTj4NZCcybSEfvi56rmMCyoq9U0MjJqg?=
 =?us-ascii?Q?FPQse9HUSqn9OvOvCrrJbFliw4UwF97XHeJuNR1wwb74n7DciwTFDwpNi16c?=
 =?us-ascii?Q?MiGD2RFNRMypXI2H9TklAVPv5bwMpevnoAO0DC/kLsDurPYfffmFvntazulL?=
 =?us-ascii?Q?D2XFyrIhq+qGAu787s4wQa5eSrsyYH8dq4ZAuevCtqiCFiWNCEFIg0hHVyIg?=
 =?us-ascii?Q?fR991+jRsGDZabbjVJ5EF1jhokrc4GHwxS6vvs7mJJSOzgNPwBOOnNLx4leF?=
 =?us-ascii?Q?ms1tdkk8SVOHoU2ndDGADe9LvNdF5B0/2kBmhaXDAhWWkMJLB8Y05gAa+joA?=
 =?us-ascii?Q?raK6f0LSPm357EsS79NqhNAiF2IIdNXSpYNFPRLO8BysM1UN9kaz/jtSShCh?=
 =?us-ascii?Q?A/ga4abSmlMlCkPkwgwkQSapBsvBo54UYsXFdjoF/Y+Doyn5qp0vfnG7yqB0?=
 =?us-ascii?Q?8ehb1d5nwM2difEaR2tc3pFlrNMJ+pvbQN17ntuss+Optxh20Yvlj9d9NVbH?=
 =?us-ascii?Q?x9iu3D9aEjdtX7G8uVhZpy4/YVPVDlzISfTZpx4Cj+pcCl9sm74ike22GioA?=
 =?us-ascii?Q?2G6dxPyuIKGPbQheparpSNooABNHs9mM/My7YuAXTFZ7M0yW/e/7CpH8wro0?=
 =?us-ascii?Q?met9jflBG1aoxQ8OOeJk1B0nNmbiEr4KaX1zWzHaFBiDSvLUGs4OdX88eQkS?=
 =?us-ascii?Q?8NLjhjzHWA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: X2VnVjJblPvHxpnr6NPxEm2WC3kYqJnTPoEaM64x6pYVxZm6MUaz89TgFItLZBNcNR+CTr41R6sOwHqCA/NRZGFDjzvMhNy2fODL0hO/2JXgqM0ji6Kv4I+Yrz8NDlwhmas67oYxzt3OPsz4QAlxtpF0yjyZjLd1zl/9myxjCH6aUn7xlp0GNeKPcZW4xltban2QKWVSWkZieHM5cCA7/CgqcmB9rIfJSeD6oxZJaqcSnMQAsyEXrKoslQVmyNsoJ7ovu6zZ714z3W6uGZwQXl0uZgzC5nRn0jtBNY1LnlTZsj95nDo9ZJtPZRtTlFgPKsWD99D8SY8m8+Z71yForg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cae8020-731b-405d-c0c2-08decc5b79e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 10:30:39.2243 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7pkNHSO0R6MS648c+lPUW2jx9GBf3jMKnEi8UV2Eyc/U8nIUTqVRxKC4IukWiVHtxHCaE2TkbnXYCe+BqQqYqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5275
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,dc3co_work.work:url];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D3884698817



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Tuesday, June 16, 2026 9:52 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v6 12/16] drm/i915/display: PSR Add delayed work to exit
> DC3CO
>=20
> For DC3CO, idle_frames is programmed to 0, so PSR does not enter deep
> sleep. Add delayed work to schedule DC3CO exit after an idle duration
> derived from frame time (minimum equivalent of 6 frames).
>=20
> The work is re-armed from the PSR flush path on relevant frontbuffer
> activity. Once the display remains idle, DC3CO is disabled, idle frames a=
re
> reprogrammed to their normal value, and DC6 is enabled to allow deeper
> power savings.
>=20
> Changes in v2:
> - Squash "PSR set idle frames while exit from DC3CO"
>   into this patch (Uma Shankar)
> - Add cancel_delayed_work() in intel_psr_disable_locked()
>   before clearing dc3co_eligible (Uma Shankar)
>=20
> Changes in v4:
> - Re-arm cancelled DC3CO work in psr resume
> - Schedule DC3CO work from intel_psr_post_plane_update(). This is to
>   make sure DC3CO work scheduling will happen even without psr flush,
>   which may be a valid scenario.
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 62 ++++++++++++++++++-
>  2 files changed, 63 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 30feed50a2d1..ebd00922bf3c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1778,6 +1778,8 @@ struct intel_psr {
>  	bool irq_aux_error;
>  	/* DC3CO allowed used to control PSR configuration */
>  	bool dc3co_allowed;
> +	/* DC3CO disable work */
> +	struct delayed_work dc3co_work;
>  	u16 su_w_granularity;
>  	u16 su_y_granularity;
>  	bool source_panel_replay_support;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 091da8341b0f..822bc1d6af53 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1774,6 +1774,51 @@ static bool
> intel_psr_needs_wa_18037818876(struct intel_dp *intel_dp,
>  		!crtc_state->has_sel_update);
>  }
>=20
> +static void psr2_dc3co_disable_locked(struct intel_dp *intel_dp) {
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +
> +	if (intel_dp->psr.dc3co_allowed) {
> +		intel_dp->psr.dc3co_allowed =3D false;
> +		intel_display_power_set_target_dc_state(display,
> DC_STATE_EN_UPTO_DC6);
> +		psr2_program_idle_frames(intel_dp,
> psr_compute_idle_frames(intel_dp));
> +	}
> +}
> +
> +static void psr2_dc3co_disable_work(struct work_struct *work) {
> +	struct intel_dp *intel_dp =3D
> +		container_of(work, typeof(*intel_dp), psr.dc3co_work.work);
> +
> +	mutex_lock(&intel_dp->psr.lock);
> +	psr2_dc3co_disable_locked(intel_dp);
> +	mutex_unlock(&intel_dp->psr.lock);
> +}
> +
> +static void
> +psr2_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int
> frontbuffer_bits,
> +			enum fb_op_origin origin)

Unused enum fb_op_origin origin, surprisingly kernel compilation is also no=
t catching.

With this fixed,
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> +{
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +
> +	if (!intel_dp->psr.dc3co_allowed)
> +		return;
> +
> +	if (!intel_dp->psr.sel_update_enabled ||
> +	    !intel_dp->psr.active)
> +		return;
> +	/*
> +	 * At every frontbuffer flush flip event modified delay of delayed
> work,
> +	 * when delayed work schedules that means display has been idle.
> +	 */
> +	if (!(frontbuffer_bits &
> +	    INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe)))
> +		return;
> +
> +	mod_delayed_work(display->wq.unordered, &intel_dp-
> >psr.dc3co_work,
> +			 intel_dp->psr.dc3co_exit_delay);
> +}
> +
>  static
>  void intel_psr_set_non_psr_pipes(struct intel_dp *intel_dp,
>  				 struct intel_crtc_state *crtc_state) @@ -
> 2331,6 +2376,7 @@ static void intel_psr_disable_locked(struct intel_dp
> *intel_dp)
>  	intel_dp->psr.psr2_sel_fetch_cff_enabled =3D false;
>  	intel_dp->psr.active_non_psr_pipes =3D 0;
>  	intel_dp->psr.pkg_c_latency_used =3D 0;
> +	cancel_delayed_work(&intel_dp->psr.dc3co_work);
>  	intel_dp->psr.dc3co_allowed =3D false;
>  }
>=20
> @@ -2361,6 +2407,7 @@ void intel_psr_disable(struct intel_dp *intel_dp,
>=20
>  	mutex_unlock(&intel_dp->psr.lock);
>  	cancel_work_sync(&intel_dp->psr.work);
> +	cancel_delayed_work_sync(&intel_dp->psr.dc3co_work);
>  }
>=20
>  /**
> @@ -2391,6 +2438,7 @@ void intel_psr_pause(struct intel_dp *intel_dp)
>  	mutex_unlock(&psr->lock);
>=20
>  	cancel_work_sync(&psr->work);
> +	cancel_delayed_work_sync(&psr->dc3co_work);
>  }
>=20
>  /**
> @@ -2417,8 +2465,13 @@ void intel_psr_resume(struct intel_dp *intel_dp)
>  		goto out;
>  	}
>=20
> -	if (--intel_dp->psr.pause_counter =3D=3D 0)
> +	if (--intel_dp->psr.pause_counter =3D=3D 0) {
>  		intel_psr_activate(intel_dp);
> +		/* re-arm cancelled dc3co work from pause */
> +		if (intel_dp->psr.dc3co_allowed)
> +			mod_delayed_work(display->wq.unordered,
> &intel_dp->psr.dc3co_work,
> +					 intel_dp->psr.dc3co_exit_delay);
> +	}
>=20
>  out:
>  	mutex_unlock(&psr->lock);
> @@ -3174,6 +3227,11 @@ void intel_psr_post_plane_update(struct
> intel_atomic_state *state,
>  		 */
>  		intel_dp->psr.busy_frontbuffer_bits =3D 0;
>=20
> +		if (intel_dp->psr.dc3co_allowed) {
> +			mod_delayed_work(display->wq.unordered,
> &intel_dp->psr.dc3co_work,
> +					 intel_dp->psr.dc3co_exit_delay);
> +		}
> +
>  		mutex_unlock(&psr->lock);
>  	}
>  }
> @@ -3632,6 +3690,7 @@ void intel_psr_flush(struct intel_display *display,
>  		if (origin =3D=3D ORIGIN_FLIP ||
>  		    (origin =3D=3D ORIGIN_CURSOR_UPDATE &&
>  		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
> +			psr2_dc3co_flush_locked(intel_dp, frontbuffer_bits,
> origin);
>  			goto unlock;
>  		}
>=20
> @@ -3690,6 +3749,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
>  		intel_dp->psr.link_standby =3D connector-
> >panel.vbt.psr.full_link;
>=20
>  	INIT_WORK(&intel_dp->psr.work, intel_psr_work);
> +	INIT_DELAYED_WORK(&intel_dp->psr.dc3co_work,
> psr2_dc3co_disable_work);
>  	mutex_init(&intel_dp->psr.lock);
>  }
>=20
> --
> 2.43.0

