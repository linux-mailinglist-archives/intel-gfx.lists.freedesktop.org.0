Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E7B901E32
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 11:30:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D501A10E3E3;
	Mon, 10 Jun 2024 09:30:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hGCYRF+w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2276410E3E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 09:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718011832; x=1749547832;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AxU1rHlKpfVuSdkw0zouNJwV6NIMl3NZQnj0G32K2Qw=;
 b=hGCYRF+wUiPUqlO+AuGfbeGP4jP+NyEkz6ma9GGYoFrA/BpHKydT/Uqy
 CbllUSyMfZ/gB/R6Ekd9qDdFO+fVop1Vl5yq6WQKIb0HoBEPDoqAd6laM
 qHfCg7WF4SBQbopmnEG/TJz67cTPBL1FBxfdzGguXQccnfZsZ28NfhlKb
 Nsab3/TJ1uP1izv41o40QJMGECJBRUfw5iK6cMXGZCh8k31qdl38eCGlk
 AajCgR/pJXFfdUt1h8j5Dzt05FLhgriSc+emJHqJgIrm34qpl9nO410+n
 CygAtUe1jilazE1jHQVrFqsVl4jmR+NVg/ydScPelgphiWT6O2+jDGiJt g==;
X-CSE-ConnectionGUID: MyAWFbQYSY+ZZPzRNkrNLA==
X-CSE-MsgGUID: 9uJgMO0UQ4S6Liq/o10AEw==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14815463"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="14815463"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 02:30:32 -0700
X-CSE-ConnectionGUID: /EmQEEyJQNCNpzT13ucqTg==
X-CSE-MsgGUID: LiRkZhPTQHKOV6ln4Rd4ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="70173151"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jun 2024 02:30:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 02:30:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 10 Jun 2024 02:30:31 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 10 Jun 2024 02:30:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TPyf4sCKS8xaKzANLN2mdlPGRVCX4h5UC94gkcz2ECEMMgD/x72aanmdqCX2Chlcpi0ywxQyxjA/COpjwgsZQZBTpnxlgTmRlo3gHAnwhCx1BZ6VoPhN4MyWaOadRS29guQjkRjm8MfhQbSTWokeTbG8vtQgSC78Ov9i02YeM2RdyB+1+IlXCnK8OLW7vsG7SA8lBnRVsGE+3L1ZApPOJhlh9QLo4ED5tjn5cAetciekmZ4xOVq8jnaPMf4/3yeZQSTyeq7dq3jloB2k/soa4UNUmosUr3rOefBBnHPYOKM9YFLBRiyVlOOd8FKqnrS/FFbw160r9j+ffaQ+uTbCcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AxU1rHlKpfVuSdkw0zouNJwV6NIMl3NZQnj0G32K2Qw=;
 b=k7tXsBNmBrVb7YEXsb8/QUq/8GR0zrewqVcumuVJFOmKzKWwccIg5I7Dv0L/X9Kwc33fwu3PyBOpG8cwJOoqTFwKEZEi/iZTPIhkgyWFVyjRX6TPgzQ5vnFsZMKsTXiNnYn71E5Hf0V3T536NXfE2hr3WHGzo4cKMijvs5Ey1+9Hdf4gcaUTCugD7mw6v5XyQheJy6mFXEBBZi/rUPr//YvVBpTUsO2n9UUaHTf42PGcQOt+xX5GeFIDo59TTJdGsQqfhNff03EQzK8ZXzEWyAv/93oBMRJ18mc6tn/LFk+EyIeIeC7yQpZdYNSOUH3PWZylqEC8fmxTgwI829xfCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CY8PR11MB7106.namprd11.prod.outlook.com (2603:10b6:930:52::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Mon, 10 Jun
 2024 09:30:29 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.036; Mon, 10 Jun 2024
 09:30:29 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 00/13] Panel Replay eDP prepare
