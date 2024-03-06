Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C35D87363D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 13:26:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4597113115;
	Wed,  6 Mar 2024 12:26:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sfk59F04";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A904A113115
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 12:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709727989; x=1741263989;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1rMO2j0MdrlB+J0QOkYh7KsDQp7V5MPSYxlDgYhcau0=;
 b=Sfk59F04x6idwxizIWiGwGZzy8Oq4/lM4Jgl9jV1qWOy+gpN+AEh+ztN
 PeABLaHG+by9WF/LoNULlzWqMAvClukK32pmyCTYxjJdXLSHqfK0L+Vn5
 I6KrqW/HxpzD45M3AjFSPFzSEJVeYvLKh0XfWrb2LW9bes5KZw+jCZFWC
 FbH9yOJX8GbKw1xVEDLQ5wsjta6QdEUc6K5ICon6vIWhayOucpKkvEF8F
 sPnLmy5KNRs/pMbfB4q/FNI8RLQP2vv8BD5UrJ2pXPOauKQ+3zKVovU/u
 ZEl4t23346EkKda8rH8zaBAaDaMY646Tr6gsejOOlqbQ+aruW8WUf0Obp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4919697"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="4919697"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 04:26:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="32891537"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 04:26:29 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 04:26:28 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 04:26:28 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 04:26:28 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 04:26:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q2qqDEUPpQ3PSxO2QpP4/JTgrXHLPsQUldYMjppaeQQXroWrMML/C/ECxNoZnR6c8RB5fMAXmwHJ9pfNLpL2pSc1k3cs4bUg0h/5VwsSvfOjQLyuUQooQJW21+2NWHB3ppZdpZoXy4Qz+szVEjxSPSzxdZKxa15wPp4bSTX4yHyjANp+Qc6oDkamKpl/K9b7ccLrEbVLnvJLNXb8df7/C9dt5n1voovLQHSWT2uV+xnMKgqVJYOQ7zDU50/s9VnN9ZQSck2LkcHGPByBraBqX8bdje7JNJiHrvn4rKL3qjO5sI3r9nLl8pYF/OtxXqYUro21XPkK2O0sW07uAQc8XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1rMO2j0MdrlB+J0QOkYh7KsDQp7V5MPSYxlDgYhcau0=;
 b=oQsV0ub+jx5ZSNcMIIfGL03paH+NLCEuaASZYi73LtAjUI4/XNrTv63bQxK9D2ACzBArHs1EGhO3sAtuhhOIqP85ou1qg/XuK3Q0ah9p8+maSeNc4Kc4eh/fJ0frK+1HE540sU8I2FT86CC6iY2OOQr+7a4ukN0opGhBqlKwhM909VzHVsiV7rh+W95STNHcV7iWnURj36qLR4G6bg9MGCttS4eoPpON/L3ue/N3meZRWAFZz7g0unxBo/PYjFib/zQl++ioW/+HeqyNKOTxAyNAh4mmCaddW55QelF+u+CLRii8M4v6Wt62Ab3qVUP0x3LQXLZ4LRyD8lNvV3Gqeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA2PR11MB5036.namprd11.prod.outlook.com (2603:10b6:806:114::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Wed, 6 Mar
 2024 12:26:24 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7362.019; Wed, 6 Mar 2024
 12:26:24 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH 2/3] drm/i915/dsb: Fix DSB vblank waits when using VRR
Thread-Topic: [PATCH 2/3] drm/i915/dsb: Fix DSB vblank waits when using VRR
Thread-Index: AQHab3v8QMSoTs7yTUC8fDm9WwJ86rEqo8mg
Date: Wed, 6 Mar 2024 12:26:24 +0000
Message-ID: <PH7PR11MB5981989B7FD1C733A947A0C8F9212@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240306040806.21697-1-ville.syrjala@linux.intel.com>
 <20240306040806.21697-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20240306040806.21697-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA2PR11MB5036:EE_
