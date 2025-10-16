Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0128BBE3236
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 13:45:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2077210E9C1;
	Thu, 16 Oct 2025 11:44:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DYFAaLSW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 319E510E9C0;
 Thu, 16 Oct 2025 11:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760615097; x=1792151097;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1EU3E80jiiKUvu+iE/lS+7ayR/jJzzyaHZDS4RsxKcU=;
 b=DYFAaLSWb5xO9oo5MEHicQBPK1Yz52QtX885MUJNgH/Vxgz5fcBlKTDK
 Ii45+KBD6a/MSN1ubdsHl19T6Mdj2kX+gzXUnLs2Xeg7tYDdqYYIbhIjT
 z3/1gSF0FBpodBLXNHxGT1CUxS5Q9xnMIM0wJh/OC+oyLlSzLPqK4vGEv
 3SfMtQZ1YdUbZX9KJyWE7qcPqOh4E+ubMkxyjs3B/qAjpClsA5/pJPh7g
 6F7U8mRuE1hvY0i1Dz43H6JSJQB4uOz2yiIG1GXOL7NWFe+oPf2FBf3HH
 /ltKkOX9hmTTCeqWe4fKobg2ao/VjzyRx7zKVECQFkTbg1zOVuSCMi4Xt A==;
X-CSE-ConnectionGUID: QxylxrSRQgaR7fJSbJn/qw==
X-CSE-MsgGUID: PRbjsBDbQeyuBYv1DOd5qw==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="62847865"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62847865"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 04:44:56 -0700
X-CSE-ConnectionGUID: Ct+RMA82T7q9B1QclJ704g==
X-CSE-MsgGUID: 3BBSZkORSzy9V7WFHatr5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="213395254"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 04:44:56 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 04:44:55 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 04:44:55 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.34) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 04:44:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y3WWcvqt5A6/1kQE2z2luVu4pKCugVqJ32qxwOLaaoNVOodHotPVNDdQsW6kh/0qZLHGX47pnzDOn7FH3paOE59l4dCkay1PdTMLaICZqXUb+i23JPiLmhaW5sVqKbyvms5WX0gEXhVFnUjzwHvlCVrxmAgc6q1P1SBOekAqouHq2V5PLUlgVipLtTk+RthVORmumt6Cb/EftpP6FGn4ZbO6JbY3/ARaubd/Lc51MVmT0/nA1RhCEoaej1VB1P8m/Ecl5W9Kw7ugle4anvNm6HfeNxizXWkXgSjyYXPzI1yAXLupw1eQe8XEexukE3ztR4p2/67fjZaJhGMpP1yZ3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1EU3E80jiiKUvu+iE/lS+7ayR/jJzzyaHZDS4RsxKcU=;
 b=T3Sf1UssF20oa88YA1sOBXm6ufOYF7jmykefslH9odc8tvkJ4a/TBXdAU1O1qGuE75QCxzAw7JQfSi6DCvw2pHag+cdRyyXH6rb7D372OlG0qN9j915xlNed8iLPZ+LQgbcUEtgS7yYauJyVAO9z47pdaArL6upPXkAkOLcvgGuzEZE9mEf7J7paRO0WyWHaoeF27d5a5qHDCuYDmqzD7UbsOgBIoXW8VxgE8noQE4+Pvy5u66XRs2877TQdabd8sPNCVPDEzSocQlbeu31AfHsegnEEobfY9YQ7SJ0lTJxokMtfXXwmIB2p4aKYHWbewMp1uJc3YqafFiI7glrzPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by IA1PR11MB7365.namprd11.prod.outlook.com
 (2603:10b6:208:423::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Thu, 16 Oct
 2025 11:44:50 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%7]) with mapi id 15.20.9228.011; Thu, 16 Oct 2025
 11:44:50 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 6/9] drm/i915: s/min_cdck[]/plane_min_cdclk[]/
Thread-Topic: [PATCH 6/9] drm/i915: s/min_cdck[]/plane_min_cdclk[]/
Thread-Index: AQHcPH8SNOMF9nV0a0+Gin7rwyUkSLTEq3Lw
Date: Thu, 16 Oct 2025 11:44:50 +0000
Message-ID: <DS4PPF69154114FD6DB82DF0B756F6F17FCEFE9A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
 <20251013201236.30084-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20251013201236.30084-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|IA1PR11MB7365:EE_
