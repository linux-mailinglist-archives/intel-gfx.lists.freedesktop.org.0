Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61310A9E7D4
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 07:49:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52A7110E386;
	Mon, 28 Apr 2025 05:49:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MaSlMJVy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88C6210E37B;
 Mon, 28 Apr 2025 05:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745819363; x=1777355363;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=SwD/tBGFk+twmN/cY1VTW01jd4U+gGU9sE832i9uTQ4=;
 b=MaSlMJVy51oOC6P8J7Ffv1i+it38m4KG33KI5phyNrfd0nVatUXpW7s+
 rr5vTWRKLrzPJWjhoeily/7MeqEDdRIki6QMlsC4FB/5CEqJyDdhCE8yz
 hDAN3RnAIOnYr0cULXDmLWmlq+R74+aBfSiUSGectGCkcEoZz2L+VVO0Y
 KQCbiDpSY1AEmdmJkzXKObrs73KSQ8kfjtrQQtiCa4JPQMqS9L0XqOxgf
 G8HDsQkpliRFaZjwIAFgO96gJFJmqo4C+xcndjP2o3iabz+Y34T4Uf5kQ
 XRfglgGxTZ1Orvl+xstnoRP7PDtBPFA5AS/NNrH2rixIjjiHloyH2tqnk w==;
