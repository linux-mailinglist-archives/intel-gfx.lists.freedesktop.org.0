Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHplOsCS1GnGvQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 07:14:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FE43A9DAE
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 07:14:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB95B10E329;
	Tue,  7 Apr 2026 05:14:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lI7cGzcL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2600210E222;
 Tue,  7 Apr 2026 05:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775538874; x=1807074874;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=BQYulf5GtIbuxct6lVW8qNPjTSDptcpDshOyEiEr1Lg=;
 b=lI7cGzcL8KTn3lko/SMvPeNpr68XiKQi3zlU+zZIathRleQ+9vmtnfSx
 EDubN8zoe2eIQAqVBeCgq3vJ/ALXdrxiyOs/wpgxXc/MEmQrcPwpb3MWn
 0tExoyROimofv6M3M1sInLa8MmBKjjuTB3leZOnAJjc7ISCmqj5fckTOI
 ixzrrW9ZUsDUCyQADLVbdSBLDBxdkqlqLQDIjjoY1cpNVzvEDLxwR2uGl
 jkcU98XyJGkzFxY5pCNEdZoQ1xsFcZ7Hp9S34Ubrloa/DTEZJfrVJpzvt
 0zzAbg2g1bvfofLd0oNo4Q4//DRHZWFPxcmFc5Wdn3b5HQWtkJYeZLEzG w==;