x-ms-office365-filtering-correlation-id: 3262739f-fe6f-4d4f-3c83-08de0ca96a82
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?NWswWXVnVTBhMnRuYS9VZGlrM3VLU015c043WXRVKzhYQURvWFZvMEtRZHd2?=
 =?utf-8?B?alZIeVZOMURzRXVlYXBibFpzbXpxeHNleTE1WUxBZHVoTlRvMXlFMWZidDhX?=
 =?utf-8?B?dFBnMWxjanNkaU9IdUxZY3NQT29KcUNJWDNuUUhYSndwVU5jRDYrL2RGMEFT?=
 =?utf-8?B?emh5dHdqSnRrbDFNK0pCYVN4RDdidmxTSFZUbDBlMm5BQXZFMHlmVk42ZUJi?=
 =?utf-8?B?UmpjbnVLNVhoUWM3SkFaTDB3cTMwMUViVDFQL3FnQ3hWOWpDUkJIL3UrQnpJ?=
 =?utf-8?B?UUJXZnhGRnRRN2JZVVJPU1hCQVpGODdPenZXSldLb3NYaGJZcEF3bENaY0xJ?=
 =?utf-8?B?MzhjaEVEamZDbytuLzJVTlRNbytJZGZmcFB2Vyt4TUdSZ0FrMVJVMWFWN0Qr?=
 =?utf-8?B?U3poQWpvWFRROU1xVDJsVlFaRDRpcjZYRkxIaVZKU2M1S2Y1cUZ1RkxYRHJv?=
 =?utf-8?B?UElTbmZLUzRabnhIMU13R0JGeDVWek1IdkFWNHpHM2dmemk5TENmSmlMYVBk?=
 =?utf-8?B?RHk2RGNQRno5aHlHSkE0WmNDWUxONXZxQUlxVTVFeGs1UWNuYjJ0cjFxUEM3?=
 =?utf-8?B?QXVPcmFwSVFVZUU0ZVFYbFQwdzNFMDJpSm00MnZBMU5MdnZEYkZJd0F6REdY?=
 =?utf-8?B?UzFLYzVEbjVuaHV6RFYzQTYyMzF2dlR1S1FobUlWUWUzMW0zZVY4emFlelJo?=
 =?utf-8?B?dmtqbFZzY1F5eXBpdWFsQWNDM1A5Y3ZlWVVpTGlBRlZ5UXhBQng2OFNTaDRx?=
 =?utf-8?B?MGE3dDJJeUpvS2U1TEE5cTd6OFpPdEE3ZkV0ZjJmdFhxVU5LTzVUUUo5S1Fl?=
 =?utf-8?B?clQ2eDUyOWZHNlFkc0tZY3krVXdPWDNTSmo3eFlTSWsxbkQycGVMYmpaUUUw?=
 =?utf-8?B?VEVEOUdVV2pzSGNCNlFFUG11Zk43elJ2OVFTdFJKSlpuQW9QZGJMT2FqNzRv?=
 =?utf-8?B?c1lwNzlUb2tyYkJLSms4ZUoxeE8rRFQrRi82bnpEWlkxZ01aK1ViTzBxWjNa?=
 =?utf-8?B?NVJWTXlSeHNOcmFHQ3R0TmtITjVNaXlsbDdaNVQ0S1F2cVdjdmxOUW8ydXhN?=
 =?utf-8?B?bXRnZHJkOWEyUEU3R3VhUXIyaCtyNmwvc2JZQ3JCaFZLVFY0eUZ0eHhtZCtS?=
 =?utf-8?B?RTQwYTBJQndiRzNiK3cra05qZ3lBdDd3bHBhMWsxL3VTVXZqN1JGSEs1Z2xw?=
 =?utf-8?B?eVFRMjIrNURTNkg3N0FaMlBhbkpyVldFbjA3MVNGSDY0eHk2VGlHMnJ1bWYv?=
 =?utf-8?B?SjduNm1vNWZYTDFlTEtIL0JtelZDWGs1ekZ1akYxRGp5TEpkNXc2OTc4ZEFu?=
 =?utf-8?B?Mmx4cjRTZ1l1SmFES3FGczJVSGFnMU1nYjJLMW1CbW9KSUNXTWNCRFVRMnVk?=
 =?utf-8?B?QXdjTFN6SW1yWlhqcXN2c2swQWltenFKdktaZ3Boc3dRK3h6K2lUbkdNcXNQ?=
 =?utf-8?B?aXhqK2ZiRVlwV1pNL1NHZVVvc2xzL1VyRVNEdmUwdFN2U01WNmRUQUxtSnlI?=
 =?utf-8?B?dWZjeG9oeVA4NG1TZ2xSMFVMOWY2R21FRWhWYlRnbE53cWFncW5UcmhmZDBG?=
 =?utf-8?B?dGM0dHZaRDAxSDIybkZabTFka0FDUFhNMVFtSVMxa1VZYTl0RVdXM2VTMmVx?=
 =?utf-8?B?QlowUzlBY283VXJOMVV0N0JZQ3lUZDRkaGJha1FLZHhOZTV3ZjNHUU9DUjU5?=
 =?utf-8?B?YzVaT2VyNUJxYllkamRKUXpSRHh3N0J0NTA2WWduVnc1S3hROC94YlV0eDlr?=
 =?utf-8?B?d0VQWHZ6c2kxczRsUEt0WDhDdjhPQkdocUM4Z2xWcCtXREdPTHdtend5Wng5?=
 =?utf-8?B?Y1dVcjBEeUszTWRuemNQRDFuWC9HWXNKbGdYekJPczBBMmN5SFJHMHdsSjd3?=
 =?utf-8?B?SklOMkh5T0xCWGJHUEVTZm45YlNzL3BuVHUyaFJxN1BJeW1IbjYyVng2WDlp?=
 =?utf-8?B?K3lkaWdhWk9ZZzBuZVQvVnkyT0lDSGFtY3AydVpJQlQwOVRlYmlXYTJzU3RB?=
 =?utf-8?B?RXg4WnpsZisyTlhRR3JmdFpJOGJLclMxMnl6K3RaMHkrY1NoRzAyc2o2ZG5R?=
 =?utf-8?Q?MgTygE?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ajVsVk45M29VeUhaVXdFZzQycldpODJWeGNVYjVVMmRPc3NSVFdRNmtQKzcw?=
 =?utf-8?B?S282VGIyTHM0b2Vxdm5DbFJ6N1IvSjBZWlhyRVFsbHJmc2NTbnMyMm5HUTlY?=
 =?utf-8?B?YThvY1QyOWVQWi9yYnVvM2hXbk1qZ0YvU3RwdXBrbGRoeUM3TS9TbW5Yckh5?=
 =?utf-8?B?QzRLVDROQWZGbkgxaDN0U0wrdlZPM0IreTJ3LzRkQ0xYL252NG1wZEIzNDRm?=
 =?utf-8?B?aVMydHZBa1RHaTJ5VnBzOVUrWE5RNTZYbXZ0Q21sVVVQNy9mYUc3U0NjL3Ew?=
 =?utf-8?B?cFJKOWQyUWZRbVpXbndET05xYWdSS3g2cEdidnVMd3c1WEVvUjRQOUdwYnc5?=
 =?utf-8?B?TmRUMFlNQWM4NWxKSUZ0OEFuOTZFSUZFeDF2T3Y5VmdhWWFYWUIyak1CaHFZ?=
 =?utf-8?B?RWg0RzhzVkNLTkJLL3JhYk9iei9VUHlCMUpaNGhsQmZabjdLWFgzTzBjNUpH?=
 =?utf-8?B?cmN6NXRvdUo3bDhWSzk1VTFEWDNqbXBiOXJyN29GQ3FsWVpUOXlDUW84bEZz?=
 =?utf-8?B?dHM4M0N2aUhibmg5dVRzV2Y4NWdHRXJ4Qy9DdTdQbWlqdURSa2VvaDhGVWJj?=
 =?utf-8?B?YUVKS2I0YU9jcTlPeXRMZ2NzK2p6Z2lVTnJ2a3pOblB5bDN4WVRGR1VoR0o2?=
 =?utf-8?B?eTI0WWRUWjU4VytQRG5PajFiWFhpSFY4YUFmcG82US93UnNkdGpzK2ozOXFJ?=
 =?utf-8?B?SldNeGxuZXo3RkltZUsrM0JKd0NuNWRlSWVBbkFBajlpTnVsWnp5eXdNbWcv?=
 =?utf-8?B?d2FQODdpVVdZVUlKd25FTFRlTkFSYlhBUFBpb0h2NkNrbDh4VHlnQzZ4eHla?=
 =?utf-8?B?UlY0OUdTbUlSTUF2TE1KbFh6eTVtL2ZZVkdCaElFOWxuWnlzSERnUVl4YUJk?=
 =?utf-8?B?dUJVckhmTnFFOG8wTzBQalkzQTVvSWdsRVBvbUE0ZHdwY0hvWDh5L2VsV0pL?=
 =?utf-8?B?dFdET211VGlpSXgydkxPaGgwWU5TSVlKUTBTZk1SSFB4Qlp6bnpkaHd6NlYw?=
 =?utf-8?B?S3hYMjBiYjQ4RHVCZEk2Y05EUmRzTWx1WUVLZUx1bHQ4UnJGVHRaOWJzM0kr?=
 =?utf-8?B?bjlXd1htdGZNNVVFRkU0K2MwTzlHQ083ZTJic3UwbTdqbndzY241ZXArM0xN?=
 =?utf-8?B?TlphM3ZoSVVjZDNJZEdIajBiZVFsRUVwWFVJU0J1Z3MydWlXbm82WTFwUHFx?=
 =?utf-8?B?M2h0MXdxR0FReEtpNGlHaUJPQ3JubGE2aHBqeWdoRDlYUXJSRVo4T2dGTHY0?=
 =?utf-8?B?V3hTQ0Q4YVdWOHZ6NHl2WkY5Ri9yY1cyVmdNMVFBNXFRdktTSFF4VGw3aENG?=
 =?utf-8?B?Ly91YW15TzFCY2ZiY2REMWVLMzg5V0h4bnpmaVhmSUpDV21jTDhFd3NRL3g3?=
 =?utf-8?B?dTI3V1VobllDTkszQWc1NERGcThUS2tsc0RQRS9pd2ZsM09GZXVjR01WYkg2?=
 =?utf-8?B?K1M4bk5HeFZUaThSeW8xTEhqVVl6djJzcCttVVpJbDd0ZzkwV2RRbXkzekU4?=
 =?utf-8?B?bmlZSk8vL0FpSW50aTVpVmZ5b2FWZFkzUnQvS2F0bjBlc1VvVk8wa3BVUDlJ?=
 =?utf-8?B?T25TbFl0bi8wQ2MySFY3bjJ1S0k3Vm9BWWwzRXprbHMwMURkS2pQck5hZjZ4?=
 =?utf-8?B?SkZxNUg2WTBFOThFU0I4VzhIT2tITHBqZXRUazBlL1RCNU1YSnUwSlA0dzNQ?=
 =?utf-8?B?U2ZESFlIVjdvUkxVNlhDYlExQ3E1NXloSXlXQ2JRRG9PeGNSZFFGTFpGRUFT?=
 =?utf-8?B?TEN6dHdBNDMwMmp3WnRRNzNFU2l1Wk5KTVljRnNPUnhDcUllR3hhcjdUUjZP?=
 =?utf-8?B?a0JIc0ZzVVJIOFQrVEMrRXQ2Y2E5VUpWZUlHdUE4dFRhZEV6ejBHUUx2WjRo?=
 =?utf-8?B?ano4aWptcVpQNTFCejVIK0RMZWNBdzBZc2pGZU9wbnFGTXUxU0dCWnRzaWdX?=
 =?utf-8?B?WVpNalN0RU96em5WbjRvZlpHUUpFSVY5YzVpT3NDcm13Z05YNjZrd0l5NXpv?=
 =?utf-8?B?eVFzaXVYNGtVcEFXME5Yc2RERVVYakJBNUxDcmx0QWk0djZ6ZTQzcXI4cXhi?=
 =?utf-8?B?akRDenVNT2ZDcHhZeU50c2tkNEF1b2NZbEl4N3dkbWRnMWN3M29hNFJBRG9w?=
 =?utf-8?Q?HcLKh3xwMiz5cJITbdISc+//l?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3262739f-fe6f-4d4f-3c83-08de0ca96a82
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2025 11:44:50.8563 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D6Ui8mKEKeC6+Ir1g9FYNr2V8dadPOVq0JHk/2h15q+Nb/dUcIHnH7xpJbDOMamYa0Z57kof7V4uNQNsdRmBmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7365
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBTeXJqYWxh
DQo+IFNlbnQ6IE1vbmRheSwgMTMgT2N0b2JlciAyMDI1IDIzLjEzDQo+IFRvOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gU3ViamVjdDogW1BBVENIIDYvOV0gZHJtL2k5MTU6IHMvbWluX2NkY2tbXS9wbGFuZV9t
aW5fY2RjbGtbXS8NCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IA0KPiBSZW5hbWUgY3J0Y19zdGF0ZS0+bWluX2NkY2xrW10gaW50
byBjcnRjX3N0YXRlLT5wbGFuZV9taW5fY2RjbGtbXSB0byBiZXR0ZXIgcmVmbGVjdCB3aGF0IGl0
IHJlcHJlc2VudHMuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xh
QGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY2RjbGsuYyAgICAgICAgIHwgMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCAyICstICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYyB8IDYgKysrLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BsYW5lLmMgICAgICAgICB8IDQgKystLQ0KPiAg
NCBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IGluZGV4IGQ1NWIz
ZGMyMzM1Ni4uZWQ2NGZhYzc4OTdkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jZGNsay5jDQo+IEBAIC0yODI0LDcgKzI4MjQsNyBAQCBzdGF0aWMgaW50IGlu
dGVsX3BsYW5lc19taW5fY2RjbGsoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpDQo+ICAJaW50IG1pbl9jZGNsayA9IDA7DQo+IA0KPiAgCWZvcl9lYWNoX2ludGVsX3Bs
YW5lX29uX2NydGMoZGlzcGxheS0+ZHJtLCBjcnRjLCBwbGFuZSkNCj4gLQkJbWluX2NkY2xrID0g
bWF4KG1pbl9jZGNsaywgY3J0Y19zdGF0ZS0+bWluX2NkY2xrW3BsYW5lLT5pZF0pOw0KPiArCQlt
aW5fY2RjbGsgPSBtYXgobWluX2NkY2xrLCBjcnRjX3N0YXRlLT5wbGFuZV9taW5fY2RjbGtbcGxh
bmUtPmlkXSk7DQo+IA0KPiAgCXJldHVybiBtaW5fY2RjbGs7DQo+ICB9DQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGluZGV4
IDg3YjdjZWMzNTMyMC4uZjc3ZDEyMDczM2ZkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAtMTE5Miw3ICsx
MTkyLDcgQEAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgew0KPiANCj4gIAlzdHJ1Y3QgaW50ZWxf
Y3J0Y193bV9zdGF0ZSB3bTsNCj4gDQo+IC0JaW50IG1pbl9jZGNsa1tJOTE1X01BWF9QTEFORVNd
Ow0KPiArCWludCBwbGFuZV9taW5fY2RjbGtbSTkxNV9NQVhfUExBTkVTXTsNCj4gDQo+ICAJLyog
Zm9yIHBhY2tlZC9wbGFuYXIgQ2JDciAqLw0KPiAgCXUzMiBkYXRhX3JhdGVbSTkxNV9NQVhfUExB
TkVTXTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
bW9kZXNldF9zZXR1cC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9tb2Rl
c2V0X3NldHVwLmMNCj4gaW5kZXggZGViODc3YjJhZWJkLi5kNWM0MzJiNjEzY2UgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF9zZXR1cC5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF9zZXR1
cC5jDQo+IEBAIC04NTMsMTYgKzg1MywxNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tb2Rlc2V0X3Jl
YWRvdXRfaHdfc3RhdGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+ICAJCQkgKi8N
Cj4gIAkJCWlmIChwbGFuZV9zdGF0ZS0+dWFwaS52aXNpYmxlICYmIHBsYW5lLT5taW5fY2RjbGsp
IHsNCj4gIAkJCQlpZiAoY3J0Y19zdGF0ZS0+ZG91YmxlX3dpZGUgfHwgRElTUExBWV9WRVIoZGlz
cGxheSkgPj0gMTApDQo+IC0JCQkJCWNydGNfc3RhdGUtPm1pbl9jZGNsa1twbGFuZS0+aWRdID0N
Cj4gKwkJCQkJY3J0Y19zdGF0ZS0+cGxhbmVfbWluX2NkY2xrW3BsYW5lLT5pZF0gPQ0KPiAgCQkJ
CQkJRElWX1JPVU5EX1VQKGNydGNfc3RhdGUtPnBpeGVsX3JhdGUsIDIpOw0KPiAgCQkJCWVsc2UN
Cj4gLQkJCQkJY3J0Y19zdGF0ZS0+bWluX2NkY2xrW3BsYW5lLT5pZF0gPQ0KPiArCQkJCQljcnRj
X3N0YXRlLT5wbGFuZV9taW5fY2RjbGtbcGxhbmUtPmlkXSA9DQo+ICAJCQkJCQljcnRjX3N0YXRl
LT5waXhlbF9yYXRlOw0KPiAgCQkJfQ0KPiAgCQkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0K
PiAgCQkJCSAgICAiW1BMQU5FOiVkOiVzXSBtaW5fY2RjbGsgJWQga0h6XG4iLA0KPiAgCQkJCSAg
ICBwbGFuZS0+YmFzZS5iYXNlLmlkLCBwbGFuZS0+YmFzZS5uYW1lLA0KPiAtCQkJCSAgICBjcnRj
X3N0YXRlLT5taW5fY2RjbGtbcGxhbmUtPmlkXSk7DQo+ICsJCQkJICAgIGNydGNfc3RhdGUtPnBs
YW5lX21pbl9jZGNsa1twbGFuZS0+aWRdKTsNCj4gIAkJfQ0KPiANCj4gIAkJaW50ZWxfcG1kZW1h
bmRfdXBkYXRlX3BvcnRfY2xvY2soZGlzcGxheSwgcG1kZW1hbmRfc3RhdGUsIHBpcGUsIGRpZmYg
LS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BsYW5lLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BsYW5lLmMNCj4gaW5kZXggMDc0ZGU5
Mjc1OTUxLi43ODMyOWRlYjM5NWEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcGxhbmUuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3BsYW5lLmMNCj4gQEAgLTMwNCw3ICszMDQsNyBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9wbGFuZV9jYWxjX21pbl9jZGNsayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwN
Cj4gDQo+ICAJbmV3X2NydGNfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRl
KHN0YXRlLCBjcnRjKTsNCj4gDQo+IC0JbmV3X2NydGNfc3RhdGUtPm1pbl9jZGNsa1twbGFuZS0+
aWRdID0NCj4gKwluZXdfY3J0Y19zdGF0ZS0+cGxhbmVfbWluX2NkY2xrW3BsYW5lLT5pZF0gPQ0K
PiAgCQlwbGFuZS0+bWluX2NkY2xrKG5ld19jcnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSk7ICB9DQo+
IA0KPiBAQCAtMzkxLDcgKzM5MSw3IEBAIHZvaWQgaW50ZWxfcGxhbmVfc2V0X2ludmlzaWJsZShz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gIAljcnRjX3N0YXRlLT5kYXRh
X3JhdGVfeVtwbGFuZS0+aWRdID0gMDsNCj4gIAljcnRjX3N0YXRlLT5yZWxfZGF0YV9yYXRlW3Bs
YW5lLT5pZF0gPSAwOw0KPiAgCWNydGNfc3RhdGUtPnJlbF9kYXRhX3JhdGVfeVtwbGFuZS0+aWRd
ID0gMDsNCj4gLQljcnRjX3N0YXRlLT5taW5fY2RjbGtbcGxhbmUtPmlkXSA9IDA7DQo+ICsJY3J0
Y19zdGF0ZS0+cGxhbmVfbWluX2NkY2xrW3BsYW5lLT5pZF0gPSAwOw0KPiANCj4gIAlwbGFuZV9z
dGF0ZS0+dWFwaS52aXNpYmxlID0gZmFsc2U7DQo+ICB9DQo+IC0tDQo+IDIuNDkuMQ0KDQo=