X-CSE-ConnectionGUID: t+RvMEqFTX6ywaAmK/tl3A==
X-CSE-MsgGUID: Y41jKGDGRd2rEGp92quWYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="46628684"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="46628684"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 22:49:22 -0700
X-CSE-ConnectionGUID: p6E34D87SmyVyOW+ELnK8Q==
X-CSE-MsgGUID: rT9/7f+nSFaYjO+vu4pcfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="134363271"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 22:49:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 27 Apr 2025 22:49:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 27 Apr 2025 22:49:21 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 27 Apr 2025 22:49:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VT1ahFfb53l/WVlUGiEDOPqd5nXhoQvhZ13ryT4tWhloMnhiseDaG/YasfW5MgcDCviWf1vEmFgnLiIQjbonDZUsRcxpesuIXjBwvusnQArtM0z4BFOJdQkGyaZjg3I1feRLYoKJZU2BnK0SxogWqhCTX3lNM7bwFmd6bnF1VChznJE/ZzPZYuukibuschDlCKKGSdjVPVEWznpzGJxvUYWAYphbJC2l0SQZv0k6GMH5z0KEpSkZxzEO0wVxaY0dEoqa83Do0ALzUddVG1mVMxXKyTvEWtuhbKvgvl+pJnsH91D02puyd9z+CquA0wS9eOFq8EDPqq4hX12/vejXHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SwD/tBGFk+twmN/cY1VTW01jd4U+gGU9sE832i9uTQ4=;
 b=qnRRiRvCBau3yzsBD7XWB3dpJENSr8GaEeYFuKSOPHT0/YB0lvRQY1pYJ/EPxicMSKdHftCMl1RN2hv3ORW2ejDn9keFV+yu46OVrOM8ZTXomSMLgV9+eJTEQyX/mGUHqBGri0uaWRH5B7j44YPbX0WWqEfoGF4ABKguW62ir2Dqz2MHKVkM98XkTipp/3aoBsYEPN6aF8acsUHoZ6O+Fu0ykHZVwQt8tMdlYc62AGDbQYlFHUtOTv2ckcbchzGIMTXAZFm9BsiZdfmZM2m8CVO5dK9A3n+F6qbNjtrbS3xTey9RFHuI537lhbQuFNaPL/a2Fr6Ik0vA/deieT/PxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ2PR11MB7617.namprd11.prod.outlook.com (2603:10b6:a03:4cb::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8678.31; Mon, 28 Apr 2025 05:48:51 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 05:48:51 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: Re: [PATCH] drm/i915/alpm: Check for alpm support before accessing
 alpm register
Thread-Topic: [PATCH] drm/i915/alpm: Check for alpm support before accessing
 alpm register
Thread-Index: AQHbtegnnTNOnmzgnEqywtHZWjVNkbO00LQAgAPF4wA=
Date: Mon, 28 Apr 2025 05:48:51 +0000
Message-ID: <9dc7cf02511c9a5a97710f975b0ff8a2b0731ff5.camel@intel.com>
References: <20250425132107.2926759-1-animesh.manna@intel.com>
 <CH0PR11MB54447CE1F826766BA5D928A8E5842@CH0PR11MB5444.namprd11.prod.outlook.com>
In-Reply-To: <CH0PR11MB54447CE1F826766BA5D928A8E5842@CH0PR11MB5444.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ2PR11MB7617:EE_
x-ms-office365-filtering-correlation-id: 20768533-3aad-46b5-4221-08dd86185a87
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?WG1DVWVWbndUN1oxem16bWE5SHN0dERlVmFkNndiVTB6cGttWVNybEpUbG5O?=
 =?utf-8?B?N1RBYXFmTFhPbkxydVRrdnVQUWdOOWF4UWFZSWVETUw3SGNjSC9LQ1dFQUVz?=
 =?utf-8?B?djVINUlMMTBSSk96eWJRek5ldm1uRHRMNHRvMmJtckVLRmxiNUVDbnlyanNu?=
 =?utf-8?B?SFROdS9ZaGdvZVJGelRLZC9mMnFxVFB1K09xUU1pOG1IWE1DVGRWU2tzZVhq?=
 =?utf-8?B?Z255d0xTb1RmMEg1cEZzamdnR1RqWUJNaDJwQTVaUUFKK1N5UFBKSFFLSlM3?=
 =?utf-8?B?L1RqZGRBWGw3UlYrZ3E0OXQ0NHEwR2RmM1JlQ0tWSG9lSklSRFEyc1ZsMDZW?=
 =?utf-8?B?bnVhbExIMHc5RVpXOWk4bkpnRURDY1dCNFBZOEhsYWRqam5rZTUybzJ4aXRP?=
 =?utf-8?B?eFAxcGdjSnB5enRnSExuSkpjOEFlYkJxQU5sTCtBYXgvc2RYdHNsdWFRYzJI?=
 =?utf-8?B?NUxOamltRnJtQmtRNTJVTUtnemFIMDdud0xIMGtBSHRIcUZ5V212WmVKRlFR?=
 =?utf-8?B?UnJwSi80dmpLUHY3ZUczTkNqRUIxQ0lvQ1JUbmQwdmRreE5hSTlhY25heXFu?=
 =?utf-8?B?Q3BrZERNNHZUOUEwdllvZjZsWFlsMDA5SjdJdVRXNy9OU3JZNTRUSGlQOVRH?=
 =?utf-8?B?em9oM0toZ0o5Nk4xR0FNL0RNNENKYzNCV3h0VWMxWU9xclVVb2dFZGxWUnU2?=
 =?utf-8?B?T2hMUkNSNGhRaDI0TllRM0ZMOXBVL0tITlU0L0l5dWFiMDZIckNnUWZOUlpx?=
 =?utf-8?B?eGIrRFZwbkRwKzZqWUZCNE9Ebng1UUlCcithOHpzV1hxd0VHUms0WUdVSFlV?=
 =?utf-8?B?eXZNMU1XWnhjTmlqRjBNOHl3alRhU0ZzZmVWYUNBWG1jVVo5cXl3WmYyUXlV?=
 =?utf-8?B?eksvMDI5Y1BtdXlGV0g3b0lXbjRGZnE4TmZENmNPUVNzS2JrbHVoTGJTTUcx?=
 =?utf-8?B?UVMrbGxUanI4TS8xSllnSWh3aTl3eEJmRnNSbjJIVHZnV3FiNWRsTnQ5ZU1M?=
 =?utf-8?B?T2dSZm1GLzVLVXVibmExZGhmcTlUQXE3aDRFVDg1TGRraE5pMmF0S1ZHZDdn?=
 =?utf-8?B?bXlqRzRlWXU5L2lqaHZIQ29hWnhxNlhtQ0ErOUR2Z25yaDBSWlF6NGJxR3U3?=
 =?utf-8?B?NEVxUVlqZUc5ZlFGY2RYTEQwQzVLVWEzS1g0cmNheHorQWd0aWhtT0dzY00r?=
 =?utf-8?B?MDdDMFNTcUFtSGEvMFhlYnArMXdiNE1kV3NuQ295RjgxUGtCc3JOVTc4Z0R6?=
 =?utf-8?B?NU9qdmZJeGVsNEZ3bWNvek9zYlRHSUJJdFRaaFZ3N2VXbmtQSmNwUGZYenNl?=
 =?utf-8?B?ZjJ5YmU3R2FVQ29QMmVqcW4veWRoUWNWbDdRTkhLQzNDOWdQVGJ1RHBnUmMz?=
 =?utf-8?B?YUp1OFRsTGEyaEpjcVRoakMzdlJIak14aU00dmJXRE1aV3hKaXpPd1N0VXU4?=
 =?utf-8?B?akp3NFNyaDJoRkpqMGlFR0RNd21Vc3R5b0tYM05ieW43enhiR3VhZWp2U3NN?=
 =?utf-8?B?L1ZRMzBKRFA5NU1LSE85Wkx0S2J0aU56bkpHcFRWN01pK25GR0VNNGVWUVlI?=
 =?utf-8?B?NUNGWDcvT3VoSU1WUGlSVEhTUjROTlYzbE0rSEprL0FPUXZVQ2dicXI0Rm0v?=
 =?utf-8?B?T21jR3QxcW5EK2RtVUZWcDRDWFVIaGRjOTFhZGhaUDduQ2ZmR1VXQ1hrWjZn?=
 =?utf-8?B?RzNPRlEyRVZIa2J5ckROZ3B6cWYxdEliU1BDc3VLcXQ5VzdXeTBBNVQyaWlq?=
 =?utf-8?B?SWRxMDNNclBRa1JiMU5jOVYxVko4c25ILzlaN3RDeGI0TUI3cXpRYWEreGN0?=
 =?utf-8?B?SVI5dzRkV3RHdFhaMVFNMVh1anRvSFVYZjNDQzdENGh3dTVaWEFEeFN2U0k5?=
 =?utf-8?B?KzdqSUhIcjVyeGxHOHBhMDloSUc4eWNJL2RHL1pDd2d6ZTRPRVdhWHUyRHFX?=
 =?utf-8?B?ZjRWbGJ0NWNXWVhhdzFVZGw3NGE1TTJiOGtlVk45VHQyZVFtdHNaSjhmZDFa?=
 =?utf-8?Q?i8466eyVIu9mbe5/1LUzBEbI7hfMe8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZS8yckp2Q3VvUStXOUdWYTRwOU9EN015dG80WHdhaFZvcHd5NmdnS054R3lU?=
 =?utf-8?B?WmtCbHBFYllTdU9ES0paelFSalR1K3VxemY0ZlpjN1JiV3FScUpheWtLcEdZ?=
 =?utf-8?B?YXU1VFRMUFFXbXpjVnUwNjNhUDRWL0hPc0ZieWdWejZhRlNXSllCem1ITHls?=
 =?utf-8?B?a0VHcXlHVnhLUUlQU2JKNHA2cXljNWs3Q3ZzUkkra1pSOC9rRGJWSXRqaGdT?=
 =?utf-8?B?cjhEcFlxOExQWTFqRUt6K2cyK1F4S0dScVY1c3EvV2pyTjFud1BsQVVEblo1?=
 =?utf-8?B?ZnN1b3MxQ001WlpoWm9KYmtCN2U2cnhHMVR1dWlmOEJuZ0tCbEYxS2lwZk1K?=
 =?utf-8?B?OXdhSHE2cVNPckc0cmcwQTV1cGg2Nm9ZRVBKZVduZVhIWUhkZXV5TktOTXh6?=
 =?utf-8?B?WlYrUDl1L2RoWmpmcmNUZkpFZ0diQzR3R3FDU1ZKTmxicHlxdTQxMFdqZUMr?=
 =?utf-8?B?YjNMWXJjUWQ3aVFwSkdod3BaMXVmQ0crRE10ZExid1BDVG4wanNOODUyQUdn?=
 =?utf-8?B?OUhyd2Q1dnhIdTNsT0g2NFNTZ3lzREZwVDBJSjZhWkdCdjl4cllGcWhKT1dY?=
 =?utf-8?B?V2syQ1FhK2R1UG9sakh4UmwxYnM2dngyZitKZXdwMGRrRFdVUTh2eWZpRzJL?=
 =?utf-8?B?NVhLYUdSYmZ5Wk5pZHFwc2d6K3NXUTg5REc2UjN2WXBpWVdvQ0YyRERaSDNt?=
 =?utf-8?B?NEtsSDFEbS9SVmRqWTV6S2RoengveDYzdWo3UEdKaHlZM1lYZmJCQ1gzRGVI?=
 =?utf-8?B?YlJRcGFJV2V5NVJyN0NqdFExRjNYV3dBZ294ZUIxUE0vT2JjbndvYmFKbEg5?=
 =?utf-8?B?T3hUSWlhQVN4WVNUM3ZVWUxRTkJ1U1A3Zmd4MU4raTJadm9kT3Zqa0YvVUNr?=
 =?utf-8?B?dFlZeEdPUUFmVTVKZDhobmlFQ2w0citxb1N6Q3d6SlI4TW9ZRnQwSHZTY1lq?=
 =?utf-8?B?N3k4bnErcGU4alY0YVJLcm9lbTZrOFBjWlVrQlREU0xxSmg4bmNmSVp1dEpP?=
 =?utf-8?B?K2luY3QyeW4zQWREZGU2cHMrZkkyTWdTMVdpSDJoclprV2xPMEdvZmV4RnM0?=
 =?utf-8?B?SlFzK2tRZ0wxN0NRS2JpQXp3WjR3U1pkaE1qMlJGOEQyZyt5WHVFcmZSTzZr?=
 =?utf-8?B?UlpXZkRUZVZrUU1qVk5Cam9hOU51K1BYdlR2dTA5R0pUOGpQdFpGUHBRUlR6?=
 =?utf-8?B?UXRPUTlEKzN0Q2ZJcm9wZmpNck5HMUlNVC9iYklzVmJDY2U3RDVEZDZjTllu?=
 =?utf-8?B?T2F1QmZDY0JjQkhJZzlJLzN0SDJyYXp6WCtEck1LQVQzNGJXN0doakF0VWNx?=
 =?utf-8?B?cFFCN3dSYnJRMzd3VTNpNi9BQXk2b0EvalFPT0F2SXcrUjJIYjJTNGNraW1h?=
 =?utf-8?B?UktvU1FCVFowZnpzYXB3K3hYb3NEZzNwdXFGa1ArY3BZbUhvZzZ3MzA1Y2xM?=
 =?utf-8?B?MkE0NDlvUUFMcFJiTDV1VnBsV0h1YWVkMDVkTUlGVGxhVklOUyt1ZStKZ3Rq?=
 =?utf-8?B?Rnkvak5mNFNHQ0w5Y0xBWWJ0ZEtjVEVtaU5KRER1dnFaSFdFUlBJL0pmV0ZD?=
 =?utf-8?B?cEkxODdsd28wMnltbXFmNG1vL3duVzNNTW9CN3pWNnVlWFVJbXhXRGs5MERO?=
 =?utf-8?B?S1hZbzdPTCs0b1RzU0tCcVFVZWdzYzZDMWREUjRUdVZZL3ZZWkxwc2VWMWlj?=
 =?utf-8?B?cUNyRUdSaHFqdmRyNlVMSnN5MUJSWmFFdE4zMUNTcHRaS1pSajN3d1Y4M2Q5?=
 =?utf-8?B?bUJFQVVJdFVrS2grVVJCUHBXZ2JXbEhUb1BSVnZ0MTRoczVmQ0p0U0Y1Qmkz?=
 =?utf-8?B?eXd1emY0bzhDaVg3NjRwc2FjdG5uOVI2ZG9wSGxuWmZicW15SGpaeXBnYnNI?=
 =?utf-8?B?SHlCSGlHUEpYRWpuTHBsQWdZZ3RoVVlQRkoxem80QkQ5NDNod01teGYvV2RR?=
 =?utf-8?B?bEw0ZFUxSHJlWEdVc3dhOHZZdE1GS2pyRHZMOEsrVkFaQXM5MzhuY2VGQVNS?=
 =?utf-8?B?RWxQZFZiMlpFeVppeWZJS1hhYm5GUE1EeGFYVTZNb0VPSE9UV2ZjR0QzODN0?=
 =?utf-8?B?NzlHNGIyYUt6ZTVBUzVwRTdsZnc5NlBSL1hnODB6MnZod3hHYzVjaElZYTF1?=
 =?utf-8?B?Y0JaYS8zcWVYVmhydFdXVlYreTloa0FkNmZNOGwwY054dzl2U04wUFhCNC9Z?=
 =?utf-8?B?YzFWQ1psR01wMUdUWVVUTGhndmtJc09zanNoTU5hWHJhN2FtUzhST0dmN3NR?=
 =?utf-8?B?and0QVlrV25Hbmhsbk1CLzgxKzNRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0CE37B23F98FCE4181BB6B78AAA55950@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20768533-3aad-46b5-4221-08dd86185a87
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2025 05:48:51.2102 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V1EY+tvSJ7ub/zByZgPTXRFemD/oZwT/cIAg0X9SCtWHvcoQ9L+jf8WJ2I105TQen+LSHcC9tkOnwl2NjrQaF0+7RUqCj3U1VOeJ9suSw/0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7617
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

T24gRnJpLCAyMDI1LTA0LTI1IGF0IDIwOjExICswMDAwLCBDYXZpdHQsIEpvbmF0aGFuIHdyb3Rl
Og0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwt
eGUtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBBbmltZXNo
IE1hbm5hDQo+IFNlbnQ6IEZyaWRheSwgQXByaWwgMjUsIDIwMjUgNjoyMSBBTQ0KPiBUbzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnDQo+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT47IE1h
bm5hLCBBbmltZXNoDQo+IDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BB
VENIXSBkcm0vaTkxNS9hbHBtOiBDaGVjayBmb3IgYWxwbSBzdXBwb3J0IGJlZm9yZQ0KPiBhY2Nl
c3NpbmcgYWxwbSByZWdpc3Rlcg0KPiA+IA0KPiA+IEN1cnJlbnRseSBhcyBFRFAgb25seSBzdXBw
b3J0IGFscG0gYW5kIGNoZWNrIGZvciBhbHBtIHN1cHBvcnQgd2lsbA0KPiA+IHByZXZlbnQgRFAg
Y29ubmVjdG9yIHRvIGFjY2VzcyBhbHBtIHJlZ2lzdGVyLg0KPiANCj4gSSdkIG1heWJlIHJld29y
ZCB0aGlzIGFzOg0KPiAiIiINCj4gQ3VycmVudGx5LCBvbmx5IEVEUCBzdXBwb3J0cyBhbHBtLsKg
IFNvLCBjaGVjayBmb3IgYWxwbSBzdXBwb3J0IGFuZA0KPiBwcmV2ZW50IHRoZSBEUCBjb25uZWN0
b3IgZnJvbSBhY2Nlc3NpbmcgdGhlIGFscG0gcmVnaXN0ZXIgaWYgZG9pbmcNCj4gc28gaXMgdW5z
dXBwb3J0ZWQuDQo+ICIiIg0KPiBJIHdvbid0IGJsb2NrIG9uIHRoZSByZXdvcmQsIGhvd2V2ZXIu
wqAgQXMgaXMsIHRoaXMgcGF0Y2ggaXMNCj4gUmV2aWV3ZWQtYnk6IEpvbmF0aGFuIENhdml0dCA8
am9uYXRoYW4uY2F2aXR0QGludGVsLmNvbT4NCj4gLUpvbmF0aGFuIENhdml0dA0KDQpCZWZvcmUg
bWVyZ2luZyB0aGlzOiBwbGVhc2UgY29uc2lkZXIgYWRkaW5nICJGaXhlczoiIGxpbmUuDQoNCkJS
LA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmlt
ZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jIHwgMiArLQ0KPiA+IMKgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+IGluZGV4IDQ4MmRk
MTkyZDQ3ZC4uMWJmMDhiODBjMjNmIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiBAQCAtNTU2LDcgKzU1Niw3IEBAIHZvaWQgaW50ZWxf
YWxwbV9kaXNhYmxlKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCkNCj4gPiDCoAlzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+ID4gdG9faW50ZWxfZGlzcGxheShpbnRlbF9k
cCk7DQo+ID4gwqAJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gaW50ZWxfZHAtDQo+
ID4gPmFscG1fcGFyYW1ldGVycy50cmFuc2NvZGVyOw0KPiA+IMKgDQo+ID4gLQlpZiAoRElTUExB
WV9WRVIoZGlzcGxheSkgPCAyMCkNCj4gPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIw
IHx8ICFpbnRlbF9kcC0+YWxwbV9kcGNkKQ0KPiA+IMKgCQlyZXR1cm47DQo+ID4gwqANCj4gPiDC
oAltdXRleF9sb2NrKCZpbnRlbF9kcC0+YWxwbV9wYXJhbWV0ZXJzLmxvY2spOw0KPiA+IC0tIA0K
PiA+IDIuMjkuMA0KPiA+IA0KPiA+IA0KDQo=