X-CSE-ConnectionGUID: 30VgKWGhQOqxk28IUbDcyg==
X-CSE-MsgGUID: j+etyaFwRoW3F+f1C6EYeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="93883719"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="93883719"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 22:14:33 -0700
X-CSE-ConnectionGUID: 1WT9Qqq0T7qeDD2vn34LVA==
X-CSE-MsgGUID: 2Bg4IszlT+mLDKNI5D5+yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="227971087"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 22:14:33 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 22:14:31 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 22:14:31 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.59) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 22:14:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kDn921XdBwdRH1dseYW9vRrAk89yBiDTrIdo11oOnl8i/ozXqEFxWFxl7wB67KXLUYCywrKLws9t7bfWODTVkXQQnb9k4d39D1md7KMS936y6rtlrObCFUr3PzmdJFXfcjgcWFmdYohu9TZEtjqZX0NB4eE4nX5NlFU7NwpwwrBXmBwXux/tDSGel5pPluO4Wxxr1nlxIEuGTLBsH0dirPeTeatGjjRCntWi6Opnb8q7kq8MI+9ZU1FIE1LMiNypdr/JACHQ8HYqCT75s7YNb/YuopLmmPiaXcG3GOc1HNXCdabakLDxpf6Q1gKSEaWlZvUk/bTuE5Q8+y3V4uImsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r1RW+tWce/wOGZbNz6J0eGGNzIUBGcePzLpp3Pir9R0=;
 b=YPVTN5+hL9GR7jUb2kEwxJKlcTfe9cs7zULzLwHJvaWKCM6fCtjVLRV578Qi0ZDXOHlN9rDJmnUtSOCP9IDDVMBaieXpbWUJKd3nsEY1T27O3+aqazy8pAZlYP9C2J5G1CU0HAgdFLn+icCJIKsDj27k/QHke+TdHl3BxxqAF7Xxgv2ZtP9YNbORG7jyWCEwsLCGMIZox+O5EeKynuv6YD5id5AZHlcD0e/PALYbFJT4bnof8sfWRWSZ0VdlxG3PgrvNJjvL1Xhx7I3p8plQ2sOMbYIqLCQhBRZkLlja37tzlQElW9cenpNccamV2znMMOXDo+3HFKIVtF40/BruiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6508.namprd11.prod.outlook.com (2603:10b6:208:38f::5)
 by MW4PR11MB6911.namprd11.prod.outlook.com (2603:10b6:303:22d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Tue, 7 Apr
 2026 05:14:28 +0000
Received: from BL3PR11MB6508.namprd11.prod.outlook.com
 ([fe80::53c9:f6c2:ffa5:3cb5]) by BL3PR11MB6508.namprd11.prod.outlook.com
 ([fe80::53c9:f6c2:ffa5:3cb5%7]) with mapi id 15.20.9769.016; Tue, 7 Apr 2026
 05:14:28 +0000
Date: Mon, 6 Apr 2026 22:14:21 -0700
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
Message-ID: <adSSrZp6a551xNTu@gsse-cloud1.jf.intel.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-8-joelagnelf@nvidia.com>
 <ac4FpcD29XnbbsdD@gsse-cloud1.jf.intel.com>
 <0f5605c1-32e8-4a62-b852-b1db01e42817@nvidia.com>
 <39a476f4-ecac-4313-a59f-e00e72d2b426@nvidia.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <39a476f4-ecac-4313-a59f-e00e72d2b426@nvidia.com>
X-ClientProxiedBy: BYAPR02CA0002.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::15) To BL3PR11MB6508.namprd11.prod.outlook.com
 (2603:10b6:208:38f::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6508:EE_|MW4PR11MB6911:EE_
X-MS-Office365-Filtering-Correlation-Id: 71b2228d-12b6-405e-5d70-08de94648ade
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: DvMUvnt6BSMB7qFeEXMicandRBF/yy/TcS6Qftrs5SVyvcsrv8CwFJeLnea9/hy4TyLpmr1FJ0UC4xMJddlLxoGpaGMIbts0W5BQ54EKZKcbivsXEle49Rf/KAqDwtW/8vAkm+F448ZMvDv0bwKOFN712osPLnG0GGTVrOA3q6HDbbqRjwCIAaQJcTTf5bsdJzilDa4+S08kFE1hZgfex2Jm6XLu4WHayUwWUwMhZ/CdCQ/ymAXP7CkSq3e3NACITHhbaxTx67mZ0NvmKAixCzc/6OtwpqF2jAWBlcdn4on6/mHpBk9nWXmm6aH05fyvwm+6MO1Vh7N14t8+tCZveQwdPaQClMz1xFuvIidUvAzvVOivl7uwzhY4gXlSmoZtW63LTUcEnBWqcsFjczTVojrUSpiEuQ5KTD2OpxClRESqSCwQr5FEjTPY5jv7hfShduzrHLqKFfeR2QDIcTgjGQraQkHqC4n+CaO6n6zS+Kc2NRetclNnmKaEfV1t58oeFIBOTd5eRpkMxGeAk6ru8YLfmJrNteTRqELeHm6w9Zb/8YLoPfmI8TD53d7KxdJPCh6UUDXMhHvT5vvSSBndUO0zMYsktNr7x5FDUoGAydFB9ZMYwmVMwEGN2NLYs/CgCBeYw7oq62qJ2MUbqtvStpRzuQ1FTAgHTvDJhd34xnKr3dXdRL5M64/qsgejFM6dn3gSy9wWvLe11ZZNlKTRDk0xxwPe9wmu4Bj5ICW+j50=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cjQzb0RRcG5zdFZhdkJ1R3RUTkxrV0JiK2Nqa1UraEtFQ2JLK1l4MTM3OXhT?=
 =?utf-8?B?WUhRM21SbzJ2QzNjSmo2SmlQakdmSEFBbW13Mm10akRtYnFqa1FVVHBNdUYz?=
 =?utf-8?B?Wlk5dElPemFOWXdhckxMUW1JNGkvRytFRGxnQXJmNGRVMnBJTlJnaVJ1dEMx?=
 =?utf-8?B?TDYzTFRqVU5IOXROSjBGcHZPQ1hKU3ZCdlBKLzB4TzJremY5UlF2NDFjK1Y2?=
 =?utf-8?B?akNRRFNiYngvQUVnVTF3VXlQZ2VHNEQ2WlJkcDFPbjVXclZEZk5FMlhyRWRU?=
 =?utf-8?B?ejVvNHpaNlM0YjJVdDJTaHNLWmxvdXRXTEFXb1lmcGRqRHVwV2VuYklJU0pu?=
 =?utf-8?B?blNPUytZRTE1T0xkdGhqOW5FMjVJdHhXeW5MR1RCRytYTFEwcTg3UjBVMzhv?=
 =?utf-8?B?WWZMb3Zldi80TEIvSVFvaVpkSURzOEdmVDMvUUJkVnM1Mmlzemw3SDlYYk8r?=
 =?utf-8?B?ZDY5Z2xYZ3NjNnJpcVJBOWg0bEliU0JiOWsySGVCdndKZWFISnUzTGQ5SVVj?=
 =?utf-8?B?VmVSc0d1RWtDcndQTWdnZEdqUUZQT2RPc2dEc0VwNDZ4ZUxvVmxWeXowaWRL?=
 =?utf-8?B?Z0t0bm1pOWVwcEdQK2U1d2dFdjJLMmIwMDdQU1BKVTAzS21Mdk4zdVFZUzFL?=
 =?utf-8?B?bVpHTXR0ekQ2eUpDZWk0WUFrRC9IbnpXUDVNOS91UVFUeVZFQ1RFUXVpeDkr?=
 =?utf-8?B?cmUxYkwzbEExM0N1V2cxRkVBMzBoOWh5QWtZZ01aczJNMUNnMGZRbUZydnB2?=
 =?utf-8?B?ckpid29uMGpPUzRVckVRY0Y1dEJkdzFqVnhxMWhmUW9sMUZnVklHTXloM1Yy?=
 =?utf-8?B?aWYwSEZLN0NJeXZ0L3JYVmJIc0JZTEQvOC9rUHNPaTYya2l4anl5UWkvcis1?=
 =?utf-8?B?d21mK2IwK244VmxCTXhKbUFGSDlqVWMzdEpOQWlhMW1vNDlsdis3cTRUSE5C?=
 =?utf-8?B?ejQwaDgzN2I4MUFSVlVMZXc0Q3NRc21kTkdLS2pPY2FWQkthWHRjMDlTdUpR?=
 =?utf-8?B?d3duNEZqNHZKTXNsU2tjU1ZkYm5zOUM4b3dydEVGRkNXcFdpQndvN0FtZFpN?=
 =?utf-8?B?RE5mb2RHNUVxU0hlY212L05RbzNEY2lSU3czbGVxZGdZdHRLY2pST3ovSDcy?=
 =?utf-8?B?cDVvQUkrZVQ2aFZmMURTNjMwckIrMUxIR0hyaVZIcmxCS21sOWlscVVjSm84?=
 =?utf-8?B?REhDZng5SUFYWXl6cEQyWmFYSVI1L0k3NnRFblRkcXZFK1p0UGc1UkhuWUJz?=
 =?utf-8?B?YUQ1SzNHWnkxR2hSUGgweXV6TVhNTi9DNGtsYU4ybUx0QlF1ZHo3VStUUnE2?=
 =?utf-8?B?cERJZGFFQ29UVTF4NjZEZ3NxcThKUlNSS3lpZVJ1ZUZRNkNxZlJoUCtHQ0hn?=
 =?utf-8?B?NUExdDJkSDJvNjNUb0VPTEtLWWVNbUhuZHdZU2JaeFRURGZOeWxYQTVVdUth?=
 =?utf-8?B?MmxSeFJMcnhaYmFlamtPUWViRG55OHlYeFRvR0FDY0dYTHJuSkhnU1k0U2Mx?=
 =?utf-8?B?cXV4alNHa2hjYm5ZOW5ITndOSW5jM0IraUc1dmhrRWhOWnBselFISjNJZlQx?=
 =?utf-8?B?d1llZm9IRXBYNDZEd0NKd1BUdFFyMG5mWmNDSkQ3eld6dm8wQzRLNWJ3TzYy?=
 =?utf-8?B?U0JQa2JXY25oZWxOeFpodURKODN0ZklvNTFGa1c1U0N4NjluZU5URVZhY2dE?=
 =?utf-8?B?eTlPVWNoSks1QU4vMGZnRG1EUUx3Qi9PeEVxU3lsdXAyNndvRXdZTGhzRHFV?=
 =?utf-8?B?eExFZFRwdlNXbitFd0dJbWdPeFdjM2wrRXR2NGpiTk0xYnIyd2FyZXNhWmlq?=
 =?utf-8?B?V3VUZU9LOHVRekZtSmZQVCtZMzh3TXV3NUJwd0VxN3U5b3VJUVFTdW1LYXpx?=
 =?utf-8?B?dnQxQlZPMEpleHFLUzJXZUdCWEw4d3NUK3ZUUEk3Mi9XVVk2eG1GOG5USnQ4?=
 =?utf-8?B?Z0pyY3A2QnM1YVZ3UWJjeEIwOW8yTUp0c2M3ODhvM3gvZlQ4WHJSZ29jUnUv?=
 =?utf-8?B?aXJGbGt0UWdvVE8xSTI3OFdFTUtxZXQ3MUdKZEVNWHBUaVhEZWwzSEc0Z2pI?=
 =?utf-8?B?TmVpV0paSmU2ZWdabVJzRUtjWk5BeEJUT01NTjByeVlwZGVMaXBkWkdvZWhG?=
 =?utf-8?B?Q2FoYnlwMHd2QzlRR2hhcEtIWW9CQktGbk1Jc3FwTEF4Q0ppVDdpdVNpZnBM?=
 =?utf-8?B?MXltRFJxejlKWFhleDQwVGtCZkNWcVJZN0VybHBsQnNBNWtVaWU1cndBYXdR?=
 =?utf-8?B?Q0ExTmhNWHJPeGFKN3BJR1NBTzkyMmxOSDI2V3lGQzY4ZWVqWFNIMUx3OFRH?=
 =?utf-8?B?UGlYZE85cEZ6S3ltOE1jMDF2dGlzTmcwM2FVMFp2Unpad0w4Mml0NG54Z25z?=
 =?utf-8?Q?i9/fWs2cB2Y+5RuU=3D?=
X-Exchange-RoutingPolicyChecked: FByy2fYMlHjg0GUULLaRqklBy4Aqcbg3mJZpTQ8UAgc1Xev9ZnbJBpFjWZ0cMbvN0VD30OF/MSMyeeV9fla9iXN/0sqK4gBN3tpQ7MRixRnpvyBLA9UUCqLNePd2BWq+b15hgJExR1umd5Qa7wrpRhPob2g+L7Z1nT76kxoTs0KayqyuWtLXBSpP3lzr24Z/e3OmMVlLDep83uIdQR4XQ+LUrjU25oli7Z0G55sATovz4MuFi1jeoImh1ehBI3f1/3kIIq+t47/zxPa3s3sQy1f1a+B1L3foUj4wTRcYOxGMUGrfrCyNVpFY0RSkx0JQ+HInVLL91FwpVmoaOVx44Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 71b2228d-12b6-405e-5d70-08de94648ade
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2026 05:14:28.2608 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LVCGib3JF2YeW9B9kaCnETJEFWKdN2GkiRUKEusIUgtl9wK81LNjJ6LLYbwGExDbSmbg4NdPdg2KWmmtFFz1nA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6911
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,nvidia.com:email,gsse-cloud1.jf.intel.com:mid];
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
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 27FE43A9DAE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 06, 2026 at 06:10:07PM -0400, Joel Fernandes wrote:
> 
> 
> On 4/6/2026 5:24 PM, Joel Fernandes wrote:
> > 
> > 
> > On 4/2/2026 1:59 AM, Matthew Brost wrote:
> >> On Tue, Mar 31, 2026 at 05:20:34PM -0400, Joel Fernandes wrote:
> >>> Add TLB (Translation Lookaside Buffer) flush support for GPU MMU.
> >>>
> >>> After modifying page table entries, the GPU's TLB must be invalidated
> >>> to ensure the new mappings take effect. The Tlb struct provides flush
> >>> functionality through BAR0 registers.
> >>>
> >>> The flush operation writes the page directory base address and triggers
> >>> an invalidation, polling for completion with a 2 second timeout matching
> >>> the Nouveau driver.
> >>>
> >>> Cc: Nikola Djukic <ndjukic@nvidia.com>
> >>> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> >>> ---
> >>>  drivers/gpu/nova-core/mm.rs     |  1 +
> >>>  drivers/gpu/nova-core/mm/tlb.rs | 95 +++++++++++++++++++++++++++++++++
> >>>  drivers/gpu/nova-core/regs.rs   | 42 +++++++++++++++
> >>>  3 files changed, 138 insertions(+)
> >>>  create mode 100644 drivers/gpu/nova-core/mm/tlb.rs
> >>>
> >>> diff --git a/drivers/gpu/nova-core/mm.rs b/drivers/gpu/nova-core/mm.rs
> >>> index 8f3089a5fa88..cfe9cbe11d57 100644
> >>> --- a/drivers/gpu/nova-core/mm.rs
> >>> +++ b/drivers/gpu/nova-core/mm.rs
> >>> @@ -5,6 +5,7 @@
> >>>  #![expect(dead_code)]
> >>>  
> >>>  pub(crate) mod pramin;
> >>> +pub(crate) mod tlb;
> >>>  
> >>>  use kernel::sizes::SZ_4K;
> >>>  
> >>> diff --git a/drivers/gpu/nova-core/mm/tlb.rs b/drivers/gpu/nova-core/mm/tlb.rs
> >>> new file mode 100644
> >>> index 000000000000..cd3cbcf4c739
> >>> --- /dev/null
> >>> +++ b/drivers/gpu/nova-core/mm/tlb.rs
> >>> @@ -0,0 +1,95 @@
> >>> +// SPDX-License-Identifier: GPL-2.0
> >>> +
> >>> +//! TLB (Translation Lookaside Buffer) flush support for GPU MMU.
> >>> +//!
> >>> +//! After modifying page table entries, the GPU's TLB must be flushed to
> >>> +//! ensure the new mappings take effect. This module provides TLB flush
> >>> +//! functionality for virtual memory managers.
> >>> +//!
> >>> +//! # Example
> >>> +//!
> >>> +//! ```ignore
> >>> +//! use crate::mm::tlb::Tlb;
> >>> +//!
> >>> +//! fn page_table_update(tlb: &Tlb, pdb_addr: VramAddress) -> Result<()> {
> >>> +//!     // ... modify page tables ...
> >>> +//!
> >>> +//!     // Flush TLB to make changes visible (polls for completion).
> >>> +//!     tlb.flush(pdb_addr)?;
> >>> +//!
> >>> +//!     Ok(())
> >>> +//! }
> >>> +//! ```
> >>> +
> >>> +use kernel::{
> >>> +    devres::Devres,
> >>> +    io::poll::read_poll_timeout,
> >>> +    io::Io,
> >>> +    new_mutex,
> >>> +    prelude::*,
> >>> +    sync::{
> >>> +        Arc,
> >>> +        Mutex, //
> >>> +    },
> >>> +    time::Delta, //
> >>> +};
> >>> +
> >>> +use crate::{
> >>> +    driver::Bar0,
> >>> +    mm::VramAddress,
> >>> +    regs, //
> >>> +};
> >>> +
> >>> +/// TLB manager for GPU translation buffer operations.
> >>> +#[pin_data]
> >>> +pub(crate) struct Tlb {
> >>> +    bar: Arc<Devres<Bar0>>,
> >>> +    /// TLB flush serialization lock: This lock is acquired during the
> >>> +    /// DMA fence signalling critical path. It must NEVER be held across any
> >>> +    /// reclaimable CPU memory allocations because the memory reclaim path can
> >>> +    /// call `dma_fence_wait()`, which would deadlock with this lock held.
> >>> +    #[pin]
> >>> +    lock: Mutex<()>,
> >>> +}
> >>> +
> >>> +impl Tlb {
> >>> +    /// Create a new TLB manager.
> >>> +    pub(super) fn new(bar: Arc<Devres<Bar0>>) -> impl PinInit<Self> {
> >>> +        pin_init!(Self {
> >>> +            bar,
> >>> +            lock <- new_mutex!((), "tlb_flush"),
> >>> +        })
> >>> +    }
> >>> +
> >>> +    /// Flush the GPU TLB for a specific page directory base.
> >>> +    ///
> >>> +    /// This invalidates all TLB entries associated with the given PDB address.
> >>> +    /// Must be called after modifying page table entries to ensure the GPU sees
> >>> +    /// the updated mappings.
> >>> +    pub(crate) fn flush(&self, pdb_addr: VramAddress) -> Result {
> >>
> >> This landed on my list randomly, so I took a look.
> >>
> >> Wouldn’t you want to virtualize the invalidation based on your device?
> >> For example, what if you need to register interface changes on future hardware?
> > 
> > Good point, for future hardware it indeed makes sense. I will do that.
> Actually, at least in the future as far as I can see, the register definitions
> are the same for TLB invalidation are the same, so we are good and I will not be
> making any change in this regard.
> 
> But, thanks for raising the point and forcing me to double check!
> 

Not my driver, but this looks like a classic “works now” change that may
not hold up later, which is why I replied to something that isn’t really
my business.

Again, not my area, but I’ve been through this before. Generally,
getting the abstractions right up front pays off.

Matt

> --
> Joel Fernandes
> 
