Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0D99Nu1GhGk/2QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 08:29:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36837EF6CF
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 08:29:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9157510E073;
	Thu,  5 Feb 2026 07:29:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xjr+HJAZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D5FD10E073;
 Thu,  5 Feb 2026 07:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770276587; x=1801812587;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EaX6Zq4dgbXvdTVHfu5l/On7o6zl4Cz5bTtqqJC2C9s=;
 b=Xjr+HJAZeBVmF3dRt91rQa7GWGajzZLW/Um/RYn0sszUt/gsdmv+vCIg
 b/BEsWlxl7k31J4qNTKA+9f9FAK7OGb6IcDR9Jok8zKY5MTxC6RJkz9+a
 PFOaz7WDWToPJbeuQ8hCqJeggbxxVBHxWGNoeEJsQupCKsU+elpX7P3Ue
 3DjffcY8BBcE+WFmIz7K+Lb0h0akhaXFjoGP3AkxSND4VmTI36P7oMHee
 eCLnzbFE684Y+jNGQPH/cDP7FtVXbbC4ojwDSl7EtZ5gPnhN/oIMSiSHn
 K/XQ0PAi7IPbhopD4VrGWIVGE3ci0eEB4n64QytpKMFIy/K4H5IJStkrP g==;
X-CSE-ConnectionGUID: 5+zMn9xMR8G5JVpjgdvChQ==
X-CSE-MsgGUID: G++pWt9gR0i1cyENLtU9Gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71643167"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="71643167"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 23:29:46 -0800
X-CSE-ConnectionGUID: Hye8WNeBQc2+E+m66j3wkQ==
X-CSE-MsgGUID: 9EqBxStsSluvTS5a/2+suA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="215398341"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 23:29:46 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 23:29:45 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 23:29:45 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.13)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 23:29:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XBpOTR65tkUGFyGduXrE6tiO/rHwXvRrvsI6DElkqdJr/1ctiqpLWQ1OTeCJphB03Z4iLdN7XhY6x+apOJPYAwCUpKBMRcwKdoS7y/wACHyJ1EzcoLxzX00i5DdyocJ2z8N99IUJ0fUEvjlpGeZRd5nkgIzoTiYLx3pzrEKmX51iyXCewYQM0L2SvBUBP+CSONTPRSesjTyUEEN4kGA/otHianJQ2HGhA/EmX1y8AMDB8+5McsgfWABHL5eFLlIRgt2McNjNlqyUqA2Xo0SQBi7oC4dgrDoYrB5JPz9gXj7daKAPAQOs3TdNLcG3JiQ8ayz8F6B6A7Bcc41P7kGLCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=osmdkcug7pyjs9wTQKw9mni/U+1F6VC3oQselN7MCCY=;
 b=xbHdj7eBs6UvUCE/2zrsnkUB/Qb4qhC/rab9YKTbD+dkH2RSC4enezWTMR1ZCqDhbWZBBLT8bIrgMnw7PkGdd5MsPR7VbXWBYcl0erZeoz6SPBEYD4LXyfrQ7L7PUSmvR4OeoMuUhmTJT1Z4TPurjR1ET3yLrDXXZLBzl8KEGGDbdBHAWPjsmw1d1PPhsZ/ERJvlKf+LMxQLen8XgEnCTv1rzuhsMSvM9DiymSkXhjjXCG9buAFF/ixpERDd6wNcMcurvwjih2ETlCX32AEvmK8OGgyhksVSFq8f6FtxTB67phO8RMAPmxjb47aiQoPKdKBW5gFZmzyODNsBfec0Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Thu, 5 Feb
 2026 07:29:42 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9587.013; Thu, 5 Feb 2026
 07:29:42 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [v3 10/19] drm/i915: Remove i915_reg.h from g4x_dp.c
