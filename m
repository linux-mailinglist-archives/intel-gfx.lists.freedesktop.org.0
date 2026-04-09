Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPOsI/iF12mwPAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:56:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9ECB3C9518
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:56:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C49810E4F6;
	Thu,  9 Apr 2026 10:56:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="KxG9rOfS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com
 (mail-southcentralusazon11011056.outbound.protection.outlook.com
 [40.93.194.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59DA110E4F6;
 Thu,  9 Apr 2026 10:56:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xC9QFv/5sfiDdK/S3fBPa9OJf3TEfX+sIJoXzQXjM+WeKDUTL3LBKrLkK4KLg66NWedorq3amcbdHBAeQKNaxscJF8RneZvSzES7DdrDk+e9PQPMd21nL5+vfnpVLggzFG8Vk9kIicVkC9mJkEfLMb9k61SZGa6aDyG33mnGBHWfsvpKeu5KAI3bK6bqlUzEHPcOhG2OyhYy71Vz/hg+IVea27RMQVa6Hor73XatirKPrZrJNvTkdfIhNE4XzMgjPPF0b/XNvuJF3nwpinu8KK34bNcei+UKRU7edCdmsoA6j4aqREjlhsabzXdn9GGOKW759xGmxFambZJPNHWU7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g1IrnZCvdmspYMcDBEN+tA/MYZ3Gm751aJuwZIonWoQ=;
 b=HtVQxr0rVRvDNNVvmqZ/GnPF7ECe+nXyLKVK70s0I5NzkInmuMlrqAwVrWbmspVvNnHAjnlCcUT6Mccx8m/tKr/k8ZQaQsO47eI8OBIA5KhxCZ9UOU3HUFXcPv6ctquJfle9CU+5XbZeSBLqYfs0OilpX7sHC3DSw1i6IlE+XhIlqPYphZqWwpKs0hRRSXtkosvRJrl4L8h+rPohNLdYrcMva1hCdCcfR80aWcl9QkaIWwIWMFqG1pS7mIsGlwchqvkHrki2fJD+60gQSW+MGxIBtJ5JJ8ThrzrIPGSzQ+k2eAnVZnAmlxAU/xFR1EKnOiNSsDgk8mkVtNKV16YSpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g1IrnZCvdmspYMcDBEN+tA/MYZ3Gm751aJuwZIonWoQ=;
 b=KxG9rOfSLBbLq4sWX3cUEPh3ykgT/l42IdCCAi6u7+zE/I9nmQsYavT+29WEVhYggCWZCHCQvUozlBQTfv+muEKvsXYk0VmKDqATsVJtHyKqr5uF8XkCJcTRprExr5dHR7/95oGBhug63+9je3CYZd9DpWMd5LRycMiOl0eLecDvWIqm3nkvnRDIS1BMne/RTNcfajwG6i5ZO4pMNDjaESQUFOiq7zFrf4wk+nbTovUrWfLP3BZzgGUjSMT4vQ9bDuH+MJz0rS2BmXHvYyvi/xOJKvmieORjdft6h9ersq55vyxPP09waBu0mz/5eTw7Pdsg9PucnDDD0qh4n15TOA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by LV8PR12MB9156.namprd12.prod.outlook.com (2603:10b6:408:181::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Thu, 9 Apr
 2026 10:56:45 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%4]) with mapi id 15.20.9769.018; Thu, 9 Apr 2026
 10:56:45 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 09 Apr 2026 19:56:41 +0900
Message-Id: <DHOKJ3MJNO5P.SXKOAYKX13JL@nvidia.com>
Subject: Re: [PATCH v10 12/21] gpu: nova-core: mm: Add unified page table
 entry wrapper enums
From: "Alexandre Courbot" <acourbot@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>
Cc: "Eliot Courtney" <ecourtney@nvidia.com>, "Danilo Krummrich"
 <dakr@kernel.org>, <linux-kernel@vger.kernel.org>, "Miguel Ojeda"
 <ojeda@kernel.org>, "Boqun Feng" <boqun@kernel.org>, "Gary Guo"
 <gary@garyguo.net>, "Bjorn Roy Baron" <bjorn3_gh@protonmail.com>, "Benno
 Lossin" <lossin@kernel.org>, "Andreas Hindborg" <a.hindborg@kernel.org>,
 "Alice Ryhl" <aliceryhl@google.com>, "Trevor Gross" <tmgross@umich.edu>,
 "Dave Airlie" <airlied@redhat.com>, "Daniel Almeida"
 <daniel.almeida@collabora.com>, "Koen Koning"
 <koen.koning@linux.intel.com>, <dri-devel@lists.freedesktop.org>,
 <rust-for-linux@vger.kernel.org>, "Nikola Djukic" <ndjukic@nvidia.com>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "David
 Airlie" <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Jonathan
 Corbet" <corbet@lwn.net>, "Alex Deucher" <alexander.deucher@amd.com>,
 "Christian Koenig" <christian.koenig@amd.com>, "Jani Nikula"
 <jani.nikula@linux.intel.com>, "Joonas Lahtinen"
 <joonas.lahtinen@linux.intel.com>, "Rodrigo Vivi" <rodrigo.vivi@intel.com>,
 "Tvrtko Ursulin" <tursulin@ursulin.net>, "Huang Rui" <ray.huang@amd.com>,
 "Matthew Auld" <matthew.auld@intel.com>, "Matthew Brost"
 <matthew.brost@intel.com>, "Lucas De Marchi" <lucas.demarchi@intel.com>,
 "Thomas Hellstrom" <thomas.hellstrom@linux.intel.com>, "Helge Deller"
 <deller@gmx.de>, "Alex Gaynor" <alex.gaynor@gmail.com>, "Boqun Feng"
 <boqun.feng@gmail.com>, "John Hubbard" <jhubbard@nvidia.com>, "Alistair
 Popple" <apopple@nvidia.com>, "Timur Tabi" <ttabi@nvidia.com>, "Edwin Peer"
 <epeer@nvidia.com>, "Andrea Righi" <arighi@nvidia.com>, "Andy Ritger"
 <aritger@nvidia.com>, "Zhi Wang" <zhiw@nvidia.com>, "Balbir Singh"
 <balbirs@nvidia.com>, "Philipp Stanner" <phasta@kernel.org>, "Elle Rhumsaa"
 <elle@weathered-steel.dev>, <alexeyi@nvidia.com>, <joel@joelfernandes.org>,
 <linux-doc@vger.kernel.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-fbdev@vger.kernel.org>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-13-joelagnelf@nvidia.com>
 <DHIFF98P1YQ3.1IXUT02E3TF20@nvidia.com>
 <5db2aab1-4b65-486e-ad9b-27a108bdb0d6@nvidia.com>
 <DHMYSTLVHIFJ.A2BDMPVNZNLS@nvidia.com>
 <537a8c5a-3885-4c47-99f6-963b48ddf87d@nvidia.com>
 <DHNKYBM159T9.2UUQ7CU0RN0BU@nvidia.com>
 <2f004511-61d1-4197-84b6-cddcdd275e55@nvidia.com>
In-Reply-To: <2f004511-61d1-4197-84b6-cddcdd275e55@nvidia.com>
X-ClientProxiedBy: TYCP286CA0085.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:2b3::8) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|LV8PR12MB9156:EE_
X-MS-Office365-Filtering-Correlation-Id: 38fb3eec-0437-4746-91a6-08de9626b082
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|10070799003|366016|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 0MrpxHZcu27DTzJumz3qG8KvoxLUyzkR9vkINQgZPiba4/GGdYQsnuFLrxIDVQNietlXBi2jTFZWfrLazQQRrigWuVgVt3yeGnmn3eLGcENs12xoVou/U0mwPYd4kSml4sthtDhFBOq+rDsdDdSL9dv1whA9SSEQFDg/lWW2laS42px6uFNtzgfLhKNcw/kdMqB9cfREeWo9zCAbJmShmDUI6QCZ15bdrTn4eX5hcU4XonZyUcIC80L1Ty8ufGvI9If85H/qTmhGswJXVAS3WDPAqMZF0tZ3weGGeB6pedO5x7Ceih7s0zKfeYHyu0KKIBY6hYX1raaKabG78Y8DlFMkjmONAfSug90YIh3JY1lJcAzY8TBxHRWKx45tDlLkxxmZK05NUKuMIbP6SGhjNHPZqZjc6Kdlrv8fzH+0ZUfNSTcQUnV97rkPJIvO3/8pYraAchRiywWvsFn7mpA0MH13ml44E0i+8xzqoW6E2l5awvqcT/ahb0B1Y/ClqODdDn2iTq6h56wpC8uc5agN6Ouo1ptG1KuVaA8460+5h/PPKzads6VVTay/ZR/p9e0DqOSSCS745+F4xnb/u1yiMnO0P36ZJt7H1+aml5tqXKMFP7NOcd6SztfN8/lif9fGZ1jpn8UqBNgmq6kEGCCvgUmDmOBNkY8HyyyL39ZL54eWSg1wYVW4aTaZh4tnPthuwcL2Py2Y+IJV4cOoNtlcfY1MNEH6Is/aYQB+R3Dj6ks=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB3990.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(10070799003)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzNKei9jRDZKRVF2ckRLYjZYR1pLczZOWlRBWjZDeHU5VVgzRnFqK2U0R2xR?=
 =?utf-8?B?WDRrM3YrYnBydkIzWkdqVGp4S0l6UXNOQ3I3R2RUWjhFUWZLMkIrM1A5Q3dV?=
 =?utf-8?B?SGQ2ZmhUQWpDcUg3YkVCSGhuSEh6Y2ppRE9Zc0RPYXIzZnJ3VDhaYkc5MjJT?=
 =?utf-8?B?M2tkYVNJRDhnaXAyRHBkZ1NPc1lTZm9UaHhhYVVsK2ZadU52TDVheko5QlpP?=
 =?utf-8?B?NFFleVVOQXA2eWV4S2MxMjdyU1RiN3YzVXpsaHF3MUpJS2xWOXgvWWNwVGFw?=
 =?utf-8?B?bVpzK1FkOTZCWkt6dU05bzM5USt2dHVlZFFXS2NUY0N0TDltbkx5MStZMXNR?=
 =?utf-8?B?ZVhyN2syc3ZGM2xmYklJQ3M2RlphTVNmUWdDVlhNb0lKaWY4aTJ1czBNbHNY?=
 =?utf-8?B?dFM1TUNiY1F0a05SSVVOZ2I0eVdjOTRNZWx4aHhhV3lQQ1BSbTNUN0hNVGR6?=
 =?utf-8?B?OEVDYTM4WUc2YmhxMFNLTmVOTzVtN1dQK2NjU3dObnNSai9seHFrclRrOUdU?=
 =?utf-8?B?ZzcxRmE4M3YvNis3TUppZC84c3NPVmRneWVsWmdBOE4zTTBGWUcwNWRLWmlz?=
 =?utf-8?B?Ukd3UlhzNVBFVTYvVmVhRmFUcWZ3eUN5Zk5YaHVuWjFrSFRCeS9BMVlYQWhr?=
 =?utf-8?B?Sit5ZjJwSGgvU0NjS2k4K3JnWXZDa3AyMHRhZEFadjU3VnBVZVZKa2tZaGpB?=
 =?utf-8?B?dGVQaE1sS3NsNWN0blcxaGxVTWJPZWdvT0J3eDg0Z1VGVDhOWXRtemxDeFU3?=
 =?utf-8?B?MDR0U2FTNlVPQkJuVGFQNng1NXZKUUd6TmVKYzE0c0NGSnpidEUzOGlpRDZW?=
 =?utf-8?B?bW55dktheElqSFloSmlmN0pJNW9LY0oza0I3S2Rqc2s1TWhsMFptcnBFODdM?=
 =?utf-8?B?NmZpNThMaWxPVUNYdmV5bmhvdElteVN5MzRSZ0p4T1F0VEU5ZEVXM0FsRG9L?=
 =?utf-8?B?VDZSU0Y2dFNuanpEMXZCQ2gza2lUb0tUb3ZUYUdZRDZGN3VtSDFtNElVTW1X?=
 =?utf-8?B?ekFFL0hUTWVIR2hCaWYzaUFUajJmYTRLdmczTDQvSVpPMDR2TTkzUnhDcXRm?=
 =?utf-8?B?NTFHd29CaW53T1cvRXRic0pZeE5LQXl0d25GREZpWjVkWUxiQmgwcUthVU53?=
 =?utf-8?B?TFo4S0JjcjVaWlNhQlFRS29Da0ppMXNWeVM2TnViQ1JyT1A1d2tDYXJTUTVG?=
 =?utf-8?B?TjM5VXVjR0x3dzh3MWRSSFV5SEhIZURJUmgzNDRsQnJaaXpXN3AvbUNEaUhs?=
 =?utf-8?B?T2xYS1RkOTh2V25CbHlRSGlIeHFhWVlGTFRjWXlaQlpHT3BUeXJKNHlvVnRy?=
 =?utf-8?B?MXVhVm9wKzRxNG1pcjFtdW5ZQ1VZaTNSbmNjSU4zbkZCcjNVM1BCa01NZEJS?=
 =?utf-8?B?bUw2a2Q3dnFaWmRwd1MzUUhlTHVUbnQrNTVPRjJBd2hpQlBpdEprdis3TEJQ?=
 =?utf-8?B?aC9zYlVyUHhJd3RhMUZhNExRVFdiS0I4NXhKU0xXWXVINmxZM0JFOENkdVFw?=
 =?utf-8?B?VWRQOXVwb1p6SHpqU1A3U1RLbE80U2NVbWo3MzlkZGFyZjRHd2dLenpqczJ6?=
 =?utf-8?B?bXAxeU1LYVVSc2FIdUt5WTJWYVExck82WGlOOExzdnFUaXVjQUk3dVV6WkY1?=
 =?utf-8?B?VTR3OWt0MkVQazlvVmtwbENRWmlwMnBEN2lrMkFBL0ZvYXptMmhRSWdSUHBS?=
 =?utf-8?B?NTVXeGpyVTcrSTNmRS9CTE81eWtHczYwSVIzNHo3NGU3L3VYemxvTzFOUis2?=
 =?utf-8?B?dlVXcGtKaVhPNTN6ZDlmdEh2czdlYkpUMlMzY1IrM1dxaU9xeW4xejVYanBI?=
 =?utf-8?B?M2VyL0lwMEYvSUdZdEFxRmRsUC9vNW14MDV6Ky8vVnl1dVEycjZyS2JzZnhL?=
 =?utf-8?B?ZlpwdzR4WEhkUXdQR0MrL1UrWjZnNE1YNnIzMWFXWEEwY0FyUHVXd0JHR2RY?=
 =?utf-8?B?OUtNbE5ObkN1bFplQkFBRS8zTEc0d283SGdpTU9rU3lWTVZ4eC9kbkRpMzRj?=
 =?utf-8?B?c0Z2MTRKT3Riem5LaDI4NzltR0d6c0g0MHNWZzY3YTRWNzR5UGNOQ1lWUHVn?=
 =?utf-8?B?Z2lVYmFEWWNESGRFNUsvbERhS1NTVHF5ZXR0MHBtZmNMdnh2NEhnajNNMlB4?=
 =?utf-8?B?TDkxSHF2WmdhVHQ4ODRQUVgzVmJTcDEweHI3NWdzcXNOVm12R1pwc09YYzEv?=
 =?utf-8?B?eG54cmRJQ3JKL0MzOE5yYURBaFhWMTIybWRlWmNVcnFIWmw4QzdrMkF0eWUy?=
 =?utf-8?B?Skd2eXV1dXM4SnVvWlk2dVJabzYyVzVyRzJBblJnZTVvZEJVMS9zMnBIMjlp?=
 =?utf-8?B?ZnFiSUxxUi95SVVpY1RYbVg5RVJsdzVENEFOdEV3VHlJYnNlbkdyUEhtR3dV?=
 =?utf-8?Q?cTmuOW3ORctuf4C+KfS9qs21AU6esgC/MBYOtxJrR0+5f?=
