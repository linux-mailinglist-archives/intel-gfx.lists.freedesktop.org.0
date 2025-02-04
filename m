Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 258B2A2793D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 19:02:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B55D510E36D;
	Tue,  4 Feb 2025 18:02:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="chUtoy8L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A18910E044;
 Tue,  4 Feb 2025 18:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738692170; x=1770228170;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ChBhSu089Fl/I0g8voWhLN3F+ESp9mS8OT7or9iaQN4=;
 b=chUtoy8Lf4azjTgIpfTlv/Nbpp4PbuWHUfix+lbCAdGpB1sSMA56dxSR
 RgHlGrh9jR3oBTmFWb20IguplyrT7DwOsOtKd4eFqiE45N767nodNu1HA
 f3mrYvaydHUQMurhPiA3CfdY2xjqjR9tTxr0OH5Y2+QAchuG+TMED9s1f
 zk1GYO/FuvcWKnjRiyGaiC8PJQM24YZz4hRyl3HehPF/RcycewATHhxv/
 BJZON8g061ngzFRfw1rKT29fcww9uAryK7xBOompZywMgjkT+JtmmWoVB
 eMW+B7oVGdAkxLmsLwUfkE5I/GYKW/Bc7mQwdTAOKqDD24d2Zclsi7f+E g==;
X-CSE-ConnectionGUID: 2w3C27AMR1+lmCC8lsMjhQ==
X-CSE-MsgGUID: 1nbgDEJ4SMKTfEMOakh69g==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="42073144"
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="42073144"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 10:02:49 -0800
X-CSE-ConnectionGUID: 9ts6WoFFSP+qQy4lTJBFUg==
X-CSE-MsgGUID: xErJtHxRSs+Ll5hOVrsNVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="111208449"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2025 10:02:34 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Feb 2025 10:02:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Feb 2025 10:02:30 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Feb 2025 10:02:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gW8ARqH/hCc6amwfQnry8J21DScWv094l9kxqyZcnZoz7kuZXoWy7mmRySQS6RbUVBq88t57j2UXj0k3aAej+9JrEelNlW/PcBpOHCBZQkIbCLBexjtElksQMvGBskexqY6U9/UOMSfT/zAJOsgR+177TyNaL9P7vYfTmrI4m5Le0bz9cvbQRxtrJs8+gwY00VMBxNJIZR7D2iAjPsNCMWnOV9D3gONv1FpRCraiegJBjR3zdaMNvDcLiifeyhvVxnhSLHieqzpr4NDTXC8gGSI8LXbKnXJVSLiq8DiOOo40kawTcYrh8aFAFNIOJ/38qMD87RYwSaB9BqRuAP7FoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ChBhSu089Fl/I0g8voWhLN3F+ESp9mS8OT7or9iaQN4=;
 b=DhzBD2auRQCt3kBlmGi9z3LKmQVR/8SHAguA6gW9nT22/o4MBFCCa1833h87esKzk3Jz2wvDHs7RbxJzfWz3pDWqmcWBwJsqLkUx8KmIp4kb//GLx0MV/q3yVl3voSWoNbVVocMKpv0YIWkXa5mVYI9bOOXQFZafVek43062ofRm/aRj/orLC9c+csoJPZ0a5TORB18EwWT6Zv0TGswcqc5UtE2by1qnfTMNUllJUTBTtkdr1gIollEuKbnwbxZwuv6+h7hYo9RnRnDua9cm0utF/zQstbdSFP/lWlJj5PGBk1IgPsmwTtetp0clM5oCQ6vOIbXawJ/AHkGPdRUOZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 DS7PR11MB6247.namprd11.prod.outlook.com (2603:10b6:8:98::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8398.24; Tue, 4 Feb 2025 18:02:25 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%6]) with mapi id 15.20.8398.021; Tue, 4 Feb 2025
 18:02:25 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/dp: Add support for DP UHBR SST DSC
Thread-Topic: [PATCH] drm/i915/dp: Add support for DP UHBR SST DSC
Thread-Index: AQHbdlXsmrp/PlWgbU+xM+RajBvT37M3VDYAgAAGAYCAABazUA==
Date: Tue, 4 Feb 2025 18:02:25 +0000
Message-ID: <DM8PR11MB5655FA7F16A60D9BB2FE2D01E0F42@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20250203160834.2708027-1-jani.nikula@intel.com>
 <Z6I93PkEez_WdgOM@ideak-desk.fi.intel.com> <87frkt64uy.fsf@intel.com>