Thread-Topic: [v3 10/19] drm/i915: Remove i915_reg.h from g4x_dp.c
Thread-Index: AQHckWISpwr3Uj/6n0aRzLgWwW9kjrVw8cQAgALNo/A=
Date: Thu, 5 Feb 2026 07:29:42 +0000
Message-ID: <DM4PR11MB6360C87A71879050569971DBF499A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260129211358.1240283-1-uma.shankar@intel.com>
 <20260129211358.1240283-11-uma.shankar@intel.com>
 <8e30f712069ac46bd8268ff2812166148091e242@intel.com>
In-Reply-To: <8e30f712069ac46bd8268ff2812166148091e242@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH8PR11MB7965:EE_
x-ms-office365-filtering-correlation-id: 8252b745-bc66-4403-5b1e-08de6488544d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?nzwkdr1MwZrr7DM4ZqCWumMWSIMh3ytnsjYRGfMdjSVFCyirAA10MXUnrMF1?=
 =?us-ascii?Q?W1eBpzSVAcCgz2/HGK1nSsNYYNvYyAysVED45G44anszIH3k/DS/QAl2GzHX?=
 =?us-ascii?Q?bfWPsXINZd8kG7mFCaNvxu0u6Y3U781a8j7x1f/baFTaEErGIoc1lNkN4CnC?=
 =?us-ascii?Q?CdqL/0g5+urt14PzJTBZ0Ai5qHyS39YE8bQfMkNSMV3o3pxlFVCdiN3eV24c?=
 =?us-ascii?Q?kk0AJhM9WiIsCDiup1wfwOyXoZkr7VAiNqnbGn/rCjWFSJvqHc5kQltMRByS?=
 =?us-ascii?Q?ELk0zbAODBhSB1BkE+68CPq7tD4VwpdADqztvYoafk7pI4ByiHzaN2SDq0B9?=
 =?us-ascii?Q?EVc9rEiEc5OOSRz8r9OvJFnUvCbrl68BiS514eqvfc5Y4JFgzsHK6zJBenwi?=
 =?us-ascii?Q?jGhRHUcNHo604WF2xMHR8zGZkI9+Xgv11RG2ISODBteBR5xJIMRvnJvL4Tsz?=
 =?us-ascii?Q?rqAvxrows2Rf547JdvtQ0pykV8PtUPMv3TBSxcE7hAXbGC+bPELwrs0/EYwx?=
 =?us-ascii?Q?aRjPt7Z9NfnYxCjtrvabBvWWhOdlx7YK+ju6W8R4oamj0jZ4K3rMTjMYskso?=
 =?us-ascii?Q?5kjRUYpUFWlLv4VKoafshqGGsGJ6WvHvGiqFxqq0HAW77BbIWJvkWePD+GyR?=
 =?us-ascii?Q?LM6qqSiEo5FW4dai6I9HX3hKRVRVSByvIiL4EA5Nur9EtcCmCPl9vACcFYG0?=
 =?us-ascii?Q?taNB54R7R/pOsAe5Kj2v/JFpzDFMMwEBDotmoh/YTAmI2qZjDK7g8UXErno9?=
 =?us-ascii?Q?iwPJEDYoUA1RdE1eHo1UxGl7pG/p1mvfQpD8n6YD2UTIBc8H7zim/p1vgCA7?=
 =?us-ascii?Q?HqVVIeoQyUSTXneZyVezTCM/IfgKeygvIDJScnZeyVMRjVPafS4LWkKy4s8D?=
 =?us-ascii?Q?AbI683C1kZb7a/ydThD9rH77HwlrcnwzkAK3pPdPKTUEN+X3Z02Diy03QVvs?=
 =?us-ascii?Q?fT0T0B5FiqqHl0SJdzwh2chCPl8XD9rzr25nDf9dVOq/gt7m5iM1sNsiyCMp?=
 =?us-ascii?Q?rypHSskm1cgP0HDi2euhkOOMQ7GBcCs7y1v4XSu33C459/5yS3n8DOf8LcBB?=
 =?us-ascii?Q?XN/sdgATjLKp3ZYs9U6QUcv9ypthgRjLt4C6aALX0jYlnoItVp4LpYA2FNPR?=
 =?us-ascii?Q?J2DDf/YpI7t2n8Xesaj2rS7IrZiNYd8PpUsNoZUrY5p8EOXtEwde9sd+XXiE?=
 =?us-ascii?Q?ueSXt9c4sJn1cMiEGoLYnfrDrUXy2AtPW3/oxvi+8Lpx2faqn6f90GC2Vmda?=
 =?us-ascii?Q?fXKs2XLnosdyy+7rKwyct4Z/X0yzVejVGLedrlUhBkKKE113UlV109t/WK/C?=
 =?us-ascii?Q?87CalFTOLrP1elbWwBYpmaIALc7YWvfAgdUHr9Dgjdqyrcpq1UNHtri7S5X9?=
 =?us-ascii?Q?RaDT5ibDFVBoxkaWc/jeiBS5ft212XclowZDD1O8yR7wuJ7FB29rjWGsTsWc?=
 =?us-ascii?Q?Gl7MLI/EnUPe+GAyCyhHkKdGDBK4SsbiydIRGkeaZFm3HNTCRdyrSeQiJxql?=
 =?us-ascii?Q?J1uFGaLdER/rO6IHk/qy8+4Ncciy50LR7KQx7yScJUxkepM5mPVDV974loPn?=
 =?us-ascii?Q?Z7r6OpeAIOmeNuWsTNwIFEVpEQQLx5EQYld76/TOcrvCILsr9YA6UDyzhQaH?=
 =?us-ascii?Q?jiny9NZoC+901mu/SczIjls=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xCo/O5AxTjXtsCTwaiDgQDjNVnpayRX/Bcycl6AcFfqOhkIiONIdZx1rVOjR?=
 =?us-ascii?Q?nSIqMMTJ2+i/YcBW4f+JdUSw8XYuw32uvmwo1yk1WRxyf4GEPlj08TU3bP0+?=
 =?us-ascii?Q?dSsaNmuweV92mk1HDUFWdT2N+m/VmR82uux/o5CIYZQerGmAOjAmGCdQdpxR?=
 =?us-ascii?Q?q7Qh4BVrPzR0g68oQ88N5BaA+88/aWstLwfiD+BaOfI/YmwNWl+RRCV35ZjY?=
 =?us-ascii?Q?/zhXQ8fCFA0yFwgfReyqcMd1GtkWVTKhSeL08qBratfAMN3wAjT/LIMyyJ8R?=
 =?us-ascii?Q?YyV7MOCDFQOnB3jTo58AQxjxMjcGP2E3CWyP6ZKESLHfQQ7Majx93NvmY3E+?=
 =?us-ascii?Q?pTJzIY4twvveFhigCY4vvZtSACmKUf3+aEiMPO/wvTztXLhqs6RxcMBgweyP?=
 =?us-ascii?Q?yABTat6FhfbGq5L6D37g+ylE/6SUGC56jGlL42QFf8zGYoaCA6dqywCI5Ksy?=
 =?us-ascii?Q?2393g5cLpLyzwcRs1SGQzY9b57jNph3o1VCzRjPD+APO1z3GIOq0R3yRfgQp?=
 =?us-ascii?Q?rHrZqmzTVGvOMBm0eBsHOqiCHnxYXK4nDMIlnK3ujwPgIBj7tAg3YinGy1RK?=
 =?us-ascii?Q?IraPSJuJEDsqGGpCGFr6CLhVt2msFwGTxHFov9AwhCPwOMqN+iR7cuVH4ZlV?=
 =?us-ascii?Q?Gninecu0Rc3y0jF0eecFH4OYnX3LS/3gSeGJBkZ+afnHFPadlE5Vv2Ws3LVI?=
 =?us-ascii?Q?rUOOCv261VGOtnEn2F1Lr7bzjU5mgV5XbaY5tc7/lN6G2uEuJUN+t2cr/ncs?=
 =?us-ascii?Q?rCCRFhom59jbt8thgksHhONw4XWsPOYaljVI9m7P/cF+uUUYFwPXHSaYEVKZ?=
 =?us-ascii?Q?GAcHFw/+/A4W78k/qLUAV3iQHvek5tGU3hmUHG0E4l+6nOJETm/RnnL2g5Iy?=
 =?us-ascii?Q?2TkXgBbvJnreWbjd+uk90ufnZThO8dMBvSGQxT8y0mHLbSSwyPl5AE/wMdkc?=
 =?us-ascii?Q?e9dh0Yk483d4cTcC4QRZDjv7Gp1STJxVEEBxnKAqRdU3mikmEGBRtepKyAvk?=
 =?us-ascii?Q?yFQLpoikfCc72OTBJ9zAHZ265KPAFgi7KxoKZWYXZCb9mGbRw891BorqmQ7s?=
 =?us-ascii?Q?BnQWZScpmEj1yEeeslWv03pMdQc+y9NYwxf8LnL8sqwgHSBcW3OLQNrRAe56?=
 =?us-ascii?Q?3pq5hSua4bWhWiHfRH2TjY8FcOrDdtBJixhKAY6Px+pyqF9SdUvKpPMmpaj2?=
 =?us-ascii?Q?q6+3Cu2VDL/4DKDcMcJ9CLbWOpdCqy6Yjys52Zed7tEMBfCVxv9qV/6Bo5y5?=
 =?us-ascii?Q?c0wJEM5NrCjRYRzxLkmwVYd4TUEpNYc8oEHLGMiSybOmv8t8wmsskWGszJhK?=
 =?us-ascii?Q?yOaRXUQm+TKwglf52wiEOPtn9ghYjL3O9vNI4BDpLL203STQBeyekXysWwRj?=
 =?us-ascii?Q?4Mggj6OLN4ecMdNDsppp+Mq+V9+HxQgwS/PFI04ccHpVdPNJX474HRZFJBL5?=
 =?us-ascii?Q?L9yHdQPc81v62/2AJ2UO2Lfmpaeq1s1iEyGQbaA1lwIykur7FrgRd9u6/qUp?=
 =?us-ascii?Q?FOw6rHoIBHIB1j7CfGFOqcFTz4Bnu67CKVDV8joBT2RusRjsKieA5orUaDB7?=
 =?us-ascii?Q?xSAAIPa/h0n3aL/nRY4R3+zZ0WGjQ6UfrRz2xY81eqPyR7kVCANkELN+W/Vx?=
 =?us-ascii?Q?r36UMGdKau3LEM5oAzsG6V8X3Hc2Tevi1aEC8e2zTs05PxQLIKk+QER0WSyx?=
 =?us-ascii?Q?DXRKOP5a1+fFJmUiSIB5c0m8UcuQR8Kb6tKxmmMthNWwl2ZlXGFAM87EZILl?=
 =?us-ascii?Q?ynKXjkJ2iw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8252b745-bc66-4403-5b1e-08de6488544d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2026 07:29:42.5445 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SKtHCdndJPYg2mgTb1ao9DFOEh6nRjXwZY4J7NKwOh6l/A/wBrdGlbYaMDgRmKxJaOwQ3nmk/1HybXSOzunBoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7965
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 36837EF6CF
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Tuesday, February 3, 2026 6:10 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [v3 10/19] drm/i915: Remove i915_reg.h from g4x_dp.c
>=20
> On Fri, 30 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> > Move DE_IRQ_REGS to display header to make g4x_dp.c free from
> > i915_reg.h dependency. These registers are only used by display and
> > gvt.
> >
> > v2: Move DE interrupt regs from common to display header (Jani)
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/g4x_dp.c            |  2 +-
> >  .../gpu/drm/i915/display/intel_display_regs.h    | 16 ++++++++++++++++
> >  drivers/gpu/drm/i915/i915_reg.h                  | 15 ---------------
> >  3 files changed, 17 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c
> > b/drivers/gpu/drm/i915/display/g4x_dp.c
> > index 4cb753177fd8..017c6dd8f9f6 100644
> > --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> > +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> > @@ -8,9 +8,9 @@
> >  #include <linux/string_helpers.h>
> >
> >  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_gmd_interrupt.h>
>=20
> How's this required in this patch? Nothing's being moved there in this pa=
tch?

