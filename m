Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F49F9ABFD6
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 09:10:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABA3310E75F;
	Wed, 23 Oct 2024 07:10:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TL9XldKE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8C5510E75E;
 Wed, 23 Oct 2024 07:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729667420; x=1761203420;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rqeNG53z/W/LRqlZz41s5IWSSiAollsA963qAy1BuNs=;
 b=TL9XldKEDcKYe+iXTzc7bfv4c0geGYjayBV7wtnLCeqVsx94odlWAH/s
 HeHOFMCfS+8VoAumI3/dhknipuvuqOTrZzzfp6SdzMkpQ7bTz2SMFRgrm
 ILQWimDJCMk+ehunvECMj5AOMNOlpY7j7aajp2mkaIqZO42VYcZziKUdq
 NTVuOMTL0X9jg2/ko10dzNJjYvHv/jQAeNjHUPAP5+WANNfuUQ55nC5ys
 l6hOj3O1XMMeYgNNV+BHsgsjMMZHYAYgeAFaiZqPTNXM8yyeEMR/q288n
 8Zb/LuSztGCiDZLC6vEmdhz8drZqUrUsA8qTMXLigzddy2NzLw/C3inZn w==;
X-CSE-ConnectionGUID: rhEQp+O8QaG6idsWZG4Fpw==
X-CSE-MsgGUID: EhYQ8BTcSjuyFFdjXPEMlg==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="16857444"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="16857444"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 00:10:19 -0700
X-CSE-ConnectionGUID: J/iifQvDTnKAcg8TPyrQPQ==
X-CSE-MsgGUID: ZTRNo8rNQuy7ogll9ns7OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="80301633"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 00:10:18 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 00:10:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 00:10:17 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 00:10:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LdvugU7RfD2/vCO3MC9560f/hzD+eRid+jPgNGmHZfFYHdItSUkC+kzouTIKnmYIqYZudvi9WUmtNl9qMa5e8YN1wEn7yxVXcybVntBIx10/wEIlsnsE5gFFvVmMdW0v9yTvV4RnMKapk3c/LcL5eRm1wVPdXwZg6P6PAoE66lXidswJuANyrVKKA0K3ofUls5bW7EbtlQtQbHR6RvbNxsmW9Rq68QNE3DSGPkOWCU86uCb8ejI/wiLDgn6SjZziSTAQBks8s5IMqVot53kyIxfFvTPesxyt4jKDSItbZyo1qUBWjBlRICmhSdFJ4DQ7l+u8u1kxDwXbTTMK5/NZEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rqeNG53z/W/LRqlZz41s5IWSSiAollsA963qAy1BuNs=;
 b=dfrWypA8cNa0DIKvry8b0/bujK2jETi+uSlwin5AxnohwNHasAg8kXKS9QK+vTYNum9bkJetCH05N/YKZq3I0s4GZs1m/n8bBg5m5LRvOmSEPBuLy2o5mdwV/bkiFa293NC7XP54wwDVIkR4hCSDTlmUV2zMVUj0na+Hi9gUZMyZrTmLnny8ies6nsKdrbDWrL7vtK+iT/gTjcLVM3sCyo3TyNAooYgmpvY49tz4xo+BiRV7IFlv0iN4W/S5Cq047F+Om9dP5GVHQX3TXJov0mE9/PuFrT6/Uvg18/6ExzD5JLoQ7sytyyDv8reZB7XXDDbtcFu1hyAupHnvCtWF/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 by PH7PR11MB8275.namprd11.prod.outlook.com (2603:10b6:510:1ae::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17; Wed, 23 Oct
 2024 07:10:14 +0000
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::fd8d:bca9:3486:7762]) by SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::fd8d:bca9:3486:7762%6]) with mapi id 15.20.8069.027; Wed, 23 Oct 2024
 07:10:14 +0000
From: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Piecielska, Katarzyna" <katarzyna.piecielska@intel.com>
Subject: RE: [PATCH i-g-t] xe: Add test to check pci memory barrier capability
Thread-Topic: [PATCH i-g-t] xe: Add test to check pci memory barrier capability
Thread-Index: AQHbGjECOJWxtmbwRkyv3pP0YvixrrJ+rW6AgBVSTDA=
Date: Wed, 23 Oct 2024 07:10:14 +0000
Message-ID: <SJ1PR11MB620409C2426993C63CD18E03814D2@SJ1PR11MB6204.namprd11.prod.outlook.com>
References: <20241009095608.663743-1-tejas.upadhyay@intel.com>
 <20241009173017.z4n4zgqexal5vr3j@kamilkon-desk.igk.intel.com>