In-Reply-To: <87frkt64uy.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|DS7PR11MB6247:EE_
x-ms-office365-filtering-correlation-id: 0a6d6986-020a-4f71-0c35-08dd454614b6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?b1hHTFBIdUhaeWFtTGxtRFUrZnJMSUhPZ09hYWYwYXQvWHo0QjI2dVJrVEZR?=
 =?utf-8?B?S01jWlh5a3hzZ01BMk95dXpDbXRWZExMN2ZyOXd6SGNXaExVaDNDWVg0cVVW?=
 =?utf-8?B?VTBKTVhMS1RXS25RUWtOUXpZSm5mSUFOeGNRaFJub1RpZDZjUjRaUEh2UDRF?=
 =?utf-8?B?RXRQdS90clN1MWFMK0xNeDJDTnZweENJNVRBTUlWTVhhd3BqbVRBcW9QS0x5?=
 =?utf-8?B?VGZNNWJUd3g0dDhiK3pPWU5SUElnRVI5VGpWUjk5b0NqQmpCZGZ0bXoraFZ5?=
 =?utf-8?B?d2VlSDFMUEpzcHlvNW9mTFlyWUYzd1h5bFBPbHNLVmF4eVFGd0NXVUgxOHhQ?=
 =?utf-8?B?SzY4aFJ3d2dhdnp1dmhYeVJydlBYSTh5S3pheXExUG00cTlRUTZhSUVtWWNr?=
 =?utf-8?B?WmcyRkowU2pFN2ZUemZKOEN1alEzNzFrb0R6eW9MRHBoblg5SlVCTXJJMmN5?=
 =?utf-8?B?VHNRNUpVM3o0ZXhPelNFUzJhOHlqenVjWjd6TlpOdjJkbURBS3lCUyttNkZp?=
 =?utf-8?B?VXBhcnNXa0J6N3JpaTBMejR3Z3I4NVQxalg1cEZaL2R4ZnFoZ2dhUGowdWJC?=
 =?utf-8?B?TmQvaW1WY3c5OVhiZTQxQmZVOW0veVpHVCt2cDd5UnJ6eDBqT1dSelBmYndZ?=
 =?utf-8?B?ai84ZkVhajIvd3N5ZFltMHJWYVZQdHV0MFpObnRWeFpMWGh4S29UeGNyaWpj?=
 =?utf-8?B?cUZFOTJOcFBpRkF5eEVWQ2FmNzE2LzJFNFVOWC9BY0FoTGppZEdITGNDODJF?=
 =?utf-8?B?NXVRM3hEcDlVWHNGK3FvUkszZy9NTXhUV1RUQUNvRHYzWmY4RnBuMXh2ODAy?=
 =?utf-8?B?TzJXMmk0ZkRMMWxvS3dXWlNyNUtDNkJpZVIzQVZ0NnJDbDljR2RJRUwyaXo0?=
 =?utf-8?B?bkRmd29KZ2o5MGxCaVE4WTIxSVNCQ1QrVytMY1FuWDQxTWNNUVRFbHRxY2hT?=
 =?utf-8?B?T2tId3dQYjRPY2ErMXpTc2tidVpEZzRsNlVmZzJJSVdrek9CbVdRWmplaXpW?=
 =?utf-8?B?UHlrbytweWVxQVNqbU9vQXM3aTNnblUxRUpkVkZiYUxiMVpKRDZnMENFd3R0?=
 =?utf-8?B?T1NFRTV6a2laV0pCNFZ6MS9wbzFzV0FJbTdSZHRiY2EyaU10QVlXWjYyRVFh?=
 =?utf-8?B?OFc4M3NUWlVyOG12N3Y0RHoxZFROcGdPMWlmNFBSMVpGdG4yRGdYUUd2OW9u?=
 =?utf-8?B?bktjRGlpTFg2NmYrS0tJaW9JTkFPVG9aNVhsWkRPZHpXYzFJZkkzUkpQQlFv?=
 =?utf-8?B?QzY2SG1wVGZ3andsTGw3bjF2KzI4RUx6STc2RjFzaVZXNjM4UGJXWVhrQTNz?=
 =?utf-8?B?MlNjNTNabUpjNWNMK1M5QjczUGIrbVlGQ1ZmekxGZndaTHYyZlZZTHV6MGxO?=
 =?utf-8?B?ZFpMTE5zSDNwSnVFeE5XMzNzdUZYZVFDdnBCMmhxK25GcjllUVlwNTFGd3Nk?=
 =?utf-8?B?YzRld1R6RGNRUE9GSVo4RElJS2FFeW9xdzFHbXd5Y0I1ZUNWTUdOMm5JK3dw?=
 =?utf-8?B?cTAvcUtzYnIvWEhEUDRhYkE5YnVua0VVYTk0Z3VGOU1FL0l0c3E0VElobURz?=
 =?utf-8?B?QWp6Z2lPTVJURnFXM1d4N1ZHWEhySkMzNWMwS0J4cW5JU0dsUHhObldLYWdX?=
 =?utf-8?B?UHdJMmptZm1pMTB0bmV6QVUyQVA1V3hwWG11STlpQUlTTmtLc05aK1dBTlMz?=
 =?utf-8?B?bVUva3IxSWxoOWNacUg4RWY0V3J6UXREUjVHdDdRV3FnRFJGT3F1ZzEzcW1a?=
 =?utf-8?B?V0JRQnRTbitmR0k3Mi9abEdmVmVFcGRIUWxYbFoxTVJxRG5GdVdpdDU2RXFH?=
 =?utf-8?B?bzJ2MkhNbEMxTi9UbFhiWHJUQndMTTgwZHhwWjNySTdCc1JiZy85b0xMUXI2?=
 =?utf-8?B?bnpTNExTUmhaaVdFUlAzdnoxc2JTcFcrVkRmRk1GZ2hhL3oyd1hRaG5namls?=
 =?utf-8?Q?h+vqKUqZoDID+aej1lXDv1z8hbDEEW4J?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V0NWbGlZZGhVU1VtbnFtYlJVQk1GRHZmWjlJbjJCUEpCRVBUVnhxL1JaVzha?=
 =?utf-8?B?MTN6R1ZORUtVaW5SUlVpSUU4RUhxTnhvbklaM0VZWVRqYnZYaFRTdXdUU0ZQ?=
 =?utf-8?B?Z21QUVVITE5UQithT1NHRlhwZ1ZIejZPL3Z3c1l5U1JsR0xaMGxRMkpIQ05B?=
 =?utf-8?B?VXZ3bkd3ZFFsSThmdWlTQmR0cWkrY1pJRC8ybk5tQXlIcmxLKzZrK3d6SXpF?=
 =?utf-8?B?aVFOcUdsRE5vZjNYQ0dVVzVldUNhVk9BckFTak94dTZlelh5aXNkdmdYcXdP?=
 =?utf-8?B?K3Baem8vTnRGcG1SM1JjQ2lyenUxanRJSnZJb1JBbFU5bEh1MUM1RDA5TUpR?=
 =?utf-8?B?RkxQS1QyeTAzci80M3h3aGpZUE4zNUtLSCtTVWFwUGZoaW4weVRDZ3VXZThZ?=
 =?utf-8?B?eVN1L0hORTliZ2lPTGpYN251bkRlcDU0eDZrVS94YlhJNElXcWdEV0loOEYz?=
 =?utf-8?B?ODhCM3BnQSsrTStTVlNMS0tTSndyNmR4RUU5NGFwT3BKRHJMZXBXQldIbktj?=
 =?utf-8?B?TlBVQlVmTVp1YXJTdmtnb1Y1bTdYMFZ6WVBieVdJNnhkdjVSVFBQRG9kVG1r?=
 =?utf-8?B?ekhUSGE1VTdTM2twUmMrOXhaWUFRRi9jK0VjQ1RMbU1qOXo5SG1TUWhqTXhI?=
 =?utf-8?B?azNWZjBCUDJDamlVU3E4dUpDTjVsVWZITW54RlVZYWx6VTFXVWh5ZlBnZFor?=
 =?utf-8?B?aGVoaFUrSjdzZisyYU45N1g2dHZrcHFIM1FRQUlDOWZXUXdWNDFXTGtKTjZl?=
 =?utf-8?B?QTZPNThUU004UlIvRnlwVEtoSzNxYS9RTEVBV1VPYXRKb2FQbUFtczIyeVNJ?=
 =?utf-8?B?RlVmTE9CVmRqTld5Q2crWlI5aDE4VXJDdkc5SG1XenhFUEpsVUNDZis3TzBk?=
 =?utf-8?B?QkRNZzM2VGZUUTBNV2hXNGFMRVo4bjljaGtFa3lnSDhsakRLeW5OcWhrRWJo?=
 =?utf-8?B?bUpuZWZtNzc2dEJMTVM3aWwyaHJZWmVGSk1FZXBJQkM4UjNIWVJoMHZvbnBl?=
 =?utf-8?B?RzVocnk1c1dOUm1VdTV5S3IvQVRTMlBuUnpRZFBVeWNBZkxkanAyOVA5Mmc4?=
 =?utf-8?B?UXhzVWh4WmdIcjVjV0RHekdma3lERmJCZmU3TDZHY2pqTS9oRG9mM2szcE1v?=
 =?utf-8?B?S2duVThXQ2pKRC80cHVac3FsS2Z6VXJabVhSUVNXbmFlUnhvejFWcVRkK3VP?=
 =?utf-8?B?M3JGaU9WQWJrRDFobGJLQTFLWDdhOWlMS2hpRHdxcVJrV2dqNlQvcGNqSGZu?=
 =?utf-8?B?VGlWMUczRk15aUZFWEFIaXE3Q0ZDQkNzTVpVdlZ3SXU2a0F4bEUwTzFpUkRn?=
 =?utf-8?B?ZVl6NTNTOVA4c2dZbEVuU1BySFhWQkZyUEkzM0lIWlJXREtxVDF3S2dqWVRU?=
 =?utf-8?B?UVU5M0dBcGhKVzJkMjFQWUN6Q1JHcmRtUW9YMm9Odkc2Y2ZDbm9GTDd0dDhu?=
 =?utf-8?B?Y0tDZVBIWUhzYVlTTFFycUdXMEdqQWJBNzF5dGxyaG5zTG9GNG56Vks1enF5?=
 =?utf-8?B?VGJ5aHBXVHV6dW8vQXFYOE9pcFAxMkdBWFdKWmNtNTRFYUpRaXV6SW5WZVRa?=
 =?utf-8?B?WjdDbGw4WHYvS2NLQVdReUswMmswOVNhRWJQS0VJNjJhbW4raWl2UkFVeXVT?=
 =?utf-8?B?S21RRVhzN3BEeUJlYjVXYzZ6a2dheHRlUE5LZHVXa1lEcDl5VGExZFJDUERj?=
 =?utf-8?B?MUU5RzF3b0FNR3RLVTJwRk1ZNWFnM1AvVkI4S2VIR2RUY3RLNHNkSlBqa0gx?=
 =?utf-8?B?aUdxZEdwZGpkbWg3V0hOSUNKMnV5ZWhhLzlGTldEUk1hNUorQ1NFTjhmTW1O?=
 =?utf-8?B?Yk0vcWJHWWc3Mis0cnBIWng1WDB6S1pNQWQyVmViR052bFZlTDhzSkVHd0I5?=
 =?utf-8?B?L3VnSFpES3Q0Sk95czBCeTVTQW5FekdBOEtPMnlybkE2WFo0TGN4ZE54OWpt?=
 =?utf-8?B?alFUOUYxOUtlQmRra3hnUlFoYnFvck9JTUE3V1dLNXphck5QVjhFa0RHNEkv?=
 =?utf-8?B?cmg4QXBhbzBMeUVXaGVIKzVFK0ZFcndYemd5bGZGbHVBT3g1bHVyRUVTYTVz?=
 =?utf-8?B?NWVOSEVKQUVSUGc1TzdSYTRvenl5dG1PR0M1OGp2Wm5zZlZCMmNiQXJLUlg3?=
 =?utf-8?Q?VP4qpfCao5ft4gcHlNka2jFvs?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a6d6986-020a-4f71-0c35-08dd454614b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2025 18:02:25.3540 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CTHikuTrpf02WTH5c+SGsfqY2kQfRMAAe/O60l87nlyUwMihATKyb4Xhk1rdNtGbhdLQIEYz84nlZGSyCQzBWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6247
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

SGksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8
aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSmFu
aQ0KPiBOaWt1bGENCj4gU2VudDogVHVlc2RheSwgNCBGZWJydWFyeSAyMDI1IDE4LjQwDQo+IFRv
OiBEZWFrLCBJbXJlIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1Ympl
Y3Q6IFJlOiBbUEFUQ0hdIGRybS9pOTE1L2RwOiBBZGQgc3VwcG9ydCBmb3IgRFAgVUhCUiBTU1Qg
RFNDDQo+IA0KPiBPbiBUdWUsIDA0IEZlYiAyMDI1LCBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IE9uIE1vbiwgRmViIDAzLCAyMDI1IGF0IDA2OjA4OjM0UE0gKzAy
MDAsIEphbmkgTmlrdWxhIHdyb3RlOg0KPiA+PiBEcm9wIHRoZSBVSEJSIGxpbWl0YXRpb24gZnJv
bSBEUCBTU1QgRFNDLCBhbmQgaGFuZGxlIFNTVCBEU0MNCj4gPj4gYmFuZHdpZHRoIGNvbXB1dGF0
aW9uIGZvciBVSEJSIHVzaW5nDQo+IGludGVsX2RwX210cF90dV9jb21wdXRlX2NvbmZpZygpLg0K
PiA+Pg0KPiA+PiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiA+PiBTaWdu
ZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+DQo+ID4g
UmV2aWV3ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gPg0KPiA+IFdp
dGggdGhlIERQVCBicHAgYW5kIGJwcF9zdGVwIGZpeGVzIG9uIHRoZSBsaXN0LCB0aGlzIHNlZW1z
IHRvIHdvcmsgb24NCj4gPiBhDQo+ID4gRFAyLjAgZG9jayBvbiAoU1NUKSBVSEJSIGxpbmsvRFND
IG1vZGUuDQo+IA0KPiBcby8NCj4gDQo+IFRoYW5rcyBmb3IgdGhlIHJldmlldyBhbmQgdGVzdGlu
ZyENCkF3ZXNvbWUsIHRoYW5rcyBKYW5pIE4gYW5kIEltcmUhIA0KDQo+ID4NCkJyLA0KSmFuaQ0K
PiA+PiAtLS0NCj4gPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8
IDM1DQo+ID4+ICsrKysrKysrKysrKysrKysrKystLS0tLS0NCj4gPj4gIDEgZmlsZSBjaGFuZ2Vk
LCAyNyBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiA+Pg0KPiA+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4+IGluZGV4IGNjNmFiYTM1M2Mx
MS4uZWI4ZjY4MDYxNjZjIDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMNCj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jDQo+ID4+IEBAIC0xOTU4LDE1ICsxOTU4LDM3IEBAIHN0YXRpYyBpbnQgZHNj
X2NvbXB1dGVfbGlua19jb25maWcoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4gPj4g
IAkJZm9yIChsYW5lX2NvdW50ID0gbGltaXRzLT5taW5fbGFuZV9jb3VudDsNCj4gPj4gIAkJICAg
ICBsYW5lX2NvdW50IDw9IGxpbWl0cy0+bWF4X2xhbmVfY291bnQ7DQo+ID4+ICAJCSAgICAgbGFu
ZV9jb3VudCA8PD0gMSkgew0KPiA+PiAtCQkJaWYgKCFpc19id19zdWZmaWNpZW50X2Zvcl9kc2Nf
Y29uZmlnKGRzY19icHBfeDE2LA0KPiBsaW5rX3JhdGUsDQo+ID4+IC0JCQkJCQkJICAgICBsYW5l
X2NvdW50LA0KPiBhZGp1c3RlZF9tb2RlLT5jbG9jaywNCj4gPj4gLQkJCQkJCQkgICAgIHBpcGVf
Y29uZmlnLQ0KPiA+b3V0cHV0X2Zvcm1hdCwNCj4gPj4gLQkJCQkJCQkgICAgIHRpbWVzbG90cykp
DQo+ID4+IC0JCQkJY29udGludWU7DQo+ID4+DQo+ID4+ICsJCQkvKg0KPiA+PiArCQkJICogRklY
TUU6IGludGVsX2RwX210cF90dV9jb21wdXRlX2NvbmZpZygpDQo+IHJlcXVpcmVzDQo+ID4+ICsJ
CQkgKiAtPmxhbmVfY291bnQgYW5kIC0+cG9ydF9jbG9jayBzZXQgYmVmb3JlIHdlIGtub3cNCj4g
Pj4gKwkJCSAqIHRoZXknbGwgd29yay4gSWYgd2UgZW5kIHVwIGZhaWxpbmcgYWx0b2dldGhlciwN
Cj4gPj4gKwkJCSAqIHRoZXknbGwgcmVtYWluIGluIGNydGMgc3RhdGUuIFRoaXMgc2hvdWxkbid0
IG1hdHRlciwNCj4gPj4gKwkJCSAqIGFzIHdlJ2QgdGhlbiBiYWlsIG91dCBmcm9tIGNvbXB1dGUg
Y29uZmlnLCBidXQgaXQncw0KPiA+PiArCQkJICoganVzdCB1Z2x5Lg0KPiA+PiArCQkJICovDQo+
ID4+ICAJCQlwaXBlX2NvbmZpZy0+bGFuZV9jb3VudCA9IGxhbmVfY291bnQ7DQo+ID4+ICAJCQlw
aXBlX2NvbmZpZy0+cG9ydF9jbG9jayA9IGxpbmtfcmF0ZTsNCj4gPj4NCj4gPj4gKwkJCWlmIChk
cm1fZHBfaXNfdWhicl9yYXRlKGxpbmtfcmF0ZSkpIHsNCj4gPj4gKwkJCQlpbnQgcmV0Ow0KPiA+
PiArDQo+ID4+ICsJCQkJcmV0ID0NCj4gaW50ZWxfZHBfbXRwX3R1X2NvbXB1dGVfY29uZmlnKGlu
dGVsX2RwLA0KPiA+PiArDQo+IHBpcGVfY29uZmlnLA0KPiA+PiArCQkJCQkJCQkgICAgIGNvbm5f
c3RhdGUsDQo+ID4+ICsNCj4gZHNjX2JwcF94MTYsDQo+ID4+ICsNCj4gZHNjX2JwcF94MTYsDQo+
ID4+ICsJCQkJCQkJCSAgICAgMCwgdHJ1ZSk7DQo+ID4+ICsJCQkJaWYgKHJldCkNCj4gPj4gKwkJ
CQkJY29udGludWU7DQo+ID4+ICsJCQl9IGVsc2Ugew0KPiA+PiArCQkJCWlmDQo+ICghaXNfYndf
c3VmZmljaWVudF9mb3JfZHNjX2NvbmZpZyhkc2NfYnBwX3gxNiwgbGlua19yYXRlLA0KPiA+PiAr
CQkJCQkJCQkgICAgIGxhbmVfY291bnQsDQo+IGFkanVzdGVkX21vZGUtPmNsb2NrLA0KPiA+PiAr
DQo+IHBpcGVfY29uZmlnLT5vdXRwdXRfZm9ybWF0LA0KPiA+PiArCQkJCQkJCQkgICAgIHRpbWVz
bG90cykpDQo+ID4+ICsJCQkJCWNvbnRpbnVlOw0KPiA+PiArCQkJfQ0KPiA+PiArDQo+ID4+ICAJ
CQlyZXR1cm4gMDsNCj4gPj4gIAkJfQ0KPiA+PiAgCX0NCj4gPj4gQEAgLTI0OTMsOSArMjUxNSw2
IEBAIGludGVsX2RwX2NvbXB1dGVfY29uZmlnX2xpbWl0cyhzdHJ1Y3QgaW50ZWxfZHANCj4gKmlu
dGVsX2RwLA0KPiA+PiAgCWxpbWl0cy0+bWluX3JhdGUgPSBpbnRlbF9kcF9taW5fbGlua19yYXRl
KGludGVsX2RwKTsNCj4gPj4gIAlsaW1pdHMtPm1heF9yYXRlID0gaW50ZWxfZHBfbWF4X2xpbmtf
cmF0ZShpbnRlbF9kcCk7DQo+ID4+DQo+ID4+IC0JLyogRklYTUUgMTI4Yi8xMzJiIFNTVCtEU0Mg
c3VwcG9ydCBtaXNzaW5nICovDQo+ID4+IC0JaWYgKCFpc19tc3QgJiYgZHNjKQ0KPiA+PiAtCQls
aW1pdHMtPm1heF9yYXRlID0gbWluKGxpbWl0cy0+bWF4X3JhdGUsIDgxMDAwMCk7DQo+ID4+ICAJ
bGltaXRzLT5taW5fcmF0ZSA9IG1pbihsaW1pdHMtPm1pbl9yYXRlLCBsaW1pdHMtPm1heF9yYXRl
KTsNCj4gPj4NCj4gPj4gIAlsaW1pdHMtPm1pbl9sYW5lX2NvdW50ID0gaW50ZWxfZHBfbWluX2xh
bmVfY291bnQoaW50ZWxfZHApOw0KPiA+PiAtLQ0KPiA+PiAyLjM5LjUNCj4gPj4NCj4gDQo+IC0t
DQo+IEphbmkgTmlrdWxhLCBJbnRlbA0K