Yeah, this got left over during cleanup. Thanks for pointing out.
Will fix it.

Regards,
Uma Shankar

> BR,
> Jani.
>=20
> >
> >  #include "g4x_dp.h"
> > -#include "i915_reg.h"
> >  #include "intel_audio.h"
> >  #include "intel_backlight.h"
> >  #include "intel_connector.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index 40538910cb09..0164dcbb709f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -1049,6 +1049,15 @@
> >  #define SWF3(dev_priv, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) +
> 0x72414 + (i) * 4)
> >  #define SWF_ILK(i)	_MMIO(0x4F000 + (i) * 4)
> >
> > +#define DEISR   _MMIO(0x44000)
> > +#define DEIMR   _MMIO(0x44004)
> > +#define DEIIR   _MMIO(0x44008)
> > +#define DEIER   _MMIO(0x4400c)
> > +
> > +#define DE_IRQ_REGS		I915_IRQ_REGS(DEIMR, \
> > +					      DEIER, \
> > +					      DEIIR)
> > +
> >  #define DIGITAL_PORT_HOTPLUG_CNTRL	_MMIO(0x44030)
> >  #define  DIGITAL_PORTA_HOTPLUG_ENABLE		(1 << 4)
> >  #define  DIGITAL_PORTA_PULSE_DURATION_2ms	(0 << 2) /* pre-HSW */
> > @@ -1792,6 +1801,13 @@
> >
> SDE_TC_HOTPLUG_ICP(HPD_PORT_TC2) | \
> >
> SDE_TC_HOTPLUG_ICP(HPD_PORT_TC1))
> >
> > +/* PCH */
> > +
> > +#define SDEISR  _MMIO(0xc4000)
> > +#define SDEIMR  _MMIO(0xc4004)
> > +#define SDEIIR  _MMIO(0xc4008)
> > +#define SDEIER  _MMIO(0xc400c)
> > +
> >  #define SDE_IRQ_REGS			I915_IRQ_REGS(SDEIMR, \
> >  						      SDEIER, \
> >  						      SDEIIR)
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 22b68ddfa7b4..6cb72e6e9086
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -728,15 +728,6 @@
> >  #define VLV_MASTER_IER			_MMIO(0x4400c) /* Gunit master
> IER */
> >  #define   MASTER_INTERRUPT_ENABLE	(1 << 31)
> >
> > -#define DEISR   _MMIO(0x44000)
> > -#define DEIMR   _MMIO(0x44004)
> > -#define DEIIR   _MMIO(0x44008)
> > -#define DEIER   _MMIO(0x4400c)
> > -
> > -#define DE_IRQ_REGS		I915_IRQ_REGS(DEIMR, \
> > -					      DEIER, \
> > -					      DEIIR)
> > -
> >  #define GTISR   _MMIO(0x44010)
> >  #define GTIMR   _MMIO(0x44014)
> >  #define GTIIR   _MMIO(0x44018)
> > @@ -868,12 +859,6 @@
> >  #define   GMD_ID_RELEASE_MASK			REG_GENMASK(21, 14)
> >  #define   GMD_ID_STEP				REG_GENMASK(5, 0)
> >
> > -/* PCH */
> > -
> > -#define SDEISR  _MMIO(0xc4000)
> > -#define SDEIMR  _MMIO(0xc4004)
> > -#define SDEIIR  _MMIO(0xc4008)
> > -#define SDEIER  _MMIO(0xc400c)
> >
> >  /* Icelake PPS_DATA and _ECC DIP Registers.
> >   * These are available for transcoders B,C and eDP.
>=20
> --
> Jani Nikula, Intel