In-Reply-To: <20241009173017.z4n4zgqexal5vr3j@kamilkon-desk.igk.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6204:EE_|PH7PR11MB8275:EE_
x-ms-office365-filtering-correlation-id: 27f71ea2-bd19-471a-adb9-08dcf331bdbb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aDZEMW5jYjFYK3VDNFBMOFVnYlJxaks2VFgrUkNWUUhhVWpkeFFSQkloZVkx?=
 =?utf-8?B?cDNna1FDUm5JZEdjbDhJRmwvSHBSMk9oSTM4L2treUFGNGx0RFM3bXZ0a0dW?=
 =?utf-8?B?bWFmQzlZaHhkL3RGZHRsWEpCYmU1RHRwbS9LdHVsTVdTdHQ0NlY4OVBPSXpv?=
 =?utf-8?B?Z0RycUhYSFo0NzZ2WjR0Tkxoa0ZIOFI2dk01dzFnYmRwa0dSREw0ZTF1NDhF?=
 =?utf-8?B?dW9QQmozZ2pEcWZyNCs0NkYvR2grY3hQajI3NlYzNFZUd29hNUEycTVzeURG?=
 =?utf-8?B?Z3hlaWF2YWhXMGowNHltOHpIalVrUUlrMy8xRFZuUXVrQWp2QzJ4YXZjUHVJ?=
 =?utf-8?B?UlhESUJraVUwcEc5Z0k0blYvdHVoZXM4MGRRSDUxSWlKSkZpYzF0dzU4a3JQ?=
 =?utf-8?B?UU5LVHIrSkxiWkwveUxScnlxT29tZm5USXEvdFZWU2x0SGpRV0J6TmRTMmlP?=
 =?utf-8?B?eG1GY0RSakJ3UEZYdnBuMVVXMUZhQkszamRzRmxlV3J3QlA1Y2hObnZKa2xa?=
 =?utf-8?B?UHh5TXpnV3lDQjgxRGpJbGUxZUJxZ21YNVJycDhiSmlKNUxLc1crVm5KTG9H?=
 =?utf-8?B?RWJPNDBlUDltVkFOWjdTMlZlYjNSeU53Vk5KU2NScitQa1V2Zk5zMGUwZFhR?=
 =?utf-8?B?djg5Y2pxYXNhRFBxdHZhSkhjM1hEZWRubzB5R2RnWEp6L3FiS0ppZWk2Yk5H?=
 =?utf-8?B?Z2Y3ZXdQVEd1MzVGNEZmdWVjYWkyYkgrZ0g1UEF6WmdPT0hxaFZPTktCYlBq?=
 =?utf-8?B?a2NjQWp6MGIvZWpFSVJKWmdZMVc5RVMwZkhVdW51VVBrNEw1Wm8yTU1pcitq?=
 =?utf-8?B?YXVqSFdDUGRLT0NzQXVkb2lQci9US3FienpscjBGcHIyVVpZMXkzY3MyN2Q0?=
 =?utf-8?B?SnoxeUNzWWl5djl4ZEdwbE9DaGVPUU9GaU9ZZ1c3YU5TdVQ4L1dTQVpuZU4r?=
 =?utf-8?B?L2FWZHYybzVwOExuVWgrV0IvbG51Y2xSc0F6cmNMQkw4RXFVRFhGbXV1eHY1?=
 =?utf-8?B?eVB0ZlY0cXlWaElRcVhrZWNtdXFWYWYxd2YyTjUrRnJyNmIwQi9jRFZOV2Jq?=
 =?utf-8?B?R3c4ZW1IRWpiR0t3UTVtOEpBeVhsRC8zZFBkU1FhVG8xdHVvUXFPbHBOVDMx?=
 =?utf-8?B?bDhmOHc0endtVGt1RXdodHZadG5MVHhWZkg1TGlNdjU4Y0FLRnd6VGM0Z0hR?=
 =?utf-8?B?S3BrMEVjM1dmdHZYY2FwUTdTKys2M1Z4SHEvQzlkREZnV2tqbUhWOHVLZUJo?=
 =?utf-8?B?Z1VRWmFNVnZYRDRTVlNwaHZ2RUdnWkN6Zy9KcUtVR1V2TXUrY3lHRkppNWlm?=
 =?utf-8?B?LzNUK1hqVi95WG56b0NiWWhPNVkrN1hmTDRxTmxZck9TK2VHbUZRVUJQL3dh?=
 =?utf-8?B?aSt1ZElQbHJRTFNNTit5Rng5eUk0QW1VM25RWEROZ3A2ejRJTEp5eWFuZ3BE?=
 =?utf-8?B?TDJXMWVRVHZJOTU2Qk5PVUFlNUw5eFNFUnBRT3BCaUtXQzNvSHV3bW1Td3F4?=
 =?utf-8?B?Q3VDRksxTmp1TlZQczY3U1ZlKzBEbzlIVUpkR2p1a1lFVnQzQlZXcDYyTnhn?=
 =?utf-8?B?L3FYVEJuOElEN0ZoaFpzV3RDUkJaQTlTM1hlcEtwM2JWTThsQzJYWVpZb0o2?=
 =?utf-8?B?MGhQeDNKaUVMcHZZUnUxdFZRQXNNd3dUeE03TXhRajBmRUIrL3YwbGNIQzZt?=
 =?utf-8?B?NFlqR1FWa1V2dVlPTm04Uyt5RVhVczVucDIxd3h0eXpJK2czZHhSUXQ2UWM5?=
 =?utf-8?B?MTJkTUxKa0xKa05IcDdDQmdITldJZkpMZkdiVUJTb1NJejhXRWJPMnNDUWRW?=
 =?utf-8?Q?G8ND7qfKFXfbtyQP9H0eAeZg4lRaf+Cv0/EYc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N3BPdXJ5NzIvS1FoZmNNb29yVmw0anZOa21UZjlGbW9PUXdzNWROUjRrTzZv?=
 =?utf-8?B?MWNWSk1lblFrTHlRTWp0SEVjL01mMGlEZkpVeU95TTB1SUJXNHBCbmdnY2s1?=
 =?utf-8?B?RHo1SXNKK3gwT1lrZ3RNdllWaFpHZ0I3dHRCN1UxZ1BsWmY5Z1JYUUFDVmQy?=
 =?utf-8?B?bk1RcnozbDkvSm5TbHpZdkFoN3lWdGN0eTUzSjN3V2x4Wm8wR2VJUloyVGw3?=
 =?utf-8?B?RVdPOVlTZUh1YTVrWmErRmtBVFhUVXdCS0dFcSs4RFgrQUdIRHBRcDI5Qm85?=
 =?utf-8?B?SUpGa2JBUUhTNmFoTnhQSDlVc2hrYnh3cEMrZnYwc3RMVlVVR2JMUWpyOXRY?=
 =?utf-8?B?VWtxM3NPK0FrTU9FTXRBVDBDR1UxL2Q3bGUxT1dMaFYzeXJFSUdKN0pSN1Jj?=
 =?utf-8?B?cXlyV09ZYnJQWjNaSFJweHR6M1VYekhlODd4ZGt0NnYwU25zMWZGREVTZlZp?=
 =?utf-8?B?dnRLTDlKT0VKTmhxdHpMQk1wdlBXaUlkVGYxUkJpKzZwU1dtNGxlQkkzaThl?=
 =?utf-8?B?Uzc0RnZuSkpmK2pDVGxXU3pQaDZ4QkZUTzFvSlZseHgyWi93Q2N3MjFaT3ox?=
 =?utf-8?B?SFdCeXJTbENhVjM5VGhlMzhnOHNXM3V2QkRRbW93ZkxKS2srdVRtOFg0TTFI?=
 =?utf-8?B?V2cxbU9FUGFZdUM0NTZyeWhibGIxM2c2Z1lrVHdwVVNQOGxRYkE2RjZ5eWZm?=
 =?utf-8?B?MU9QdWxqQWwrd0ZxOEcyWTMrZFJQWmRXRkhFNGdCNnZtYjZCSEtqTjVsY3ZP?=
 =?utf-8?B?cndzelUxdE1HK0tsUVJmWndQK1BQM3BJRlpxVmNwWEloK2VDY0lFVWUyVTRv?=
 =?utf-8?B?Tlg3MlZpQ05Ba2ljSzNydEZBbGwzVHhBWEpGSmZRdStJWlJoQlhaOXc0T2hu?=
 =?utf-8?B?ZnhaYll0dUQ5V1licGlHYk0yZmY5dXp3Z2s3UmwwNXVVOEFnYWRRd3lTSE9w?=
 =?utf-8?B?OHlSUnR5V3F2bUUyRlM3NGJ6ek9GSm0rYnhpdVlQdlRkazIveWxGK0E1Z1Rr?=
 =?utf-8?B?T0Zza3hSMFU4V1lWSEE4aXVsTk00WkxZY3F5SGdXOWh0RnF6TXVhMm92ckFX?=
 =?utf-8?B?Q3FIa01EZHJQRDQyNlhBWVQyQ1FUdE81WnE2SkJ3aC9IVTV6ZUw1dGU5THBp?=
 =?utf-8?B?Vk01NHhFbVBlSDJVblRGSDBBSjZjcXkxd01KaFFzTCtkNWNGdEZsalZhSm5I?=
 =?utf-8?B?TytXNGxib2lFNHJobDVLNmc3MTRGYisvaVlPOU1nV2hlbkxHZXBOdnJlQWhC?=
 =?utf-8?B?dXE2cll3dXBWaDNpa3J6ajl5M1dJZ0l5TGJsNVhvWDg0RmUrbCs2TDBrc0pW?=
 =?utf-8?B?M3FzMXZqYlN2WGxySnhuYjN0cktvVytjejZvMGhBSGttMC9zb29CVW5QOVlP?=
 =?utf-8?B?aWF5cGlHQVU2b29Pc2xicXpNSlp4SDN2MUdDUUpWNlJabnN4ejQrSmQrT0lv?=
 =?utf-8?B?Njg5TGxZVGN4V3dyeGR4SlJmU3dTdmNHZVJHZDN3Rmp6VFd1b25Wb29rc2xR?=
 =?utf-8?B?dG9PaGVKdDVSZHZxNUovRFhlK2N6NUszU0RYRmNRR0tYNlAwR2JndmFlbFpG?=
 =?utf-8?B?ZXNNUDk2M1hoT3lYZi8zOFZtaEtIMHdveXJlYnBpZXJ4cXpEZU9UbEJXUVVO?=
 =?utf-8?B?UXhTdUd0NGM3QnVXME16OWNlQTk5SjFqaTBOY1hqZzZkdUNZSkw1TkxqYmxY?=
 =?utf-8?B?NzdkMDdLQ2RXMDFVcHVyRVNCdC9DcS9GYzVacmxLMUkvZGtLQ3ZvOFlBWW5z?=
 =?utf-8?B?RjZQK2tCRXBzMlVzTEVOTzBhd3p5YStQMTU4SEVVK3BRS2g3bTR3cEpoaW5O?=
 =?utf-8?B?Z094cFlVekVKdHlJNmcwc3AweEFMaVFaek5RQnRURWlSRVJFYVFNUEt3YWpD?=
 =?utf-8?B?N3MzeGVPYjZyYXJpei9HazZTMVR3SFk4YUlVL2RCZmV0TGZTbTZkTW03Qitk?=
 =?utf-8?B?R1h6aUFmTkQvTmtBRithWk0yVisxRTQyUzlnQjVhM1EvaG45eklNRGhCZ2F2?=
 =?utf-8?B?cm95RTJobnpJa0VUL0laOE5nV2gxaERUME9FekV5eVA2TVpyZVdQVlZDVk5o?=
 =?utf-8?B?azNBSk5hYnk5VU93a3pwOXBqZDFBTXg3UGdzbWFjeUdhU0JvQzFaNklHVGxX?=
 =?utf-8?Q?hxSRuWXAPT8NifTm+KaXUMoWZ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27f71ea2-bd19-471a-adb9-08dcf331bdbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2024 07:10:14.1795 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VEyHbmPt+yhS+mj6+nIdK7nzTDfe8nsBkQNHHAL2GFZoAelUY734Hd4NHrhMRpHCHHHq6IKi22ces1TbBuQuyhOh7ld7z29JeSAWbus20BM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8275
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2FtaWwgS29uaWVjem55
IDxrYW1pbC5rb25pZWN6bnlAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE9j
dG9iZXIgOSwgMjAyNCAxMTowMCBQTQ0KPiBUbzogaWd0LWRldkBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gQ2M6IFVwYWRoeWF5LCBUZWphcyA8dGVqYXMudXBhZGh5YXlAaW50ZWwuY29tPjsgaW50
ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFBpZWNpZWxza2EsIEthdGFyenluYQ0K
PiA8a2F0YXJ6eW5hLnBpZWNpZWxza2FAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENI
IGktZy10XSB4ZTogQWRkIHRlc3QgdG8gY2hlY2sgcGNpIG1lbW9yeSBiYXJyaWVyIGNhcGFiaWxp
dHkNCj4gDQo+IEhpIFRlamFzLA0KPiBPbiAyMDI0LTEwLTA5IGF0IDE1OjI2OjA4ICswNTMwLCBU
ZWphcyBVcGFkaHlheSB3cm90ZToNCj4gDQo+IG9uZSBtb3JlIG5pdCwgaW1obyBhIHBhdGNoIHdp
dGggbmV3IHRlc3Qgc2hvdWxkIGhhdmUgaW4gc3ViamVjdA0KPiANCj4gdGVzdHMvaW50ZWw6IEFk
ZCB4ZV9wY2lfbWVtYmFycmllciB0ZXN0DQo+IA0KPiBBbHNvIHNlZSBuaXQgYWJvdXQgYSB0ZXN0
IG5hbWUuDQoNClN1cmUgDQoNCj4gDQo+ID4gV2Ugd2FudCB0byBtYWtlIHN1cmUgdGhhdCBkaXJl
Y3QgbW1hcCBtYXBwaW5nIG9mIHBoeXNpY2FsIHBhZ2UgYXQNCj4gPiBkb29yYmVsbCBzcGFjZSBh
bmQgd2hvbGUgcGFnZSBpcyBhY2Nlc3NpYmxlIGluIG9yZGVyIHRvIHVzZSBwY2kgbWVtb3J5DQo+
ID4gYmFycmllciBlZmZlY3QgZWZmZWN0aXZlbHkuDQo+ID4NCj4gPiBUaGlzIGlzIGJhc2ljIHBj
aSBtZW1vcnkgYmFycmllciB0ZXN0IHRvIHNob3djYXNlIHhlIGRyaXZlciBzdXBwb3J0DQo+ID4g
Zm9yIGZlYXR1cmUuIEluIGZvbGxvdyB1cCBwYXRjaGVzIHdlIHdpbGwgaGF2ZSBtb3JlIG9mIGNv
cm5lciBhbmQNCj4gPiBuZWdhdGl2ZSB0ZXN0cyBhZGRlZCBsYXRlci4NCj4gPg0KPiA+IFNpZ25l
ZC1vZmYtYnk6IFRlamFzIFVwYWRoeWF5IDx0ZWphcy51cGFkaHlheUBpbnRlbC5jb20+DQo+ID4g
LS0tDQo+ID4gIGluY2x1ZGUvZHJtLXVhcGkveGVfZHJtLmggICAgICAgfCAgMyArKw0KPiA+ICB0
ZXN0cy9pbnRlbC94ZV9wY2lfbWVtYmFycmllci5jIHwgNzcNCj4gKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrDQo+ID4gIHRlc3RzL21lc29uLmJ1aWxkICAgICAgICAgICAgICAgfCAg
MSArDQo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgODEgaW5zZXJ0aW9ucygrKQ0KPiA+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgdGVzdHMvaW50ZWwveGVfcGNpX21lbWJhcnJpZXIuYw0KPiA+DQo+ID4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvZHJtLXVhcGkveGVfZHJtLmggYi9pbmNsdWRlL2RybS11YXBpL3hl
X2RybS5oDQo+ID4gaW5kZXggZjBhNDUwZGI5Li44NjZkYzgwNjAgMTAwNjQ0DQo+ID4gLS0tIGEv
aW5jbHVkZS9kcm0tdWFwaS94ZV9kcm0uaA0KPiA+ICsrKyBiL2luY2x1ZGUvZHJtLXVhcGkveGVf
ZHJtLmgNCj4gPiBAQCAtODIzLDYgKzgyMyw5IEBAIHN0cnVjdCBkcm1feGVfZ2VtX21tYXBfb2Zm
c2V0IHsNCj4gPiAgCS8qKiBAb2Zmc2V0OiBUaGUgZmFrZSBvZmZzZXQgdG8gdXNlIGZvciBzdWJz
ZXF1ZW50IG1tYXAgY2FsbCAqLw0KPiA+ICAJX191NjQgb2Zmc2V0Ow0KPiA+DQo+ID4gKwkvKiBT
cGVjaWZpYyBNTUFQIG9mZnNldCBmb3IgUENJIG1lbW9yeSBiYXJyaWVyICovICNkZWZpbmUNCj4g
PiArRFJNX1hFX1BDSV9CQVJSSUVSX01NQVBfT0ZGU0VUICgweDUwIDw8IFBBR0VfU0hJRlQpDQo+
ID4gKw0KPiA+ICAJLyoqIEByZXNlcnZlZDogUmVzZXJ2ZWQgKi8NCj4gPiAgCV9fdTY0IHJlc2Vy
dmVkWzJdOw0KPiA+ICB9Ow0KPiA+IGRpZmYgLS1naXQgYS90ZXN0cy9pbnRlbC94ZV9wY2lfbWVt
YmFycmllci5jDQo+ID4gYi90ZXN0cy9pbnRlbC94ZV9wY2lfbWVtYmFycmllci5jIG5ldyBmaWxl
IG1vZGUgMTAwNjQ0IGluZGV4DQo+ID4gMDAwMDAwMDAwLi5hMjhhMDFkNGINCj4gPiAtLS0gL2Rl
di9udWxsDQo+ID4gKysrIGIvdGVzdHMvaW50ZWwveGVfcGNpX21lbWJhcnJpZXIuYw0KPiA+IEBA
IC0wLDAgKzEsNzcgQEANCj4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVA0KPiA+
ICsvKg0KPiA+ICsgKiBDb3B5cmlnaHQoYykgMjAyNCBJbnRlbCBDb3Jwb3JhdGlvbi4gQWxsIHJp
Z2h0cyByZXNlcnZlZC4NCj4gPiArICovDQo+ID4gKw0KPiA+ICsjaW5jbHVkZSAieGVfZHJtLmgi
DQo+ID4gKyNpbmNsdWRlICJpZ3QuaCINCj4gPiArDQo+ID4gKy8qKg0KPiA+ICsgKiBURVNUOiBU
ZXN0IGlmIHRoZSBkcml2ZXIgaXMgY2FwYWJsZSBvZiBwdXR0aW5nIHBjaSBtZW1vcnkgYmFycmll
cg0KPiA+ICt1c2luZyBtbWFwDQo+ID4gKyAqIENhdGVnb3J5OiBDb3JlDQo+ID4gKyAqIE1lZ2Eg
ZmVhdHVyZTogR2VuZXJhbCBDb3JlIGZlYXR1cmVzDQo+ID4gKyAqIFN1Yi1jYXRlZ29yeTogTWVt
b3J5IG1hbmFnZW1lbnQgdGVzdHMNCj4gPiArICogRnVuY3Rpb25hbGl0eTogbW1hcCB3aXRoIHBy
ZS1kZWZpbmVkIG9mZnNldA0KPiAtLS0tLS1eXl5eXl5eXl5eXl5eDQo+IE5vdCBzdXJlIGFib3V0
IHRoaXMsICtjYyBLYXRhcnp5bmENCj4gQ2M6IEthdGFyenluYSBQaWVjaWVsc2thIDxrYXRhcnp5
bmEucGllY2llbHNrYUBpbnRlbC5jb20+DQo+IA0KPiA+ICsgKi8NCj4gPiArDQo+ID4gK0lHVF9U
RVNUX0RFU0NSSVBUSU9OKCJCYXNpYyBNTUFQIHRlc3RzIHBjaSBtZW1vcnkgYmFycmllciBlZmZl
Y3Qgd2l0aA0KPiA+ICtzcGVjaWFsIG9mZnNldCIpOyAjZGVmaW5lIFBBR0VfU0hJRlQgMTIgI2Rl
ZmluZSBQQUdFX1NJWkUgNDA5Ng0KPiA+ICsNCj4gPiArLyoqDQo+ID4gKyAqIFNVQlRFU1Q6IHBj
aS1tZW1iYXJyaWVyLWJhc2ljDQo+IA0KPiBXaHkgbm90IGp1c3QgYmFzaWM/DQoNCkZhaXIgDQoN
Cj4gDQo+ID4gKyAqIERlc2NyaXB0aW9uOiBjcmVhdGUgcGNpIG1lbW9yeSBiYXJyaWVyIHdpdGgg
d3JpdGUgb24gZGVmaW5lZCBtbWFwDQo+IG9mZnNldC4NCj4gPiArICogVGVzdCBjYXRlZ29yeTog
ZnVuY3Rpb25hbGl0eSB0ZXN0DQo+ID4gKyAqDQo+ID4gKyAqLw0KPiA+ICsNCj4gPiArc3RhdGlj
IHZvaWQgcGNpX21lbWJhcnJpZXIoaW50IHhlKQ0KPiA+ICt7DQo+ID4gKwl1aW50NjRfdCBmbGFn
cyA9IE1BUF9TSEFSRUQ7DQo+ID4gKwl1aW50NjRfdCBvZmZzZXQgPSBEUk1fWEVfUENJX0JBUlJJ
RVJfTU1BUF9PRkZTRVQ7DQo+ID4gKwl1bnNpZ25lZCBpbnQgcHJvdCA9IFBST1RfV1JJVEU7DQo+
ID4gKwl1aW50MzJfdCAqcHRyOw0KPiA+ICsJdWludDY0X3Qgc2l6ZSA9IFBBR0VfU0laRTsNCj4g
PiArCXN0cnVjdCB0aW1lc3BlYyB0djsNCj4gPiArDQo+ID4gKwlwdHIgPSBtbWFwKE5VTEwsIHNp
emUsIHByb3QsIGZsYWdzLCB4ZSwgb2Zmc2V0KTsNCj4gPiArCWlndF9hc3NlcnQocHRyICE9IE1B
UF9GQUlMRUQpOw0KPiA+ICsNCj4gPiArCS8qIENoZWNrIHdob2xlIHBhZ2UgZm9yIGFueSBlcnJv
cnMsIGFsc28gY2hlY2sgYXMNCj4gPiArCSAqIHdlIHNob3VsZCBub3QgcmVhZCB3cml0dGVuIHZh
bHVlcyBiYWNrDQo+ID4gKwkgKi8NCj4gPiArCWZvciAoaW50IGkgPSAwOyBpIDwgc2l6ZSAvIHNp
emVvZigqcHRyKTsgaSsrKSB7DQo+ID4gKwkJLyogSXQgaXMgZXhwZWN0ZWQgdW5jb25maWd1cmVk
IGRvb3JiZWxsIHNwYWNlDQo+ID4gKwkJICogd2lsbCByZXR1cm4gcmVhZCB2YWx1ZSAweGRlYWRi
ZWVmDQo+ID4gKwkJICovDQo+ID4gKwkJaWd0X2Fzc2VydF9lcV91MzIoUkVBRF9PTkNFKHB0cltp
XSksIDB4ZGVhZGJlZWYpOw0KPiA+ICsNCj4gPiArCQlpZ3RfZ2V0dGltZSgmdHYpOw0KPiA+ICsJ
CXB0cltpXSA9IGk7DQo+ID4gKwkJaWYgKFJFQURfT05DRShwdHJbaV0pID09IGkpIHsNCj4gPiAr
CQkJd2hpbGUgKFJFQURfT05DRShwdHJbaV0pID09IGkpDQo+ID4gKwkJCQk7DQo+IA0KPiBXaGF0
IGlmIHRoaXMgd2hpbGUgbmV2ZXIgYnJlYWs/DQo+IGltaG8gdXNlIGlndF91bnRpbF90aW1lb3V0
IGFyb3VuZCAnZm9yJyBsb29wLg0KDQpWYWx1ZSBzaG91bGQgbmV2ZXIgYmUgaG9sZCBoZXJlIGFz
IGl0IGlzIGV4cGVjdGVkIHRoYXQgYWxsIHdyaXRlcyBoZXJlIHdpbGwgYmUgZHJvcHBlZCBpbW1l
ZGlhdGVseS4gU28gdGhpcyBkZWJ1ZyBiZWxvdyB3aWxsIG5ldmVyIGJlIGV4ZWN1dGVkIGFuZCB3
aGlsZSB3aWxsIGJyZWFrIGltbWVkaWF0ZWx5LiBJbiB0ZXN0aW5nIG5vdCBzZWVuIGV2ZW4gb25j
ZSwgYnV0IGp1c3Qga2VwdCBpbiBjYXNlIHdlIGhpdCBvbiBhbnkgY29taW5nIHBsYXRmb3JtIG9y
IGluIGFueSBjb3JuZXIgY2FzZS4gU28gd2Ugc2hvdWxkIGJlIGZpbmUgYXMgaXQgaXMgbm93Lg0K
DQo+IA0KPiA+ICsJCQlpZ3RfaW5mbygiZmQ6JWQgdmFsdWUgcmV0YWluZWQgZm9yICUiUFJJZDY0
Im5zDQo+IHBvczolZFxuIiwNCj4gPiArCQkJCSB4ZSwgaWd0X25zZWNfZWxhcHNlZCgmdHYpLCBp
KTsNCj4gDQo+IGlndF9kZWJ1ZyBpcyBwcmVmZXJyZWQgdW5sZXNzIHRoaXMgcHJpbnQgc2hvdWxk
IG5ldmVyIGhhcHBlbiwgYnV0IGV2ZW4gdGhlbg0KPiBwbGVhc2UgbGltaXQgbnVtYmVyIG9mIHBy
aW50cy4NCj4gDQo+ID4gKwkJfQ0KPiA+ICsJCWlndF9hc3NlcnRfbmVxKFJFQURfT05DRShwdHJb
aV0pLCBpKTsNCj4gPiArCX0NCj4gPiArDQo+ID4gKwltdW5tYXAocHRyLCBzaXplKTsNCj4gPiAr
fQ0KPiA+ICsNCj4gPiAraWd0X21haW4NCj4gPiArew0KPiA+ICsJaW50IHhlOw0KPiA+ICsNCj4g
PiArCWlndF9maXh0dXJlIHsNCj4gPiArCQl4ZSA9IGRybV9vcGVuX2RyaXZlcihEUklWRVJfWEUp
Ow0KPiA+ICsJfQ0KPiA+ICsNCj4gPiArCWlndF9zdWJ0ZXN0X2YoInBjaS1tZW1iYXJyaWVyLWJh
c2ljIikNCj4gPiArCQlwY2lfbWVtYmFycmllcih4ZSk7DQo+ID4gKw0KPiA+ICsJaWd0X2ZpeHR1
cmUgew0KPiA+ICsJCWNsb3NlKHhlKTsNCj4gDQo+IGRybV9jbG9zZV9kcml2ZXIoKQ0KDQpXaWxs
IGNoYW5nZSwgdGhhbmtzLg0KDQpUZWphcw0KPiANCj4gUmVnYXJkcywNCj4gS2FtaWwNCj4gDQo+
IA0KPiA+ICsJfQ0KPiA+ICt9DQo+ID4gZGlmZiAtLWdpdCBhL3Rlc3RzL21lc29uLmJ1aWxkIGIv
dGVzdHMvbWVzb24uYnVpbGQgaW5kZXgNCj4gPiBlNWQ4ODUyZjMuLjMxMGVmMGUwZCAxMDA2NDQN
Cj4gPiAtLS0gYS90ZXN0cy9tZXNvbi5idWlsZA0KPiA+ICsrKyBiL3Rlc3RzL21lc29uLmJ1aWxk
DQo+ID4gQEAgLTMwNCw2ICszMDQsNyBAQCBpbnRlbF94ZV9wcm9ncyA9IFsNCj4gPiAgCSd4ZV9u
b2V4ZWNfcGluZ19wb25nJywNCj4gPiAgCSd4ZV9vYScsDQo+ID4gIAkneGVfcGF0JywNCj4gPiAr
ICAgICAgICAneGVfcGNpX21lbWJhcnJpZXInLA0KPiA+ICAJJ3hlX3BlZXIycGVlcicsDQo+ID4g
IAkneGVfcG0nLA0KPiA+ICAJJ3hlX3BtX3Jlc2lkZW5jeScsDQo+ID4gLS0NCj4gPiAyLjM0LjEN
Cj4gPg0K
