Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 400F79E8D94
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 09:36:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E09A610E665;
	Mon,  9 Dec 2024 08:36:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WBcVr+nb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E070110E665
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2024 08:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733733359; x=1765269359;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=80dsBM483AxFzRbI4zyAIUXgvpKO7jcOhFFEqQ0YR/4=;
 b=WBcVr+nbibyWBGB08bspCfeavmDONts4Bjnl/ozzlmtcQB/A1CpJEzl2
 YDsXfF6kFcGr7P+DmTaePn2J5/1DR1JNE/ShUdU1OesLBv0jLTMD4LLoi
 FxWMUW+/3pbfPYTwyiZIw+0DCLuwY9Wfp+lV189JE/927Xv1hwF2vja55
 ycuHCBCQ8JeOdeilBqpZ6oBmkg1oZAwgPl6nHOAJrzfQXHS9utdKwcIA5
 cPJ+uoFnZXc4ghpANKply51wYL4ZOgIhGzAr7Xn27BaAG2BNZZ/LZt6iT
 hntXT0pqyJrSQAaLr47IbO7ZipA6Nra/FvQqFS2EsxZWnBEc0GV7DwV0/ g==;
X-CSE-ConnectionGUID: Qghqc7nWTH2yhNKtzJz4DA==
X-CSE-MsgGUID: 1tTgoUzTS0eyoHZ2hIQnGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11280"; a="51435600"
X-IronPort-AV: E=Sophos;i="6.12,218,1728975600"; d="scan'208";a="51435600"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 00:35:59 -0800
X-CSE-ConnectionGUID: Fon0ipdtQXCYZdNA3UTnQA==
X-CSE-MsgGUID: Xp/mXCIPQVSaNObS0oge7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,218,1728975600"; d="scan'208";a="95091103"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Dec 2024 00:35:59 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Dec 2024 00:35:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Dec 2024 00:35:59 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Dec 2024 00:35:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rxSRMwYHBl/Vwyr8fRW/e3AwnUrXqABfP4hWREli7YJVxKZmqV72s0sbtP6qqdABZ6l1cOeQmysuykgp6WPY//3GiaOz+mRTXaphdisJdLnrx/yJ8EhxrOqvZDxFmOKXsYQj1xITM2nlCuElYtvdTTmhekEvW1Ta3shDgYOGy8iStV3N+51J4M8u3t/A216eitYb2xAycqqjiJ/9GdZUhfTjDSl7clpelLZ4aYZYtH+ANN17qXgTtJ8B7fzr54vw8lp9oJtCVkG6w/8CYqb/9erH1OWgqpNtq2eXT1CKDXrn5JXwqpz/PSnUm0EHmoJO3DtaBZLBnWDiE3wbuIUjRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=80dsBM483AxFzRbI4zyAIUXgvpKO7jcOhFFEqQ0YR/4=;
 b=o71dkbLDy4tAqtBEQ3Iox0lRmk4yGQ5PqBM2r+Xyb3v5WYpZ17Z5VwNtlJiUAEQgi++aOD352ax9ltN31fWmWpyvCxadTGDp1fkwHLpAzCL1kNSx4c9pJHKleBoNFOVv1xWyq1XM2MU3mHh27pZMIF3SDsKCIpC8qVlMmWLQQ/+JlSk7NZ0kLu/YJBLegYL1D6R1yj24A1TabVQkFbidD/zKAviLnpUY6DoYMREkKmtDbomX8DLOU8NYn18CZtNMBOg3+QNNvbWNBtniA9Q4fW4GVxzZ1td/F5FrbUWMPcJM4rJdF6C38v/jHkTYVXfvOOu8aMvOAXFW6UoFpoXJwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA0PR11MB7257.namprd11.prod.outlook.com (2603:10b6:208:43e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.12; Mon, 9 Dec
 2024 08:35:56 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%6]) with mapi id 15.20.8207.024; Mon, 9 Dec 2024
 08:35:55 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/lobf: Add lobf enablement in post plane
 update
Thread-Topic: [PATCH v2 1/2] drm/i915/lobf: Add lobf enablement in post plane
 update