Thread-Topic: [PATCH 00/13] Panel Replay eDP prepare
Thread-Index: AQHauOGPfRJXlLkFR0SLwFecd8Jn6rHAvy+Q
Date: Mon, 10 Jun 2024 09:30:28 +0000
Message-ID: <PH7PR11MB59811ACDD60C9282AA05D784F9C62@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240607134917.1327574-1-jouni.hogander@intel.com>
In-Reply-To: <20240607134917.1327574-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CY8PR11MB7106:EE_
x-ms-office365-filtering-correlation-id: 03b9cdc8-8d42-42db-97e6-08dc892ff796
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?eVJmdmFNVEZDYjA2cWdHUDkyL1o0aTJhd1lxbm1ZMmt4WDZ1K3JGZlVGSVY3?=
 =?utf-8?B?UXo1VEVpWDB6YTllanp0WmFuU0RMYzlUcU4xSXVVV2hGY1JjZ3FjWXhZNkEz?=
 =?utf-8?B?c2wzbVY0KzZrWUw1dE9BUG15YjlkeXoyWjJ6UU9DOXp2MFZENytmNCtjYmwv?=
 =?utf-8?B?Yy9nSWhuRXJRNTJaYWF1UXZQeUxNajR5d3NKaG9mQW1rSm94RXBHcGcxQmtW?=
 =?utf-8?B?WkN6YjBwQzlPYlVGZ052Mk8yQlU4cXcyRTNYa2xlemVJa0JPLzZXTFcvTEJ2?=
 =?utf-8?B?WHI0N0JkdVRrUERtamt3VG5LMDZqclFSaVZ0RkdlSXgzdVErd2Y0UnkwRXVS?=
 =?utf-8?B?eTlSSDArVHRFWXMrMWd0YVNzVEUvWTRaeGxNYnRkZXRYdDJxOFJlYUNNdUxy?=
 =?utf-8?B?dHhGaHFzZHRHUkRhdDE4ZVl6MVVBR1gxNlI4K045R1R1cXM0ODVrSnM5MDFN?=
 =?utf-8?B?Q0tIUDRIRG1FUkxrRHNkaXYvVlNyVEI0M1k0Q2ZCK2s1cFJqSFZ0L3VIa2VV?=
 =?utf-8?B?eTRLcVRTVmtsSlBJZUxZNFFKN2NnM2Q2T1QwbVBpUS9EbFArYVg3bDdjaDBR?=
 =?utf-8?B?YmVKck5QVUhwN3pSZjRQbnRkRnpRcDNXMDhzWWVvbk9FUUFEVkUzTm1STFV5?=
 =?utf-8?B?SE5vZmx2VEhVUHkzdzNhUzhYQk0rV3FHcUxuTkZya3VVUVh4WGR0WW1COEUr?=
 =?utf-8?B?TWZ0aWtJRXRxL2M4ZUFNYXAvNHhNdVl3QllaSnE5OS9LN0ZuYlREb1dNSE1l?=
 =?utf-8?B?NGVDa2lkY3FMbkpHV3RYUFQwVWZKTXk0d1p2Sy9vaWFGMVFZVElmNllDT245?=
 =?utf-8?B?czJDL3VxVkMzRVRweWtTemdGWVNOVVpBWG1lUWtsRHdZdHBqM25xa1Exa1Bu?=
 =?utf-8?B?aFhQeng4VmpTLzQycHF2RDVoNHZiM28rblVoUHdkeUNIS2NGbk1FZm81L3NI?=
 =?utf-8?B?Y0hkbFZob1JyWk9Ld3pySjBWOXpjVzFUdHFuZ0wydVdiTytRbkN6ZEtISHJH?=
 =?utf-8?B?VE0weHZSTjdtb0VYVCt4SlFHeERqMjVMTUNZYm56RVI5SmlTR1pBckZLZ25T?=
 =?utf-8?B?VFNpZWNROTdQMHEzMFg0aTMxOFBUMVJiQ1JlaTZXWUdjRFc1aUVuVDNtMkRG?=
 =?utf-8?B?MVVURnZIVG9UYWN2bk5sOThkVnNESXBnRVNMcTd2UzdheXovdXlTNlBiTTU3?=
 =?utf-8?B?eVVuOXdSZ1NzZklvL1NyaEhpWURTby9kR2FGdERBNURxM1JqSlVYVlFRUlIz?=
 =?utf-8?B?bnRkcVcvOUdFamF6S080eVlMbVU0V1MvYXg3V1BlZi9CTDNURFFYRWxWdkdp?=
 =?utf-8?B?WWRtV1JWelFTeVFPRTg4aDZCOHJwU3FTYzE0MWVGWGF5VUY5dmVaT1ZWMUh5?=
 =?utf-8?B?NVlWaTBGUkRlM1g0RHpxOHRHcTFFZVhqdWFDbkdwNGFmZkplRkYzV0RVSkpZ?=
 =?utf-8?B?S0d6eElkUWsza3RaVU82UCtYcHg1UTVTd3laTUxScFRES2EvejRIaGxJbHBX?=
 =?utf-8?B?RGF5UGhLZ2pwZjFKZmRlVjJFLzhZQ0JLeitoQVZXc3l5dzJyY0xFa0NoeUo2?=
 =?utf-8?B?VkprYmY5azJCT3Rxb1IwVnhTNEYveTd2ZFFXa3UwUU9xSk56Q3pOWVVkT0x5?=
 =?utf-8?B?OXJrcVlvSnRhc2dhMGEvaXZXdnV6czI5TWFncUpYbVMxSktodjh2L3haWkFj?=
 =?utf-8?B?aitsVEJ4VUFWWVZLdXdaSVpjaGpnWStTNE1HanErNnBlQ0hKZEFpM3k1NFZX?=
 =?utf-8?B?eVRneFZMV3B0MlpoYThJZlFQcWkxampFR3pGWTZ2VGV6ZjgraXZXcEl5YmtT?=
 =?utf-8?Q?win3dKFz5SRwgOQDY3PG8cXWz3jk1PhODXIgw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R3BVbHlPeVcrNXcxeHowck5pSGpRMFNsV3VoQXBuUmtYQVZnUElnYVVpU29W?=
 =?utf-8?B?dlZNZS9NMHRaVVJLSmlFY0huOFpQNUN2UWpnZ1kvbExwdVRrYVhESnAxay9k?=
 =?utf-8?B?aFZmMGd5RFB6dDRXVjkwZzRIZjNZWmtHZlhzUnd1dy8rcGhMMHRUeXNzckhI?=
 =?utf-8?B?U0IzLzlxUHZ0cWM0NllnR0NORXMreW92dkt5K2phRGM3Sy9qbHh2alFCTWo3?=
 =?utf-8?B?N0gxalRDSVhtSUs4MXFtTm8rblpKNW9YeFBHamh2VHRTd09yWU9mTHIxbU1u?=
 =?utf-8?B?b2ZKY1VxbUd6QXpRdnFHbkVGVmkxU1hkQXZPNk5YM3JuckVvdnliN3dralBt?=
 =?utf-8?B?M2pMaU9VazB3R3l1YVBOTjFlcU5NY2ZlRExJSGxhZnhuMUp6VldGMDRWYzMz?=
 =?utf-8?B?NlppMlhtKzBmYXd3WngyLzRIU1pUb3UxcGpPak5mUTRNb2ZIbWdGZlpuWHlB?=
 =?utf-8?B?a3dDUHBRM3VydVZvM3AyL1I5OVpDaWViR2hQM2Z4L3BUbDhkdG1uZFFjbWU3?=
 =?utf-8?B?S3hCWW8weWJtYlhRd0hDTEtBeWE1V3ZNZGRVZ21wTE1qY0x1cXRxODR6ZTlV?=
 =?utf-8?B?WklUZ3loUHRrTWtpblBTNExIQjJuTWxOYzR1WGc4M0ZPbFBnWUhDSkhDWFRJ?=
 =?utf-8?B?NW44SEVwd0Juc2VmMkZreFRYbXlPTy9xVVhKeDI5S1dCS2Z4VUdNVjFTVnY4?=
 =?utf-8?B?OXlya05jYkwzcXV5UDI1Q2Z4Tk5MbW1NRlBEQXZIZ0JoanpKRTlRRXdUakNY?=
 =?utf-8?B?cDZOK1BLcWFnbWVqVGFkelhwRVloS0YyZnlRclNKbjh0K2poUmhDZTFpYXNh?=
 =?utf-8?B?eDRMdXhxUzBwaE1UWnBFOEt3VlkxUnpBUVRRTWhFaUZtOG9QMjk4NUp5a1lj?=
 =?utf-8?B?UmkzM0xxVVY5NHFIWGVuMDVKLzlNMjc0S0FodC92ZWMwaStqZFN0OGxkQ2M2?=
 =?utf-8?B?OFhOUDZuTWFNVllVTGNHQk9qeHRHcnlBOVlGUEF3enpZVTdXZi9pTDVZTEMw?=
 =?utf-8?B?WFJjckNPZzAzVFpEY000Z2RhcU1ZQ0VEYU5pZElDdjZyejdZSXVMRFpOTzZv?=
 =?utf-8?B?WGZxVTZCTHBSdVFpVUMzVzdIMkVrRWU2dXRHVThta0V1bFBDQUlDck4vdDRp?=
 =?utf-8?B?eVpsU3pweUo1NWowYkdGdkdCN3BIT1V2ZzhIVFl6UW82a1ZySzFUK0ptWDhS?=
 =?utf-8?B?dkoyamRKWXYxWUlIUEdZYk95ejgxeUcyRk1ZeTZndTZwMk9NQWMySnRlSyt6?=
 =?utf-8?B?SU0wQ0lCOTlaak81QjFYSTE3blp1VlFCamczTzJzU3RVWC9YNzE3eHh0dXJD?=
 =?utf-8?B?UVovY0VpWXN3RVR5d0swN2tZWXYycEk3Zzh5VUNNWWdKU1FnS2VYaGlaNHJK?=
 =?utf-8?B?Mk1JYnJUcVBNQkVqMDlMbGlVSTdOUmJUK2MrQmFwam5mL1dXU0dxbDhoalFY?=
 =?utf-8?B?NGh4WVlZMEZXUFlCdU9nZGU3SnBXWWZIODFNTDBSaHA4WmxqRnBuSXlzVHNo?=
 =?utf-8?B?cmRaRFJhRGh2aHRjWThNUW9HWFlyQTc4M3RocW5PWE55N1VSQW9PWXhoWTdR?=
 =?utf-8?B?M0hFNllYenBXTk41UmhWZGZzRjgyR2pIQ3QvSUpiNWwyUEZVd0RYMEZYaXVQ?=
 =?utf-8?B?YVp6WUVDK3Q4T1ZJNE0zcHUwVDhoRytDbFlnSnp0Lzl1MkZPejVJUWlwWDhz?=
 =?utf-8?B?T1FVRDRJaW1uWHNEZHN5R2RJUVFaamVEa0NkbFIvSjc3cGQveGFrNDlRYXRL?=
 =?utf-8?B?NGZLZnJJczBhVGtlWTZ0QUhUa29kRHZGdFlVdTdGd2twTDBOUnRjSDVQMzJt?=
 =?utf-8?B?M3dOL1dxMkdRdis1QU9RWmpGNmI3Wjl3amNpL1VTRWtGM29sZWpvNElONHVP?=
 =?utf-8?B?Y1c4UUtnalhzK1k3U0pUcEZxZGVHdUdrUTE0WnFOWEhKLzBlM0tkRXBTeTBD?=
 =?utf-8?B?bEVpbCtLenBxUlJEODJCU1RtVzdhMjBOUFVya2VySWNLTCtWZmtCeDBNSmI3?=
 =?utf-8?B?QXY3VnVXcTBEdk41M0crMlM0UW05TmxMNWpRcEdsc01DUXN4aGdFTzJkSmNT?=
 =?utf-8?B?VWpCUjFseGxJT2p5Y2lQOVNwdGh3T3F5dGh2K3plT0VUSncrOVRnaGtkVG1q?=
 =?utf-8?Q?ZtYsFYAfF7RgiKcJflonuc/ni?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03b9cdc8-8d42-42db-97e6-08dc892ff796
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2024 09:30:28.9929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cb2wsg4rnRR/tbaLN0aGQnqpM9/Gjgml+rcWeMJFVsbFFHl9J2q+FHr2QGVZ5qqEn51B3NaeopQREwqmI7mllg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7106
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSnVuZSA3LCAyMDI0
IDc6MTkgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE1h
bm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0KPiA8
bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCAwMC8xM10gUGFuZWwgUmVwbGF5IGVEUCBwcmVw
YXJlDQo+IA0KPiBUaGlzIGlzIGEgc3Vic2V0IG9mICJQYW5lbCBSZXBsYXkgZURQIiBwYXRjaCBz
ZXQuIEl0IGNvbnRhaW5zIHZhcmlvdXMNCj4gcHJlcGFyYXRpb25zIGFuZCBmaXhlcyBmb3IgZW5h
YmxpbmcgUGFuZWwgUmVwbGF5IGVEUC4gVGhlc2UgYXJlIHNlZW4gYXMgc2FmZQ0KPiB0byBtZXJn
ZSBuZXh0IGFuZCBub3QgeWV0IGVuYWJsaW5nIFBhbmVsIFJlcGxheSBlRFAuDQo+IA0KPiBKb3Vu
aSBIw7ZnYW5kZXIgKDEzKToNCj4gICBkcm0vaTkxNS9hbHBtOiBEbyBub3QgdXNlIGZhc3Rfd2Fr
ZV9saW5lcyBmb3IgYXV4IGxlc3Mgd2FrZSB0aW1lDQo+ICAgZHJtL2k5MTUvYWxwbTogV3JpdGUg
YWxzbyBBVVggTGVzcyBXYWtlIGxpbmVzIGludG8gQUxQTV9DVEwNCj4gICBkcm0vaTkxNS9kaXNw
bGF5OiBUYWtlIHBhbmVsIHJlcGxheSBpbnRvIGFjY291bnQgaW4gdnNjIHNkcCB1bnBhY2tpbmcN
Cj4gICBkcm0vaTkxNS9kaXNwbGF5OiBTa2lwIFBhbmVsIFJlcGxheSBvbiBwaXBlIGNvbXBhcmlz
b24gaWYgbm8gYWN0aXZlDQo+ICAgICBwbGFuZXMNCj4gICBkcm0vZGlzcGxheTogQWRkIG1pc3Np
bmcgUGFuZWwgUmVwbGF5IEVuYWJsZSBTVSBSZWdpb24gRVQgYml0DQo+ICAgZHJtL2k5MTUvcHNy
OiBTcGxpdCBlbmFibGluZyBzaW5rIGZvciBQU1IgYW5kIFBhbmVsIFJlcGxheQ0KPiAgIGRybS9p
OTE1L2FscG06IFNoYXJlIGFscG0gc3VwcG9ydCBjaGVja3Mgd2l0aCBQU1IgY29kZQ0KPiAgIGRy
bS9pOTE1L3BzcjogQWRkIFBhbmVsIFJlcGxheSBzdXBwb3J0IHRvIGludGVsX3BzcjJfY29uZmln
X2V0X3ZhbGlkDQo+ICAgZHJtL2k5MTUvcHNyOiBQcmludCBQYW5lbCBSZXBsYXkgc3RhdHVzIGlu
c3RlYWQgb2YgZnJhbWUgbG9jayBzdGF0dXMNCj4gICBkcm0vaTkxNS9wc3I6IE1vdmUgdmJsYW5r
IGxlbmd0aCBjaGVjayB0byBzZXBhcmF0ZSBmdW5jdGlvbg0KPiAgIGRybS9pOTE1L3BzcjogVGFr
ZSBpbnRvIGFjY291bnQgU1UgU0RQIHNjYW5saW5lIGluZGljYXRpb24gaW4gdmJsYW5rDQo+ICAg
ICBjaGVjaw0KPiAgIGRybS9pOTE1L3BzcjogQ2hlY2sgdmJsYW5rIGFnYWluc3QgSU8gYnVmZmVy
IHdha2UgdGltZSBvbiBMdW5hcmxha2UNCj4gICBkcm0vaTkxNS9wc3I6IFdha2UgdGltZSBpcyBh
dXggbGVzcyB3YWtlIHRpbWUgZm9yIFBhbmVsIFJlcGxheQ0KDQpUaGVyZSBhcmUgc29tZSBjaGVj
a3BhdGNoIGNoZWNrcyBuZWVkIHRvIGJlIGZpeGVkLCB3aXRoIHRoZXNlIGZpeGVkIGZvciB0aGUg
d2hvbGUgcGF0Y2hzZXQsDQoNClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1h
bm5hQGludGVsLmNvbT4NCg0KPiANCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYWxwbS5jICAgICB8ICAxMSArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hbHBtLmggICAgIHwgICAyICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jICB8ICAgNCArLQ0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oICAgIHwgICAxICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYyAgICAgICB8ICAgNSArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYyAgICAgIHwgMTYxICsrKysrKysrKy0tLS0tLS0tLQ0KPiAgaW5jbHVk
ZS9kcm0vZGlzcGxheS9kcm1fZHAuaCAgICAgICAgICAgICAgICAgIHwgICAxICsNCj4gIDcgZmls
ZXMgY2hhbmdlZCwgMTAyIGluc2VydGlvbnMoKyksIDgzIGRlbGV0aW9ucygtKQ0KPiANCj4gLS0N
Cj4gMi4zNC4xDQoNCg==
