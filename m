Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLw2CLwFzmnPkQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 07:59:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C13E43843BA
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 07:59:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DF6910F054;
	Thu,  2 Apr 2026 05:59:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oImtpc0b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72E5810EFE3;
 Thu,  2 Apr 2026 05:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775109558; x=1806645558;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=dEThQg5mmheujRXE5wNCpxhqC7aYOFTXuNR39ImfS/U=;
 b=oImtpc0bqnr3XYr/1teCfzwhf68l2S4t4BzEWUM46zHa9ZuU50rTBSc6
 VFNP1yqnLNkDKyOMagBHL556pdQAdg4FcSjUH91xTa3fRI2iheiWnw7zA
 mThQ8Z9o0tw6KeByeCFNQ7+lmvMdcRxqNeq21Wuk521mCNMZCn5qulk8T
 Kf5qX6X1HnSMsr5xY5lZn3Qb74ukXHw+C2lFp+cBbaOOe1loC/3iftgwN
 XfpOverQL5dIpKxJVvDlQYqmBOkSgOG2yhrhmXkaUY8FLASLXshJfS2iF
 3IrlwcZEz9g2JYuHO7wSMCOFU4kbY5bbHA3gc0dAOpa5cVMV/bCLbKzWu w==;
X-CSE-ConnectionGUID: eeleyxaARviD7EMpb+xARw==
X-CSE-MsgGUID: brEn4O57S1yXF8sZzgWXPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="76277501"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="76277501"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 22:59:17 -0700
X-CSE-ConnectionGUID: +l38FrejSb+xSrj8ANVkhw==
X-CSE-MsgGUID: I9SBv+38QmmWI/hZrhoncQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="231833403"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 22:59:17 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 22:59:16 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 22:59:16 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.44) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 22:59:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dRmREUnwqIXmNNXJA6D1PiY5YZ0W3zSKqR6fQ70F01kLGJ9u7Wq2WTN4kOKWRQ0pzC4eGcGsg3IiYEaor63EMJTQRnNCBBOSS2gZI3mUA3WY39actE/byxFsi1nSbJeYIjP84hseexHz/yUCKiRk6byWX6FxRFkad3KE+gf9KZ5MosPL8Fsb2QX2Qf73JfKYqG7gzzw1BQ3kq8LP6ddbNR8gUCMODBw5Q0LW4NwcW6HMc5zJIzq7djNEEtYQxsXYjM8RCTCC867anpPX3YIyC0Q4DsB+Zs52iGqNeQPPKkWteUufYwfVw8Xm/uEIDOIMCxdqYUAgLP3KmAaqhUtt1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/5x47shNdkVNVC8TKZfTfxNXXuOrxJd1gKTq5Tt8vOk=;
 b=H1LB0Rbtf+0XwtsISAQuJhEa/h/1z9LCXLFuhPDekJp7W1Gb+w1Llnhb25hj2KTmSxDDoIZRUlLU2VerMdawEOAj165UgWFMKax2UETrm2d5v3WsS1WMjW2iZtmd1mWJoLMKSGm3XPd6ygqSab3wslt2X4/wpON+YDPQqCinU6nJ2Oilzd9PUn8yj3jSfBW6JvNbqD75+hI9C7AA1xOJy6YIj+WCykAJyhzCHYySnncgFaSDhCf1BrCOdVWZUS1nP3TgSZ7cvtMuqfsRBR9UfXRvlwyQbyFCeMtrjbHctIqPeCyqpvRXGZrio1prEQoHv8FyfBHST4DoeGcVTD9PIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6508.namprd11.prod.outlook.com (2603:10b6:208:38f::5)
 by PH3PPF6E8D29981.namprd11.prod.outlook.com (2603:10b6:518:1::d2d)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Thu, 2 Apr
 2026 05:59:09 +0000
Received: from BL3PR11MB6508.namprd11.prod.outlook.com
 ([fe80::53c9:f6c2:ffa5:3cb5]) by BL3PR11MB6508.namprd11.prod.outlook.com
 ([fe80::53c9:f6c2:ffa5:3cb5%7]) with mapi id 15.20.9769.016; Thu, 2 Apr 2026
 05:59:09 +0000