Thread-Index: AQHbRjaRKSlunFADfEeolfd13XUnBLLdnj0A
Date: Mon, 9 Dec 2024 08:35:55 +0000
Message-ID: <59438896581fbd20a460c6243c1116bfec31e480.camel@intel.com>
References: <20241204100328.3738778-1-animesh.manna@intel.com>
 <20241204100328.3738778-2-animesh.manna@intel.com>
In-Reply-To: <20241204100328.3738778-2-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA0PR11MB7257:EE_
x-ms-office365-filtering-correlation-id: 8efef356-068a-4379-48a7-08dd182c7fa1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NTVGSmFCQ1ZVMDFUdWVrMk1MeGt3UEovdEZCeVdFeVZnRENHVDJkQ0gxL1ZR?=
 =?utf-8?B?a0p3NVBFMUhJV2VvNW5BYXpBcmdxRUtCQ0NVa3owTW11MGc4ZnptOU5ZWGtl?=
 =?utf-8?B?ZXQrRlZFbHk3SE1JUDZJWUdjWlYxVVplZUs0VklMczNyN3NlMjVjVytMeThy?=
 =?utf-8?B?cGJxcmExNCtUTEVNbkVjZjgyektDYTJmUGN4SnhlZm5OM2ZQcVFXNkpPMzE0?=
 =?utf-8?B?MXB4MVp5eXJ0bjJ5eGlSVys4R3AxN24rUEhTbFVSNEltcVNkMHVrU0JiY0VY?=
 =?utf-8?B?aWl3Wk8rUUxaL1cybWxEc3BEQm4zdng5Yk1neUZ0dVNPd3c2aEo2dEVPRWRC?=
 =?utf-8?B?cTk2M1pHNzE0bDZSemIycFp4ODZySzlBU1lORWo1YW1NMFE1RXhRN0kzS3cz?=
 =?utf-8?B?MWVJTjQxZXUzRlVSMVE1aVh6OFV6ejZZOWZPQ3RjSGtBMnlBL0FKeG41U0FK?=
 =?utf-8?B?Z1hPYlBZd2Rqc0FGd0xCMjk0K1c4dk1mYmpPVmVJTUFIUEZPUDhOa25mb01N?=
 =?utf-8?B?QXhJVG1kTGlpTlhjdFdyaG9NQlIxclJubkdmY21RRmxCTWlvVzJPMkpZOWI3?=
 =?utf-8?B?TFdqVldtLzJld0lDSkNZQUN3MmE1NFBYZUZidFl3WmRnb1YyczhrMXErd1RP?=
 =?utf-8?B?b09JN0JOUFlpUGNuaGI3REloQlBSTFRTSDlLNzJkZWlOby9JeWhoN1k1dTU2?=
 =?utf-8?B?eEYxd2xDL1ZlZjlwRnRTSERVVlRuVGRSc3c0aGFsbmpQa09mTkNxR1B5Yzl4?=
 =?utf-8?B?dHpDeUJ1aWcrdGgzVUxYYlFuZFljUzFhSmd5dng1czdBdDFudGozbElBZjZk?=
 =?utf-8?B?RzNYeE1Yd3M4aElZK3BHbUN4b2FuUjg4U2dnZ1pxeVBYYU5XTnZPT3dlaFl4?=
 =?utf-8?B?aGVWRUcrTjFqSTlyV05mNG1VZllLV0ppY2cyQ09QNHFQMUdtWG1NbW4rcXVy?=
 =?utf-8?B?ZHNjcGtOZGhaVURUQytoRkpzRFczZjNkUzVmOXhGZW9SWFVQckI4N2lGU2tT?=
 =?utf-8?B?bnArYTJTOTFDdWVwTTJZTmN5RGlpeldUQWpNMllxSHpMamRZd04waWhhZVRR?=
 =?utf-8?B?SVF2ZkF0UHdtNU5Sa3pjd2RJWDdIMVA0bTY0Zjg5NjhPdzRubFJMYmEvSFVL?=
 =?utf-8?B?MEJOa2hza2VXd3BzNWdGT3pPdFZXYytUdnBXeFR1akQ4MHV5c3FFcHd6RjN4?=
 =?utf-8?B?YTgyendsMEFjaU13U2VaTWNTRlRCbURhRlBFaTFtNENBMHBKeStSMWtEdkdo?=
 =?utf-8?B?MlZ0YVI5WEhuR0xPdCtmLzg0STZ1UmRvUHIyY0hYVlh3MWRZd0xGZjZYMWlS?=
 =?utf-8?B?bGg2R0VZUXVOMStHUXRNQitZZkVSQkxRMVRhZFVlbFUyVFFtYkEyL29rSTBV?=
 =?utf-8?B?N0pxSjV2N3pVNU1abVJuVVQ2ZHBmSURDcDFMMytvQ1JqZVh1czgwMk5uQ2sx?=
 =?utf-8?B?K0lISW1VTmZpb2dVQWNwcWNGTWJBWTRuSndLeVoxNVJUaUlBTU9JN2VQU0wr?=
 =?utf-8?B?SEJYOGFBZm1ScTF0U2hON0VPY0RTTmtwaFM0NjNZaDVFcG5MVWpFa0kyVHVx?=
 =?utf-8?B?R3V5MDZsL3orTHR2UXpkTFFySDk1OENua1Nybk5sLzhKQ1hNZVJOVkxZMk84?=
 =?utf-8?B?Y2J4cW82bVRsNFBTVitCeFJCMUMrMnJabFZLZ2ZTRlJZVVpDamZNOWZlUjRs?=
 =?utf-8?B?VDhNeFlqWFdvZ2ZVTlUrZTgyZlZreENqdEg3Z05mcXVxL1J1M3Z2dE9xU0R2?=
 =?utf-8?B?SlZUUjdoWWFGVGNkc3VucGxVUHNrU0NCa2RKKzRoaWFobWNuelBTeVRkd2l0?=
 =?utf-8?B?bG0xQ0JjcEc3eVNWNHp1NW5ZOWY2VVZMaS80Vk53RFFIb1hXbXJiei9mWTF1?=
 =?utf-8?B?b2lETFY3S2d0Qi9GSWhSeUs4M0h0VENSdGZtRXovTlRtU1E9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WGhtL2FVTDgrazFYK1dJNGZjZkRaUGtNUEVNemhNZ0FRb2hGazZaMFZIUC9W?=
 =?utf-8?B?T2oyZG1DNHZIK2JWakc3blp1UWRNM0FjU1pHb0Jja3loSkJQaTRFazk1WTBo?=
 =?utf-8?B?Z3ZVZ1gzWUZLcjJyUmxIbjFpUHdWSDF4YXh1WWl1UHRBdDVTR3lIanRTRGNz?=
 =?utf-8?B?bGtPZUpEckZSYmZZUE82MVFMMnd4VWZIV3lGWThYY3VHTHowQlJ3ZDZ1MEIy?=
 =?utf-8?B?ZXYrZ2tqSEJPOURoZWFQWlBXWFNuWTFFcm9tYm1lK0tlb0RqU1dubGxzaWho?=
 =?utf-8?B?RzdLVDAramIrRlRmRktnZDdJc2ZvRTJQNkFNUjlaQUhXVFFISzUzODBpZ3cr?=
 =?utf-8?B?VXo1djlVZDd0cGs5V1pWc3ArcFNxMHYyMHo2UUxEamtEcFc2ckJhZWpaQm1T?=
 =?utf-8?B?QVN6WFJlaHoycUNYYmEyWVBIaDVrYXlWbS9DSE1qQ0RNUGg3STRlcWUwcmpB?=
 =?utf-8?B?T3VaUG43Wjc0S3EramtFT09GRk1xKzB6ZitHbnJVU1lLczlpdHRjR0kzTEpN?=
 =?utf-8?B?RE93ajBZWnVqTDU2WkR1VlI1ekRIVmdyMTROLzhSWVcrUHlMQXVPVC9mZHNS?=
 =?utf-8?B?UDJCOGhNTVE2Qk5ETmxxNFhrR2Vya0ptOVNvZ3JtakwrUWhGMUxvcnJIWW05?=
 =?utf-8?B?N0ZUUkMzMENHOHR1RXFtVmE5UW1meGZPY25BWFl0YThjK1VXYldWc0VCMEMw?=
 =?utf-8?B?WkNOSytBVkprSmV0WkRWSjZ5KzBUZGJUNXVjMnRaUFdubWlqNEc0ak9xUldX?=
 =?utf-8?B?bjluRGFNczBWeTFXZGpsUlFXVk5PWkppUURXeE1OcmxUYzBMQ1pMVDh0OEhx?=
 =?utf-8?B?VTI1VlNCTlJUdnpzVVFUWVhQcGREUnA5OFJoY3J0QWZpdXo1bThvdEd5OFI3?=
 =?utf-8?B?RDNLbUxid3NhaUJYdEpuZ3BVSlFUMndRM3lzTTdpMS91b2NQdTgzV29oU1Bk?=
 =?utf-8?B?amxGNWF4TVB0aXJiL3VZMHBVVlBZc0wvZ2xKZUozTFZLeTlWY0hycEZNWFhH?=
 =?utf-8?B?TWVuVUt5Y2VFZXRZK2JvRGFwdysxOGJjY3liS0VLS2hyYll4eTBkTTBWUVRx?=
 =?utf-8?B?dWYvWEZqZWphY3dqNEdnUFRwcTkzcmNkRGNwL0hHL2lpTmhncDg1NHVqRUVz?=
 =?utf-8?B?cHBKbHBrd09zd2NaU3Y3WURNcm0zQk5lc1Z4b2hWQndFWnVrNGJOSHhqc01j?=
 =?utf-8?B?RitoWks4WE4rZVNwU2drWE5Hcm9aRTNtMjNaVVZLR1VOSHpseTFiYzQrUFZ6?=
 =?utf-8?B?RU1kZlJDbFNGVjdaWE8xMmEzaTQrVGw1alZMZlNYbDFQdjB5V255dENnV1dI?=
 =?utf-8?B?aG1jN2VuSWtJN01jVXpnbmVYUVdRT1doUFlaNFlYenR4WEUvMHB3N3BuWXpD?=
 =?utf-8?B?WHp5Y1F2TjJjeTVPamY0R3lvQUgwTVAyU2ZGQ2FDbThLcDZEakFRSUdZNW9R?=
 =?utf-8?B?dUE5MHFaWk0wNzRuVTl2alVoNjFBMGJ6eFh3UjBENDhDSGdhRmY0UThDNytO?=
 =?utf-8?B?SlREb3NJZllrME00bW8vcEtDdmYzd0p3dmdpQTJWYmhpRVRwcGZ0cENHRXFs?=
 =?utf-8?B?MzdYTFM4My9zcTFPd3pkQ1gxMytjSmRtcjBtTTNzRU5LN3RQVDVSc2YwVGxj?=
 =?utf-8?B?WjY4eURQVFVOQ1RRdDVGRnA3RTdpVE4vbnVMcWo0L1VEQmI0NjMyQ1pmaWl1?=
 =?utf-8?B?NHNEdisva3RBWFRscHgzNFdQZ0ZMb1d4RitScXc0ZDZpTTB1U1dwNHVzNmtH?=
 =?utf-8?B?TVdZbmh4QXRzU2hvZGJLMHFNb1FFVHN6bjZ0RzRrVkxCRGsxMnZ1RmVSeWM5?=
 =?utf-8?B?Mks1ZFYrQ0JBcXhkdmpCc2Exb1NJeTlQay9TajlCTHMrZmFYYWJxRmt6dHFE?=
 =?utf-8?B?ZmtVeWx1b1ZNNjZ0c1ZJOWFZREVIT1E1RWZYVWFqUDkrME1xTVJ3bW40VmNC?=
 =?utf-8?B?VzFmTCtENWEzT0hlWVJvQXNmYUd0NHI3NXB4WDFVWTlWa0REWTdZZVRzcE9C?=
 =?utf-8?B?cHZVR3R0NEdLSkNla2JwWmN0UTYweTNlZHE0SGdnbDdyUi81T3NUK2x4UUdn?=
 =?utf-8?B?dUtHcTRSdnBYQnA3NzhqYVZGYlM0cTJqb21tQmtrTEIzZjJROTBzNlR4Qzlv?=
 =?utf-8?B?bjBUcXYvaCtZWk9aTm9ac2w5cVhPd2Z0SjEycldNeno5OXR2U2tOeVRRUzZR?=
 =?utf-8?B?RVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D70E4D04402BA042A2DA1993E38196B5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8efef356-068a-4379-48a7-08dd182c7fa1
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2024 08:35:55.5269 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9sFrDz4BIWQIFDWx8Pv9+8Noh5ir1VVv0/TPcwG8NdLqpNtspCSkC811hl4xe/iI09F8i8p/12Kgqt0cIsKPoUrsBmpWrixpp1YukkJaOMc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7257
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