x-ms-office365-filtering-correlation-id: 79d216e9-85ec-4474-2e2b-08dc3dd8a391
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Rl4//Qkcgz34drtbw2qr8+usrG6cDByQKgG+nXuFBWOkolwSrT4TfyXf6U1ZHiph7CLGE2Ne6P2AfTiYg0a9+9ujW10nh0eXedAsoZ8hqpqD7wd/OknKWW9gt5xlFQvcWQfzRKYOclgxB/gRyhQcIMg4BiO7fUbcWO7Afaxoox2JkhqAIor6tF0KtpdtUGd0Ba1dDpRxNOA0lZbzrWl0KmDgCqVfllubZhsxHGU1E88jig3LKe3R6Wr6RL5JfymxDV7dLCVcxIukGYHn8soqzJW25vnvVWO+8uaiKp75frcVrWDBoaaCXvabOV19fgLXWtnay2nVFX4DEvoY7PG1tEVb0YrJUF1RXU8U621gKqs+nOv1AMJ8pjm0jEWljCTQYknK9m4oXk+hDJNRBY8ULBJB+SJid/hebwZjiLe4Bz9LcBz+lRMJyZgzEHZHxrz/Qgc46HapvtFq9Rq0Ky/QusEPkg8Cd6Toy+O8rv0lt4LP4sE1VL1MxnIkPv134p2bRhepYh+blqjycn2T+F5mdpJ6VMQipH6aPgUpW+qkUC+Qi0qSZ5rcjWMfPX5I7KE9PI5GHb/CHj0Zss3b/brIeG5mFGnguopoOTiPOPLB4oOx7GBPwnGqTD0vYvsostuAXkqpamIqMWR3fpZCqTbo1MAzV0L48wnJDduCWA6eLwM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cTNRZlE3K3ZkcTdEUFNSQkdpZThVYzZpS1VOZTBtL2d6Z0lVc0VKanZyUDlj?=
 =?utf-8?B?SDhwbXB2bjZPMEZJeitWdlQwYUY0WW5vTGFHUkVuQTBiTjFBc3BNU3hubGpx?=
 =?utf-8?B?OTFEUDdrbUpzR1NNc0dlbUQ2TThWWmhwWm9KN1FRSTJyWkRBWExDbnNvWGow?=
 =?utf-8?B?VzJtRnVKSXNyZGNqcmRULzUycWRKK0N1bmpsQWh6cUJ3d0pVb3ZGRDlyVDdt?=
 =?utf-8?B?Y3dqNGlEeTdUcjVUU1lOTzF6M2wxZ1ZkTkxQOWl1aVZVaXVsYzEvbXhYM2d0?=
 =?utf-8?B?MTlmaFlJanQzNlo4YzhDMWZTNGtaeGZVSVNyT1VqdUVkN0dFWldTcFlSdCtl?=
 =?utf-8?B?YWprcEtBa3pnOFJKbjJDd0RmUCt3bDdEc0g2aHpJbFBPUUxUYXQyL29nV2VH?=
 =?utf-8?B?bndVd2NWR09DR21haisxY2lmZitQSHcyOUI1TldlU3pZWG1WeVliUVFONjVU?=
 =?utf-8?B?N0kvK3lveVd2ZmFXbSt6d3JhZ2xTYkxDd0ZISEUyMUt5RDh6a25TQUVFdXFK?=
 =?utf-8?B?ckVXWVNQa3lFZ2dHUUxoZFVMSTE3MkNqN0VqS1NsVlZMV3Azb3Q2VmtNTmFF?=
 =?utf-8?B?dVBiRG1ITjkzSTdld0NSeXpGdkhjTG5hVzlQT1FWM1UzcFNwSTI5MEN2UHNx?=
 =?utf-8?B?ay9vOTE2NDhNYnR4WGswUThtU1lnSnJ5WG5SMUlsNmNEQzhwb0tQbWFDcHRU?=
 =?utf-8?B?elVFODNWNGJVUU1UZzNIbE5EY29hR0I4M3ZPREtuc1lVOTBFMzZHOTZrSVZF?=
 =?utf-8?B?UU94Sm04SmVQdCt6M0h1M0w1b2xyZDBFSXlwenFTVzJGU3hTaU9CWFpyQlpB?=
 =?utf-8?B?SmR0SGlQVW9ZdjI0VzMzbHJJOHFrdzJReGN6SHRjcktaMFd4clhDRzVqOXVz?=
 =?utf-8?B?V050VlpmM290Y1NFenhGNURmVFVOVUdhcUxyYS9KZFg5aFNwUzF5TXpsd3R0?=
 =?utf-8?B?aC9NMzl0MXQ0UEhHVHRmSk5nVFkzWWVCUXF4Zmx1LzVFYUJrQTVRQTF3VFJy?=
 =?utf-8?B?Mm00UXVxbHRadW5qaFE4Z3RWU2NqVGxqbWxHckpReXNicDNPeWwrbzF0V0RE?=
 =?utf-8?B?VFc5aHNUWWtOQms4M2E1ZkdDcGVWMzVBbmJ2QzNLMmJtbndFbmFQa3oweWcw?=
 =?utf-8?B?SGZUd1F6OG9xWTRpaXNZRCtjLzZCZG5UdVVkRUdwYlQ1ZmNkM0xzMHR6TDZQ?=
 =?utf-8?B?NWt3djRkVG1oaSsrUGx2ZW1UR1pJaDh0bEE5bS95V0hJQzhJcnJnejQyOHBy?=
 =?utf-8?B?NGlKUXVsM1ZPOU5XTm1SeW8vNzNjVTlDa2xveVFKNVAraTZtRSt0SVA3NUlM?=
 =?utf-8?B?YWhzYjlrVFl1RGVzNHB6RTd2VGk3cm5XRlRTekxFYTJkVENxTHhpSDNzdTdM?=
 =?utf-8?B?YkF6UWpIcFp1U2dvY3pWVkcyNm9XVy9zZ0dmc2VCeFVCT3N6RUxGSkZCblhP?=
 =?utf-8?B?SjlVWk5TWjQzOFJxdHBhYjFJQU85dm90eVBaM2FPcDdQOFRYL2pRbTI5Q3Vp?=
 =?utf-8?B?YkxGUmJEZ1F6TmF4clN5NitmTGVUMks3Znk5SWlmTE1HdVkxY3BRdDdOK1ov?=
 =?utf-8?B?QTZQbDNCa3VqdGZFOGdSaGl2b0RMSFZvWTVGclh0UjRIS0xoMUN5L2E1bG55?=
 =?utf-8?B?bHM3R0J5ckIyV2grZ0ZXeEFCWGEzd09XRWRkVTlyK2hVaFNjejZKTjF6MXRv?=
 =?utf-8?B?V3MwTkI5cGY1WmVyYTkzWlUrWEtIcnlXNnl2U2dnTWMwb2RXR1RkT2ZLVDBk?=
 =?utf-8?B?RC95TUIwSWZTMWJhRkZRZ0c5WnFtQW1KcWdQdmplNTBnSkgwNjZOb1RuaHNx?=
 =?utf-8?B?bzNoenpwTUdCeDlVTlVSc0Nza1Z3TmNCUlBZUXBTVVorWDFyMXVRTUh2YmtE?=
 =?utf-8?B?SjhoQWVPZ0V6SjZ4OWV2OGVKVUlpSUFSTjFadVNFd2hWM3AwMVZJTVlaL1RJ?=
 =?utf-8?B?WWtWZFRHaFhPSW13U3NiZXExRkZ2YW9xMHJoRXpjZ1FOSVZBUmdNdDRHY1V3?=
 =?utf-8?B?cmhaSVhjYlQ2Q05YTy9kNjNTN1Yvc3ppNXAvTWlndGtoc3hYTFBnemp5Z2NU?=
 =?utf-8?B?ckE2blFsM1NZNHJMRGtKU0tMWjVpeUtYOGgrYzl3QzdKSEZ2U08zbUtWcUNh?=
 =?utf-8?Q?Cam2kRuajoy2fO9dfKQZPl3Cq?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79d216e9-85ec-4474-2e2b-08dc3dd8a391
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2024 12:26:24.6011 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2C5itBonFGF3xRkQRdHzF4+vo6wlenwYudhkAQeze0PvGTyhOInworU3m5PYe+GRQraIK9saU1XIVnLsGbnuDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5036
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTWFyY2ggNiwgMjAyNCA5OjM4IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBzdGFibGVAdmdlci5rZXJu
ZWwub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCAyLzNdIGRybS9pOTE1L2RzYjogRml4IERTQiB2Ymxh
bmsgd2FpdHMgd2hlbiB1c2luZyBWUlINCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBMb29rcyBsaWtlIHRoZSB1bmRlbGF5
ZWQgdmJsYW5rIGdldHMgc2lnbmFsbGVkIGV4YWN0bHkgd2hlbiB0aGUgYWN0aXZlIHBlcmlvZA0K
PiBlbmRzLiBUaGF0IGlzIGEgcHJvYmxlbSBmb3IgRFNCK1ZSUiB3aGVuIHdlIGFyZSBhbHJlYWR5
IGluIHZibGFuayBhbmQNCj4gZXhwZWN0IERTQiB0byBzdGFydCBleGVjdXRpbmcgYXMgc29vbiBh
cyB3ZSBzZW5kIHRoZSBwdXNoLiBJbnN0ZWFkIG9mDQo+IHN0YXJ0aW5nIHRoZSBEU0IganVzdCBr
ZWVwcyBvbiB3YWl0aW5nIGZvciB0aGUgdW5kZWxheWVkIHZibGFuayB3aGljaCB3b24ndA0KPiBz
aWduYWwgdW50aWwgdGhlIGVuZCBvZiB0aGUgbmV4dCBmcmFtZSdzIGFjdGl2ZSBwZXJpb2QsIHdo
aWNoIGlzIGZhciB0b28gbGF0ZS4NCj4gDQo+IFRoZSBlbmQgcmVzdWx0IGlzIHRoYXQgRFNCIHdv
bid0IGhhdmUgZXZlbiBzdGFydGVkIGV4ZWN1dGluZyBieSB0aGUgdGltZSB0aGUNCj4gZmxpcHMv
ZXRjLiBoYXZlIGNvbXBsZXRlZC4NCj4gV2UgdGhlbiB3YWl0IGZvciBhbiBleHRyYSAxbXMsIGFm
dGVyIHdoaWNoIHdlIHRlcm1pbmF0ZSB0aGUgRFNCIGFuZCByZXBvcnQNCj4gYSB0aW1lb3V0Og0K
PiBbZHJtXSAqRVJST1IqIFtDUlRDOjgwOnBpcGUgQV0gRFNCIDAgdGltZWQgb3V0IHdhaXRpbmcg
Zm9yIGlkbGUgKGN1cnJlbnQNCj4gaGVhZD0weGZlZGY0MDAwLCBoZWFkPTB4MCwgdGFpbD0weDEw
ODApDQo+IA0KPiBUbyBmaXggdGhpcyBsZXQncyBjb25maWd1cmUgRFNCIHRvIHVzZSB0aGUgc28g
Y2FsbGVkIFZSUiAic2FmZSB3aW5kb3ciIGluc3RlYWQNCj4gb2YgdGhlIHVuZGVsYXllZCB2Ymxh
bmsgdG8gdHJpZ2dlciB0aGUgRFNCIHZibGFuayBsb2dpYywgd2hlbiBWUlIgaXMgZW5hYmxlZC4N
Cj4gDQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnDQo+IEZpeGVzOiAzNGQ4MzExZjRhMWMg
KCJkcm0vaTkxNS9kc2I6IFJlLWluc3RhdGUgRFNCIGZvciBMVVQgdXBkYXRlcyIpDQo+IENsb3Nl
czogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy85OTI3
DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQoNCkxHVE0uDQpSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5t
YW5uYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5jIHwgMTQgKysrKysrKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBp
bnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kc2IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHNiLmMNCj4gaW5kZXggZDYyZTA1MDE4NWU3Li5lNDUxNWJmOTIwMzggMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBAQCAtMzQwLDYgKzM0MCwxNyBA
QCBzdGF0aWMgaW50IGludGVsX2RzYl9kZXdha2Vfc2NhbmxpbmUoY29uc3Qgc3RydWN0DQo+IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICAJcmV0dXJuIG1heCgwLCB2Ymxhbmtfc3Rh
cnQgLQ0KPiBpbnRlbF91c2Vjc190b19zY2FubGluZXMoYWRqdXN0ZWRfbW9kZSwgbGF0ZW5jeSkp
OyAgfQ0KPiANCj4gK3N0YXRpYyB1MzIgZHNiX2NoaWNrZW4oc3RydWN0IGludGVsX2NydGMgKmNy
dGMpIHsNCj4gKwlpZiAoY3J0Yy0+bW9kZV9mbGFncyAmIEk5MTVfTU9ERV9GTEFHX1ZSUikNCj4g
KwkJcmV0dXJuIERTQl9DVFJMX1dBSVRfU0FGRV9XSU5ET1cgfA0KPiArCQkJRFNCX0NUUkxfTk9f
V0FJVF9WQkxBTksgfA0KPiArCQkJRFNCX0lOU1RfV0FJVF9TQUZFX1dJTkRPVyB8DQo+ICsJCQlE
U0JfSU5TVF9OT19XQUlUX1ZCTEFOSzsNCj4gKwllbHNlDQo+ICsJCXJldHVybiAwOw0KPiArfQ0K
PiArDQo+ICBzdGF0aWMgdm9pZCBfaW50ZWxfZHNiX2NvbW1pdChzdHJ1Y3QgaW50ZWxfZHNiICpk
c2IsIHUzMiBjdHJsLA0KPiAgCQkJICAgICAgaW50IGRld2FrZV9zY2FubGluZSkNCj4gIHsNCj4g
QEAgLTM2MSw2ICszNzIsOSBAQCBzdGF0aWMgdm9pZCBfaW50ZWxfZHNiX2NvbW1pdChzdHJ1Y3Qg
aW50ZWxfZHNiICpkc2IsDQo+IHUzMiBjdHJsLA0KPiAgCWludGVsX2RlX3dyaXRlX2Z3KGRldl9w
cml2LCBEU0JfQ1RSTChwaXBlLCBkc2ItPmlkKSwNCj4gIAkJCSAgY3RybCB8IERTQl9FTkFCTEUp
Ow0KPiANCj4gKwlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgRFNCX0NISUNLRU4ocGlwZSwg
ZHNiLT5pZCksDQo+ICsJCQkgIGRzYl9jaGlja2VuKGNydGMpKTsNCj4gKw0KPiAgCWludGVsX2Rl
X3dyaXRlX2Z3KGRldl9wcml2LCBEU0JfSEVBRChwaXBlLCBkc2ItPmlkKSwNCj4gIAkJCSAgaW50
ZWxfZHNiX2J1ZmZlcl9nZ3R0X29mZnNldCgmZHNiLT5kc2JfYnVmKSk7DQo+IA0KPiAtLQ0KPiAy
LjQzLjANCg0K