Date: Wed, 1 Apr 2026 22:59:01 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Joel Fernandes <joelagnelf@nvidia.com>
CC: <linux-kernel@vger.kernel.org>, Miguel Ojeda <ojeda@kernel.org>, "Boqun
 Feng" <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, Bjorn Roy Baron
 <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, "Andreas
 Hindborg" <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, "Trevor
 Gross" <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Dave Airlie
 <airlied@redhat.com>, Daniel Almeida <daniel.almeida@collabora.com>, "Koen
 Koning" <koen.koning@linux.intel.com>, <dri-devel@lists.freedesktop.org>,
 <rust-for-linux@vger.kernel.org>, Nikola Djukic <ndjukic@nvidia.com>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
 <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Jonathan Corbet
 <corbet@lwn.net>, Alex Deucher <alexander.deucher@amd.com>, Christian Koenig
 <christian.koenig@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 "Joonas Lahtinen" <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui
 <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Thomas Hellstrom
 <thomas.hellstrom@linux.intel.com>, Helge Deller <deller@gmx.de>, Alex Gaynor
 <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, John Hubbard
 <jhubbard@nvidia.com>, Alistair Popple <apopple@nvidia.com>, Timur Tabi
 <ttabi@nvidia.com>, Edwin Peer <epeer@nvidia.com>, Alexandre Courbot
 <acourbot@nvidia.com>, Andrea Righi <arighi@nvidia.com>, Andy Ritger
 <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>, Balbir Singh
 <balbirs@nvidia.com>, Philipp Stanner <phasta@kernel.org>, Elle Rhumsaa
 <elle@weathered-steel.dev>, <alexeyi@nvidia.com>, Eliot Courtney
 <ecourtney@nvidia.com>, <joel@joelfernandes.org>,
 <linux-doc@vger.kernel.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v10 07/21] gpu: nova-core: mm: Add TLB flush support