X-MS-Exchange-AntiSpam-MessageData-1: 4iMfz2/xyf64ow==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38fb3eec-0437-4746-91a6-08de9626b082
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 10:56:45.0129 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GUIpIgYTtexqGeGwnlrOvH9q6FWYYPFL9IaNM0FoQkdB8pmk49YNgNJHVqMU3CELlLun3eefafiGLs7qTrChSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR12MB9156
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[nvidia.com,kernel.org,vger.kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[acourbot@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim,nvidia.com:mid,pagetable.rs:url,vmm.rs:url]
X-Rspamd-Queue-Id: E9ECB3C9518
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu Apr 9, 2026 at 5:19 AM JST, Joel Fernandes wrote:
> Hi Alex, Eliot, Danilo,
>
> Thanks for taking a look. Let me respond to the specific points below.
>
> On Wed, 08 Apr 2026, Alexandre Courbot wrote:
>> After a quick look I'd say that having a trait here would actually be
>> *good* for correctness and maintainability.
>>
>> The current design implies that every operation on a page table (most
>> likely using the walker) goes through a branching point. Just looking at
>> `PtWalk::read_pte_at_level`, there are already at least 6
>> `if version =3D=3D 2 { } else { }` branches that all resolve to the same
>> result. Include walking down the PDEs and you have at least a dozen of
>> these just to resolve a virtual address. I know CPUs are fast, but this
>> is still wasted cycles for no good reason.
>
> I did some measurements and there is no notieceable difference in both
> approaches. I ran perf and loaded nova with self-tests running. The extra
> potential branching is lost in the noise. In both cases, loading nova and
> running the self-tests has ~119.7M branch instructions on my Ampere. The =
total
> instruction count is also identical (~615M).

That's expected - as I said, CPUs are fast - and that's also not my
point. My issue is that we are doing countless tests that all resolve to
the code path, a code path that is already known during probe time.
That's a huge code smell.

When we create the GPU, we know whether we will be using v2 or v3 page
tables. That we need to test that again 12 times per address resolution
is a design issue, irrespective of performance. There are 24 version
match sites in patch 12 alone.

And that's precisely a good justification for using monomorphization. v2
and v3 are technically two different page table implementations (they
even have their own distinct module in your series), we just use
generics to factorize the (source) code a bit.

>
> I measured like this:
> perf stat -e
> branches,branch-misses,cache-references,cache-misses,instructions,cycles =
--
> modprobe nova_core
>
> So I think the branching argument is not a strong one. I also did more
> measurements and the dominant time taken is MMIO. During the map prep and
> execute, page table walks are done. A TLB flush alone costs ~1.4 microsec=
onds.
> And PRAMIN BAR0 writes to write the PTE is also about 1 microsecond. Cons=
idering
> this, I don't think the extra branching argument holds (even without bran=
ch
> prediction and speculation).
>
> Also some branches cannot be eliminated even with parameterization:
>
>     if level =3D=3D self.mmu_version.dual_pde_level() {
>         // 128-bit dual PDE read
>     } else {
>         // Regular 64-bit PDE read
>     }
>
> This isn't really a version branch -- it's a structural branch that
> distinguishes between 64-bit PDE and 128-bit dual PDE entries. Any MMU
> version with a dual PDE level would need this same distinction.