T24gV2VkLCAyMDI0LTEyLTA0IGF0IDE1OjMzICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOgo+
IEVuYWJsZW1lbnQgb2YgTE9CRiBpcyBhZGRlZCBpbiBwb3N0IHBsYW5lIHVwZGF0ZSB3aGVuZXZl
cgo+IGhhc19sb2JmIGZsYWcgaXMgc2V0LiBBcyBMT0JGIGNhbiBiZSBlbmFibGVkIGluIG5vbi1w
c3IKPiBjYXNlIGFzIHdlbGwgc28gYWRkaW5nIGluIHBvc3QgcGxhbmUgdXBkYXRlLiBUaGVyZSBp
cyBubwo+IGNoYW5nZSBvZiBjb25maWd1cmluZyBhbHBtIHdpdGggcHNyIHBhdGguCj4gCj4gdjE6
IEluaXRpYWwgdmVyc2lvbi4KPiB2MjogVXNlIGVuY29kZXItbWFzayB0byBmaW5kIHRoZSBhc3Nv
Y2lhdGVkIGVuY29kZXIgZnJvbQo+IGNydGMtc3RhdGUuIFtKYW5pXQo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgo+IC0tLQo+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmPCoMKgwqAgfCAyNQo+ICsrKysr
KysrKysrKysrKysrKysrCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Fs
cG0uaMKgwqDCoCB8wqAgNCArKysrCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyB8wqAgMyArKysKPiDCoDMgZmlsZXMgY2hhbmdlZCwgMzIgaW5zZXJ0aW9u
cygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2FscG0uYwo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMKPiBp
bmRleCA1NWYzYWUxZTY4YzkuLjc1MDYzMzQyYTEwMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jCj4gQEAgLTM2Nyw2ICszNjcsMzEgQEAgdm9pZCBpbnRl
bF9hbHBtX2NvbmZpZ3VyZShzdHJ1Y3QgaW50ZWxfZHAKPiAqaW50ZWxfZHAsCj4gwqDCoMKgwqDC
oMKgwqDCoGxubF9hbHBtX2NvbmZpZ3VyZShpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7Cj4gwqB9Cj4g
wqAKPiArdm9pZCBpbnRlbF9hbHBtX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQo+ICt7
Cj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRl
bF9kaXNwbGF5KHN0YXRlKTsKPiArwqDCoMKgwqDCoMKgwqBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlu
dGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOwo+ICvCoMKgwqDCoMKg
wqDCoHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOwo+ICsKPiArwqDCoMKgwqDCoMKgwqBp
ZiAoIWNydGNfc3RhdGUtPmhhc19sb2JmKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqByZXR1cm47Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGZvcl9lYWNoX2ludGVsX2VuY29kZXJfbWFz
ayhkaXNwbGF5LT5kcm0sIGVuY29kZXIsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNydGNfc3RhdGUtPnVhcGku
ZW5jb2Rlcl9tYXNrKSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHA7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBp
ZiAoIWludGVsX2VuY29kZXJfaXNfZHAoZW5jb2RlcikpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb250aW51ZTsKPiArCj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOwo+ICsK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGludGVsX2RwX2lzX2VkcChpbnRl
bF9kcCkpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBp
bnRlbF9hbHBtX2NvbmZpZ3VyZShpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7CgpUaGlzIGlzIHJlY29u
ZmlndXJpbmcgbG9iZiBldmVuIGlmIGl0J3MgYWxyZWFkeSBjb25maWd1cmVkPyBJcyB0aGF0Cndh
bnRlZD8KCkJSLAoKSm91bmkgSMO2Z2FuZGVyCj4gK8KgwqDCoMKgwqDCoMKgfQo+ICt9Cj4gKwo+
IMKgc3RhdGljIGludCBpOTE1X2VkcF9sb2JmX2luZm9fc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0s
IHZvaWQgKmRhdGEpCj4gwqB7Cj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jb25uZWN0
b3IgKmNvbm5lY3RvciA9IG0tPnByaXZhdGU7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2FscG0uaAo+IGluZGV4IDhjNDA5YjEwZGNlNi4uMmY4NjJiMDQ3NmE4IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgKPiBAQCAtMTIsNiAr
MTIsOCBAQCBzdHJ1Y3QgaW50ZWxfZHA7Cj4gwqBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsKPiDC
oHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlOwo+IMKgc3RydWN0IGludGVsX2Nvbm5lY3RvcjsK
PiArc3RydWN0IGludGVsX2F0b21pY19zdGF0ZTsKPiArc3RydWN0IGludGVsX2NydGM7Cj4gwqAK
PiDCoHZvaWQgaW50ZWxfYWxwbV9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7
Cj4gwqBib29sIGludGVsX2FscG1fY29tcHV0ZV9wYXJhbXMoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCwKPiBAQCAtMjEsNiArMjMsOCBAQCB2b2lkIGludGVsX2FscG1fbG9iZl9jb21wdXRlX2Nv
bmZpZyhzdHJ1Y3QgaW50ZWxfZHAKPiAqaW50ZWxfZHAsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3Qg
ZHJtX2Nvbm5lY3Rvcl9zdGF0ZQo+ICpjb25uX3N0YXRlKTsKPiDCoHZvaWQgaW50ZWxfYWxwbV9j
b25maWd1cmUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSk7Cj4gK3ZvaWQgaW50ZWxfYWxwbV9wb3N0X3BsYW5lX3VwZGF0ZShz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0Yyk7Cj4gwqB2b2lkIGludGVsX2FscG1fbG9iZl9kZWJ1Z2ZzX2FkZChzdHJ1Y3Qg
aW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpOwo+IMKgYm9vbCBpbnRlbF9hbHBtX2F1eF93YWtl
X3N1cHBvcnRlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsKPiDCoGJvb2wgaW50ZWxfYWxw
bV9hdXhfbGVzc193YWtlX3N1cHBvcnRlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXgg
NDgwNWJmNjgyZDQzLi5mZmQ5NmIxODdlNWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC01NSw2ICs1NSw3IEBACj4gwqAjaW5jbHVk
ZSAiaTl4eF9wbGFuZS5oIgo+IMKgI2luY2x1ZGUgImk5eHhfcGxhbmVfcmVncy5oIgo+IMKgI2lu
Y2x1ZGUgImk5eHhfd20uaCIKPiArI2luY2x1ZGUgImludGVsX2FscG0uaCIKPiDCoCNpbmNsdWRl
ICJpbnRlbF9hdG9taWMuaCIKPiDCoCNpbmNsdWRlICJpbnRlbF9hdG9taWNfcGxhbmUuaCIKPiDC
oCNpbmNsdWRlICJpbnRlbF9hdWRpby5oIgo+IEBAIC0xMTkwLDYgKzExOTEsOCBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QKPiBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLAo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGludGVsX3Bzcl9wb3N0X3BsYW5lX3VwZGF0
ZShzdGF0ZSwgY3J0Yyk7Cj4gwqAKPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9hbHBtX3Bvc3RfcGxh
bmVfdXBkYXRlKHN0YXRlLCBjcnRjKTsKPiArCj4gwqDCoMKgwqDCoMKgwqDCoGludGVsX2Zyb250
YnVmZmVyX2ZsaXAoZGV2X3ByaXYsIG5ld19jcnRjX3N0YXRlLT5mYl9iaXRzKTsKPiDCoAo+IMKg
wqDCoMKgwqDCoMKgwqBpZiAobmV3X2NydGNfc3RhdGUtPnVwZGF0ZV93bV9wb3N0ICYmIG5ld19j
cnRjX3N0YXRlLQo+ID5ody5hY3RpdmUpCgo=