Message-ID: <ac4FpcD29XnbbsdD@gsse-cloud1.jf.intel.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-8-joelagnelf@nvidia.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260331212048.2229260-8-joelagnelf@nvidia.com>
X-ClientProxiedBy: MW4PR03CA0028.namprd03.prod.outlook.com
 (2603:10b6:303:8f::33) To BL3PR11MB6508.namprd11.prod.outlook.com
 (2603:10b6:208:38f::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6508:EE_|PH3PPF6E8D29981:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e9cbddd-3c90-4e0d-2081-08de907cf4f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: xOpxodA7nlGsTu1GBpLhmjG+1aEw8tWu3lW5GeB0mbR/pMn/BixWdREvgqOl2uDn8yVhnTJs1MSuOhQyBdmuvcO3cwEOFoENTMyXrzAeYKd+8lFjsfcLMHpP8q2BtMOtZkwaBFNoCBVB6c8RQB/J85kU12RDdpxFR7BRk+gBfBcDNNlT4XpCdEqzDrteHINEj02feVnVsBW0Chpqe/W+LdxM/gSAD7QU5Y5fx6Tqk/W8kH9wtyTzgfNmj8T7j6N6WXHrBp3bo2l+Nsae+EiCfS3l0y4xLhnC8vfnS6535+p1wzMEog2qvSbVkOT4Oh1s7gF93nj8rR4JMMmI9y6q1d8dZQXr5QP0ARSgouYN8pLc5Vwiud+9RDYEC4e2Bm4g8eB3yEM1CBxuLcU/ovr5gLOv5mkPtjn9l7csaaIeVaGJmH6KelnB4k/1Fv2N+zswsSaog5zYvYn76DQDckHoaiQa/L90xjS6n6vb8ZZI40x5w4RA1+PeW9OQKgCc9BPw2wQVQZCAG5oTnVN/rwMw1rvc4iKL11Y89zE6R40WWu3k5CpExJ5Xm+ilI65weurby0vUbIITbgmRUW9RwCqGdcNmkfVD/7o/vUeiw7amtTJ76Jgrl7vn2OT9tHhKQeDzGeMEr+FcSl8ZwFm/J6+4KaqlPnRZh9tIg2uCRAn0jBh60KSyTpi8TaXpkduEqVTgbM9+xS9u+oAIYN5C5Tr3hQxxXKrsKsUVJZtuX+fHYX8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OUNnemQ0MTZPZmRIVE9BWmlCQ1R0bFNPL0MwQVdybFhHUDVSRDFhNkFJZ1ZK?=
 =?utf-8?B?ekFoSnV6ck83Y0I3WHQ5MXYzeWdidVBsUXJhLzkxMkkzZmVRQUFwcFNFVGxw?=
 =?utf-8?B?S0duVzBua1pURzZjU0RydVJkZUhKcHkwajVNZnNUeTZtNmFNNUlQVlZzUGdt?=
 =?utf-8?B?MFFTTEtMRjFyTXpHc3JYNCtFeVNaSTRUL2JPUGxPQk94RHZXY2U1ZTVhWEpY?=
 =?utf-8?B?MFdwMjhhZEJOd3ZnSEZ3d29tWnR6REFjdmpSOFFPeHBscXI4ZmRyVUZZQTcz?=
 =?utf-8?B?dEI2cE9BMDd4S3RXMTUyTjd3QU5vT3FpZWpuR0FIaEZkRlVhYmlFMFdEODRy?=
 =?utf-8?B?Z0RRU0RpaStRbzN2VU9VSUZ4VW5oZFJ2eXlSZlN3aTZ6dkt0bkV2UGlIVjl2?=
 =?utf-8?B?TWt6REhwUjBBcjMyYUM3MVNOMjE1dWNGV1BNQ3NNNTdSOEFNa3FlWkkxTVFp?=
 =?utf-8?B?d0tpTDNTdnFWTytyZmRnSUdhd0ZlYjJXRDZQYjBIQVlKS3NhMlIzemkwanM3?=
 =?utf-8?B?T05xS0gwMzhucEhmL3dXbGovbzhHdGpMeDlOK2xqWmg3aHR4VmhtWkwvS0ZO?=
 =?utf-8?B?a1RIQko1VlFuSnVWdzlmNjQwVUFZcDdkZUk3dTRrUFdqVVA1SnJUQTg5YUxD?=
 =?utf-8?B?N0FZdVgvc2Y1Mm1MbkR6d3ZFdFp4cERHM1ozOE4rVGtBMkN1V2RpK2VQR3Rj?=
 =?utf-8?B?cU9hdGhmWFZ2amNDWm4vNGhpb0d0OTVzSlVkeHV2N1ljczVac2Ztcmw4d2NN?=
 =?utf-8?B?NllYaC9GQ3JsY3VFWlVYUVhaZjhuYXZRem1wN2NNdFhHSXhRU1BqK1dEVEwr?=
 =?utf-8?B?eDZ1eEZXa1phOVUvYldJUi9wRjBydFFJSTN4UElaQkFLUXRTNWMwWjJZdFBZ?=
 =?utf-8?B?K0NESUI1dTh1T2NvZ00zaWhuRWV5ZjV4VjVDVzVRdWxWUytCUHBsSUI4ckJQ?=
 =?utf-8?B?TCtnRzNzQnNSbWRJeTFZSlFuNFErYTJpMjhXb0lZT285Ri9UNWNIdWdhWGVC?=
 =?utf-8?B?N2sxRGl0UDlKRTRMUnhsdmNqcHEvV3dQeUE0MGhSNDRyU0FEN3NkenVCNnRH?=
 =?utf-8?B?YmNGWDZXbDUwNlp5bGRCSkNWYlVMaHAxSEgvSzMwN2FhWHUreFlKeEZYQnFn?=
 =?utf-8?B?TGdQWjRZUmNwaWlib2Z6cTBzUHVlTGlLWndRQ002SDE1dVhPN2RmamNBaFg4?=
 =?utf-8?B?em4ybG91dUhFZmk4WElpTmQzOFJPdDdndmZHN1JwWU1wNTdILzV0U01tTE9M?=
 =?utf-8?B?ZnFUMWtjdnMrSDhaNitpdnBiaDZLaWNmQ0ZOV25ldjcxSFoyMEdIZk1KZUJN?=
 =?utf-8?B?QlBQVEMyUFNnNHJMbGRVN0R5Y0IxUVBHN2htanYwUFVGelNVUjBpQzdBOXBl?=
 =?utf-8?B?MFFvWE05OVBDanl2Si9wVERvOEtnNTZKbVJmcHVaeG1QRElvV1NhQnptMkMv?=
 =?utf-8?B?cHE2UU1pVlpMMVVmYy9FQWdkLzdaRFpmSzd0R3dNUDhIUUwya3JRZVZtYnUz?=
 =?utf-8?B?VzBkQUVnNmhoNnN3OFVxSVhrNUJSMjZnczg3ZCtUM3VtZnlPLzd6Nkcwb0Q4?=
 =?utf-8?B?dDQxSlVQNHlldUIzZEtaY0YwWDdJYW55c2Zla3JpSzdJTnNORmc1UlZLOHZY?=
 =?utf-8?B?emVUazlzU0NydXZSdHNNWm90US9DL3FFeEFHRFhwV0I2YjlGVGZydnJ5QWoy?=
 =?utf-8?B?bXFjRFdGRVVYNFRFOHVVM0pDTEF5RTZvb1pIYjBhaHNxT2Zzb2t1SmVPZ1Za?=
 =?utf-8?B?TEdEcVBDcXhYVmR2U3Y1NXpuMHBmNDdQdDNPRGJENGpQcEJnY3I1Nkp6cDI5?=
 =?utf-8?B?aHVma2I4OVkwaTRhSGJCZjI4eC9lVGszRC9DSlByRm1TNEc2dEFWRC96ZFR4?=
 =?utf-8?B?UzhlaUgzclZlVm16ZStlOEoxb3IzUG9ZZlBQMU1XbHNEdDU5YWtIL3FZMVN3?=
 =?utf-8?B?QTlJUGhsUTZKTVFVRG5tSW52ZUVxbjZ5S3JLZ01wcVRGeTNvRHRBcDl3NUxs?=
 =?utf-8?B?ZlhheDQ0ODA2WVlCZmxsaDdtVkpJZkVDVDFyR3hQb0JUWjhUR2JXemVTQTJx?=
 =?utf-8?B?L3lSL29hekp5VVdIbFRTTEVOVTRsUVVsZTNmd0E1TnBCUC80K2lOV2JlMVdj?=
 =?utf-8?B?V2dHdnhDVjlPN1gyeFBZZWV6TzlsWnhBcCttc1d0VE9iYXUwK0VwUjRNVWc2?=
 =?utf-8?B?Ukl5a1dzMms0b2FDaHViOW1mcm5rUWVPZlloblNEUXN3d1pNdGJzc0dTZGJU?=
 =?utf-8?B?bFFjaUVrcFVpdG1kTFdBRVF1eHZ4T3Z2Slhrc1JvQytTdzRiRU0vRGlMTVUx?=
 =?utf-8?B?eDFaK2ltQ0ZXV2JETUhYbWVRTmxXUkZrQk1qNGd2RzlCYzBONFhKaVJ2OWRw?=
 =?utf-8?Q?eNWtQbteiPeSayxA=3D?=
X-Exchange-RoutingPolicyChecked: QFZrfHCTTB+t2IuMt2TYF4XlH0NJ3/H8/AUPf6hi8Ah9LF7emq/rroechEJbfyk69/Zf+Bif/tROh37tvK/VfFws1Z75HJXdKbrRVYujxpewMKzSV0IxEPugSZRRlaUZSGagk+CiHRJY3hAXdqi0vEyCzEd/qOdewz8vtEs3K8AsBUzG+l8Lli7le8sdV2YGhLX5Guz6x/EhzKtjvlm92KVe3loLOosrfSL4aNVtZ+0JpMxlAqPwX5WfVVeRveaj35HWu57r4rgBpy7hCbRTfJUCso/T+QeD9aRzrZyApPtLHoMEKJNSOBRgE343YjlJuovflRYZMgjo63mZ4LVoXg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e9cbddd-3c90-4e0d-2081-08de907cf4f9
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2026 05:59:09.4712 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cdoTGzorVfux/lARXkmM5ygx3EY8wltPkEEu4jkTSmyk8KTV9cqNnAimxRbqxOO63bhORT6vC5t7uSemtZgZZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF6E8D29981
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
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gsse-cloud1.jf.intel.com:mid,nvidia.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C13E43843BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 31, 2026 at 05:20:34PM -0400, Joel Fernandes wrote:
> Add TLB (Translation Lookaside Buffer) flush support for GPU MMU.
> 
> After modifying page table entries, the GPU's TLB must be invalidated
> to ensure the new mappings take effect. The Tlb struct provides flush
> functionality through BAR0 registers.
> 
> The flush operation writes the page directory base address and triggers
> an invalidation, polling for completion with a 2 second timeout matching
> the Nouveau driver.
> 
> Cc: Nikola Djukic <ndjukic@nvidia.com>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> ---
>  drivers/gpu/nova-core/mm.rs     |  1 +
>  drivers/gpu/nova-core/mm/tlb.rs | 95 +++++++++++++++++++++++++++++++++
>  drivers/gpu/nova-core/regs.rs   | 42 +++++++++++++++
>  3 files changed, 138 insertions(+)
>  create mode 100644 drivers/gpu/nova-core/mm/tlb.rs
> 
> diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
> index 8f3089a5fa88..cfe9cbe11d57 100644
> --- a/drivers/gpu/nova-core/mm.rs
> +++ b/drivers/gpu/nova-core/mm.rs
> @@ -5,6 +5,7 @@
>  #![expect(dead_code)]
>  
>  pub(crate) mod pramin;
> +pub(crate) mod tlb;
>  
>  use kernel::sizes::SZ_4K;
>  
> diff --git a/drivers/gpu/nova-core/mm/tlb.rs b/drivers/gpu/nova-core/mm/tlb.rs
> new file mode 100644
> index 000000000000..cd3cbcf4c739
> --- /dev/null
> +++ b/drivers/gpu/nova-core/mm/tlb.rs
> @@ -0,0 +1,95 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +//! TLB (Translation Lookaside Buffer) flush support for GPU MMU.
> +//!
> +//! After modifying page table entries, the GPU's TLB must be flushed to
> +//! ensure the new mappings take effect. This module provides TLB flush
> +//! functionality for virtual memory managers.
> +//!
> +//! # Example
> +//!
> +//! ```ignore
> +//! use crate::mm::tlb::Tlb;
> +//!
> +//! fn page_table_update(tlb: &Tlb, pdb_addr: VramAddress) -> Result<()> {
> +//!     // ... modify page tables ...
> +//!
> +//!     // Flush TLB to make changes visible (polls for completion).
> +//!     tlb.flush(pdb_addr)?;
> +//!
> +//!     Ok(())
> +//! }
> +//! ```
> +
> +use kernel::{
> +    devres::Devres,
> +    io::poll::read_poll_timeout,
> +    io::Io,
> +    new_mutex,
> +    prelude::*,
> +    sync::{
> +        Arc,
> +        Mutex, //
> +    },
> +    time::Delta, //
> +};
> +
> +use crate::{
> +    driver::Bar0,
> +    mm::VramAddress,
> +    regs, //
> +};
> +
> +/// TLB manager for GPU translation buffer operations.
> +#[pin_data]
> +pub(crate) struct Tlb {
> +    bar: Arc<Devres<Bar0>>,
> +    /// TLB flush serialization lock: This lock is acquired during the
> +    /// DMA fence signalling critical path. It must NEVER be held across any
> +    /// reclaimable CPU memory allocations because the memory reclaim path can
> +    /// call `dma_fence_wait()`, which would deadlock with this lock held.
> +    #[pin]
> +    lock: Mutex<()>,
> +}
> +
> +impl Tlb {
> +    /// Create a new TLB manager.
> +    pub(super) fn new(bar: Arc<Devres<Bar0>>) -> impl PinInit<Self> {
> +        pin_init!(Self {
> +            bar,
> +            lock <- new_mutex!((), "tlb_flush"),
> +        })
> +    }
> +
> +    /// Flush the GPU TLB for a specific page directory base.
> +    ///
> +    /// This invalidates all TLB entries associated with the given PDB address.
> +    /// Must be called after modifying page table entries to ensure the GPU sees
> +    /// the updated mappings.
> +    pub(crate) fn flush(&self, pdb_addr: VramAddress) -> Result {

This landed on my list randomly, so I took a look.

Wouldn’t you want to virtualize the invalidation based on your device?

For example, what if you need to register interface changes on future hardware?

Or, if you’re a VF, can you even do MMIO?

I’d relayer this.

Matt

> +        let _guard = self.lock.lock();
> +
> +        let bar = self.bar.try_access().ok_or(ENODEV)?;
> +
> +        // Write PDB address.
> +        bar.write_reg(regs::NV_TLB_FLUSH_PDB_LO::from_pdb_addr(pdb_addr.raw_u64()));
> +        bar.write_reg(regs::NV_TLB_FLUSH_PDB_HI::from_pdb_addr(pdb_addr.raw_u64()));
> +
> +        // Trigger flush: invalidate all pages and enable.
> +        bar.write_reg(
> +            regs::NV_TLB_FLUSH_CTRL::zeroed()
> +                .with_page_all(true)
> +                .with_enable(true),
> +        );
> +
> +        // Poll for completion - enable bit clears when flush is done.
> +        read_poll_timeout(
> +            || Ok(bar.read(regs::NV_TLB_FLUSH_CTRL)),
> +            |ctrl: &regs::NV_TLB_FLUSH_CTRL| !ctrl.enable(),
> +            Delta::ZERO,
> +            Delta::from_secs(2),
> +        )?;
> +
> +        Ok(())
> +    }
> +}
> diff --git a/drivers/gpu/nova-core/regs.rs b/drivers/gpu/nova-core/regs.rs
> index a3ca02345e20..5e3f5933a55c 100644
> --- a/drivers/gpu/nova-core/regs.rs
> +++ b/drivers/gpu/nova-core/regs.rs
> @@ -548,3 +548,45 @@ pub(crate) mod ga100 {
>          }
>      }
>  }
> +
> +// MMU TLB
> +
> +register! {
> +    /// TLB flush register: PDB address bits [39:8].
> +    pub(crate) NV_TLB_FLUSH_PDB_LO(u32) @ 0x00b830a0 {
> +        /// PDB address bits [39:8].
> +        31:0    pdb_lo => u32;
> +    }
> +
> +    /// TLB flush register: PDB address bits [47:40].
> +    pub(crate) NV_TLB_FLUSH_PDB_HI(u32) @ 0x00b830a4 {
> +        /// PDB address bits [47:40].
> +        7:0     pdb_hi => u8;
> +    }
> +
> +    /// TLB flush control register.
> +    pub(crate) NV_TLB_FLUSH_CTRL(u32) @ 0x00b830b0 {
> +        /// Invalidate all pages.
> +        0:0     page_all => bool;
> +        /// Enable/trigger flush (clears when flush completes).
> +        31:31   enable => bool;
> +    }
> +}
> +
> +impl NV_TLB_FLUSH_PDB_LO {
> +    /// Create a register value from a PDB address.
> +    ///
> +    /// Extracts bits [39:8] of the address and shifts it right by 8 bits.
> +    pub(crate) fn from_pdb_addr(addr: u64) -> Self {
> +        Self::zeroed().with_pdb_lo(((addr >> 8) & 0xFFFF_FFFF) as u32)
> +    }
> +}
> +
> +impl NV_TLB_FLUSH_PDB_HI {
> +    /// Create a register value from a PDB address.
> +    ///
> +    /// Extracts bits [47:40] of the address and shifts it right by 40 bits.
> +    pub(crate) fn from_pdb_addr(addr: u64) -> Self {
> +        Self::zeroed().with_pdb_hi(((addr >> 40) & 0xFF) as u8)
> +    }
> +}
> -- 
> 2.34.1
> 