The dual PDE level should be an associated constant - you still need to
do the test, but note that you would also do it if there was only a
single page table version. It's orthogonal to whether we use a trait or
not here.

>
> I also did code-generation size analysis (see diff of code used below):
>
> Code generation analysis:
>
>   Module .ko size:   Before: 511,792 bytes   After: 524,464 bytes  (+2.5%=
)
>   .text section:     Before: 112,620 bytes   After: 116,628 bytes  (+4,00=
8 bytes)
>
>   The +4K .text growth is the monomorphization cost: every generic functi=
on
>   is compiled twice (once for MmuV2, once for MmuV3).

I would say this is working as intended then.

>
>> If you use a trait here, and make `PtWalk` generic against it, you can
>> optimize this away. We had a similar situation when we introduced Turing
>> support and the v2 ucode header, and tried both approaches: the
>> trait-based one was slightly shorter, and arguably more readable.
>
> Actually I was the one who suggested traits for Falcon ucode descriptor i=
f you
> see this thread [1]. So basically you and Eliot are telling me to do what=
 I
> suggested in [1]. :-) However, I disagree that it is the right choice for=
 this code.
>
> [1] https://lore.kernel.org/all/20251117231028.GA1095236@joelbox2/
>
> I think the two cases are quite different in complexity:

Exactly. The complexity is different (this one involves multiple traits
and associated types) but the pattern is the same - and that's a pattern
traits are designed to address. If we were supposed to stop applying it
when things go beyond a certain level of complexity, the conceptors of
Rust would not have bothered addings things like associated types.

These traits are nothing new, they simply formalize a reality that
already exists in your code, which is that each version of the page
table needs to implement a given set of methods. It's already there with
the version doing dispatches, only it is not articulated clearly to the
reader. So in that respect, having traits make the code *more* readable
imho.

>
> The falcon ucode descriptor is essentially a set of flat field accessors
> and a few params (imem_sec_load_params, dmem_load_params).
> The trait has ~10 simple getter methods. There's no multi-level hierarchy=
,
> no walker, and no generic propagation.
>
> The MMU page table case is structurally different. Making PtWalk generic
> over an Mmu trait would require:
>
>   - PtWalk<M: Mmu> (the walker)
>   - Plus all the associated types: M::Pte, M::Pde, M::DualPde each
>     needing their own trait bounds
>
> And we would also need:
>   - Vmm<M: Mmu> (which creates PtWalk)
>   - BarUser<M: Mmu> (which creates Vmm)
>
> I am also against making Vmm an enum as Eliot suggested:
>        enum Vmm {
>            V2(VmmInner<MmuV2>),
>            V3(VmmInner<MmuV3>),
>        }
>
> That moves the version complexity up to the reader. Code complexity IMO s=
hould
> decrease as we go up abstractions, making it easier for users (Vmm/Bar).
>
> If you look at the the changes in vmm.rs to handle version dispatch there=
 [2]:
> Added: +109
> Removed: -28
>
> [2]
> https://github.com/Edgeworth/linux/commit/3627af550b61256184d589e7ec666c1=
108971f0e
>
> The main benefit of my approach is version-specific dispatch complexity i=
s
> completely isolated inside MmuVersion thus making the code outside of
> pagetable.rs much more readable, without having to parametrize anything, =
and
> without code size increase. I think that is worth considering.
>
>> But the main argument to use a trait here IMO is that it enables
>> associated types and constants. That's particularly critical since some
>> equivalent fields have different lengths between v2 and v3. An
>> associated `Bounded` type for these would force the caller to validate
>> the length of these fields before calling a non-fallible operation,
>> which is exactly the level of caution that we want when dealing with
>> page tables.
>
> I think Bounded validation is orthogonal to the dispatch model.
> We can add Bounded to the current design without restructuring
> into traits. For example:
>
>     // In ver2::Pte
>     pub fn new_vram(pfn: Bounded<Pfn, 25>, writable: bool) -> Self { ... =
}
>
>     // In ver3::Pte
>     pub fn new_vram(pfn: Bounded<Pfn, 40>, writable: bool) -> Self { ... =
}
>
> The unified Pte enum wrapper already dispatches to the correct
> version-specific constructor, which would enforce the correct Bounded
> constraint for that version.

But then what type does the `new_vram` dispatch method take? Generic
code lets us expose the expected `Bounded` type to the caller, which can
do the proper validation. This is a small example, but I expect this
pattern to come up in other parts of the code as well.

>
>> In order to fully benefit from it, we will need the bitfield macro from
>> the `kernel` crate so the PDE/PTE fields can be `Bounded`, I will try to
>> make it available quickly in a patch that you can depend on.
>
> That would be great, and I'd be happy to integrate Bounded validation onc=
e
> the macro is available. I just don't think we need to restructure the
> dispatch model in order to benefit from it.

I'll finish the series and hopefully send it a bit later today. That's
another significant rework for the series (sorry about that) but it
should be worth the effort for the added correctness.
