Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAePAmh/uGltfAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 23:08:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 670842A1424
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 23:08:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CB6110E219;
	Mon, 16 Mar 2026 22:08:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="WpnA+KhK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR2101CU001.outbound.protection.outlook.com
 (mail-southcentralusazon11012045.outbound.protection.outlook.com
 [40.93.195.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3CAB10E200;
 Mon, 16 Mar 2026 22:08:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k6K0m8OHqY5RwvH+5NMptphUoGCLo3TRs9ya/07frj6X4k+GtgbgIyeVhITyIILsoMXHKEGpmdvUMIgVbKITPIjmpHUJlWd6CCi5SDltogmErQaC8Ps0WlP2/C6EWSgDyiz897HAz4HU4hxsSxfALtAVb5cWqkn4Hm2Xo6FvmAYgGo/Hu4L6uqDWfxigBJ9MIdYaLtD94iZzfhNiKbp0g/9oT4rv/+Z19Q0NKW0/SOisSrmESBmCeQ9zPlZAbQ+/TB4cY5u1H1yBmIWSMA3+aCnMyhQjxyjvEGA+mvE01J9HQ4LAIm5PC+OddgwpC3xCRQNcaC5Kdw8z7vAXXGeKdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Z54O8Lwmp/64CjThxgXsVk1e5fVWJnC/1n5/FLNvqQ=;
 b=edJzpCoHD3POi+9wImWbbRGOmGIBwYIwqB0e1DMA7NuhU92o2zFfrL4bOuazeZ4S2B0meDfI6SZHZ/pby9qG+3On+IuvJiSND0AGvEsNBRWQ+3d0P+I0LMsslk6yF7mV91SwFHldJxfLiUUotmx1OSTg+SxWanDG3GGqL+WzlEuHnOUnfP/J5aam7/MeEC8KnlSItpxi5ZCouwsSnR8/xF3kW0c7c1Juj+mwWqxs5JQwyHUa8dEOJ6xakf/ECcwJyRRaq/A8NC76/z9eY1Lah1l2yxUY1+Kt5JkkqLIykRANBzB+1mGGKWfRpt2dMYf39bzcrvqh+7jTKmo/G+KFQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Z54O8Lwmp/64CjThxgXsVk1e5fVWJnC/1n5/FLNvqQ=;
 b=WpnA+KhKZOyU6dMow5ifsW+9oDIiuKUkFliu/kJcE2rbb8qGGinyLAfSrq/hgDLI3NBhMFHFBrlGbb2A7PWJTTtx7iAXhn8NKlRR34uWeEGGZbG48Ml3Z4BLmD9zLiKn1rwkWzeGLEPKtXJT9sDFWDf+1rT4ErOmyJIwp2gFPTyqEoXriYk9KsLmt6wSk03u/9cBb0EHo3S77zViw1LdQbik/ZrxXotNWQfMwP+wJv4pu1mJWa1TgjCpl1sk7OQQ27avIkjEj2EtAj09CxBW8wImkfDtuNMt6hq9Fxyt+jpdq9mLdpMkW81JSQkVBmMUzMWRe9T6HEOG/K+C4DoqRQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DM3PR12MB9416.namprd12.prod.outlook.com (2603:10b6:0:4b::8) by
 IA1PR12MB6283.namprd12.prod.outlook.com (2603:10b6:208:3e5::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.17; Mon, 16 Mar 2026 22:08:28 +0000
Received: from DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8]) by DM3PR12MB9416.namprd12.prod.outlook.com
 ([fe80::8cdd:504c:7d2a:59c8%7]) with mapi id 15.20.9723.016; Mon, 16 Mar 2026
 22:08:28 +0000
Message-ID: <6687235b-1de5-4ed1-beb2-ed7781f5296f@nvidia.com>
Date: Mon, 16 Mar 2026 15:08:25 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12.1 1/1] rust: gpu: Add GPU buddy allocator bindings
To: Joel Fernandes <joelagnelf@nvidia.com>
Cc: Alexandre Courbot <acourbot@nvidia.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?=
 <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>,
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>,
 Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>,
 Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, rust-for-linux@vger.kernel.org,
 Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, Alistair Popple <apopple@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>, Elle Rhumsaa
 <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, linux-doc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-fbdev@vger.kernel.org
References: <20260308180407.3988286-1-joelagnelf@nvidia.com>
 <20260309135338.3919996-1-joelagnelf@nvidia.com>
 <20260309135338.3919996-2-joelagnelf@nvidia.com>
 <DH48DNAQCE0Z.2EX23VD27CQVX@nvidia.com>
 <efc10902-2ee9-4cb3-a4cc-442998eef01a@nvidia.com>
 <1773694747.5c82fbe5a9875889@nvidia.com>
Content-Language: en-US
From: John Hubbard <jhubbard@nvidia.com>
In-Reply-To: <1773694747.5c82fbe5a9875889@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0044.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::19) To DM3PR12MB9416.namprd12.prod.outlook.com
 (2603:10b6:0:4b::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3PR12MB9416:EE_|IA1PR12MB6283:EE_
X-MS-Office365-Filtering-Correlation-Id: ef67857b-a9e4-4d3c-eb32-08de83a88d48
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: EGbYrlsnI3ssnzreCjMs1tV/UXoC7Fdj9Y7YJoCOMIOnVeoASl1fWc2mxJT8m6FWAljkZwPeLhRKGYq/jxfq2Rb2SzO7PwQ03WnRY3sTLFrJ0+n9sSZrVXipDWvYOZ09HuM9UeQAuipolrKS7ZkwVTtNyO3WkWwgKGpwc3OBG7X0eL//Lo3GsxBsC65xcIn7w8AHEfuyxK5uOetIP2NleMwcFN+smlTA40CvhP8UhQZLVGxfMLIL+C1StfXM34H05G9Ulm2U4Z/M3vn4zKlIS022QhBMVahbs8aKQQzJC1Mi5xM1fui9kbQJswM+6bdHY5u1clpxrZCog7HBkooLYrw4wCbcGdsqoFYH3c95bPhztO2K9DN18R0dZbaBO8j0K2egOU2OosSY/hsaSswz8m3yOWm4NlqONtRik4wSQpJg4+i54udCsibwV8cj7aSmA1nRmfYHoY7zcbslwP1oodvSKhshgpComi29kEPMyA9zKqZqe27qjF18KHkCp21sYAbYHUhHqBeR4rnRnlMqoEtWCzQn8UcmacGdsh07Rxn3XZYTHnYHLUfEJowq+AlqJsJbOx6s8ZY82weLxbMQOIzOq6v46uf3TmMDuCdlxQ03m0LEJBKgr+Ji2AnZGjrlD7n1JY8P4NqsyHeq/dNp3EQzAUcDP991/toyzBGlySxpdrjgl+kG2XITpDtzEKqiyFWqydXwnhzTCWpioDVZ3+ChTEbIElm46C3BVYJjxiE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PR12MB9416.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b1RGMHFnaVA2ZHhyRDZuZ2RjcjlCSGN2cXl1RzFSTVZ6YW04SFhZL3ZsMThK?=
 =?utf-8?B?YUxORURPZXZkUDd2VXcxd3RCL0ZlRDhRaFBxY0Zrb3Q3MzRxUWNVYUVjVUcw?=
 =?utf-8?B?b3dZZFFiTFkveFpkVmtoMGgyaWs5bEovQXNrUkp6V3l3WTNjaEZHSy9nNHFR?=
 =?utf-8?B?aU9OLytTT2hUQ2FyTUhlbzhieUVMcDVhTTdzaHl5VXpoM25kZllBcUsvQ3li?=
 =?utf-8?B?S0M1aEs2UmhSVzdvc3IrSGFDQ3RYa0ZjV3VTMjlWeHZNeEdiNXltY1p5ZllP?=
 =?utf-8?B?V2JCWGtvRERWSkxTRzMrWnpxOEpYcE8rZ0s4ZVArZTk0c1BkMU0wYk1oQnVy?=
 =?utf-8?B?M1Y3YUI2M0hyVVgzdnZvMXNpWC9jd3p5YjRrNFdKUXNVSUNFc0ZNcVBXdXhl?=
 =?utf-8?B?MFFzamhnaXpVTVZYU2UzVWszNmZxZmVTN0g5UDA5MGhUSUplbE9qNGVrb2Vy?=
 =?utf-8?B?N1JTRlJFR3JMcVcxdUhQeG1YcUhOcnZ2RUovc3VTdlVTRkJpS3ZsWjd2ejIr?=
 =?utf-8?B?aXh5a0k3NmtaNGhDTkFpZ1crNTczazZIQkFOUGdvMVRtQUgwVnJjVW5PV3Vu?=
 =?utf-8?B?eXlIMFAxdy9KVnEvaDZEVXBobWp6TlJhZlB2TnRYaEUzODZYUGdoOVYvblM2?=
 =?utf-8?B?aXRRVHhNUTQ1M2VseC9rdWFTUUFiNll0Rzg0RkJjZFdpL3BLNnJtQUNUQTV5?=
 =?utf-8?B?dHh2a0xQZ2tEdXlrT2FhaEY5RWJEWEVid040NmFvcmlTeXZKT1NsOEpyUCt6?=
 =?utf-8?B?SUdobXJUc0VFUGd2YWxBb01sZ25NK0JOV3NobDB4bDgyeFEvRFg2Wk9Lbnhs?=
 =?utf-8?B?alI2eVloTC9IeUpXQUxrSWt4YlFleTB0MnJZbUR5U3llMWpCNnEwQVcwR0tS?=
 =?utf-8?B?N1ZpZk52a0I0UEVScW1uZ2JuRUdVeHdnMVpQZXhtaW83T21vRmx1NHpuSnFq?=
 =?utf-8?B?eGlsYmJFNTExaEU0UEN3alBOLytjVUdsQ3lWdDVNVXE1NFk5SnhaRHkyc2lQ?=
 =?utf-8?B?MDljWHN0UnpuZldKQmx1NU1mSENEbUdISFNzeWVoRitVM2tiMFpzaTBSTCt0?=
 =?utf-8?B?dGhHYWQxdnl0bmxreWkwL2NFUnlEUDFGUml4Y1MyRHJERjVXY2FCekp3VjY0?=
 =?utf-8?B?VTkzYy90d0x6d3FhWWY2WkIwbDR5bHhuKzhZNnBlUnJ2SGtVUVZyeFdyTmE4?=
 =?utf-8?B?VWhOMDVCeFpXUzhKUnFWUnJVM1FXMld2YTY3QXZUZmx0TTJmRGV6ZjQ4Wmxi?=
 =?utf-8?B?VTR2SUQwbFBMSk51T0FNWjhoNjJLMnJzWE56cXc5d0EzNlhPdks5M0ExditY?=
 =?utf-8?B?R3lJZVgwZDdQaHZKT1g1SVV5c1RlWURXamxaM21CTnduOGNSYy9XN2I0VGth?=
 =?utf-8?B?dy9lV2kwdGtQQ2FyOWdQMnhKVXh4MVhNQ25SNzJzYWU5RHhvb2U4NUFyNE5H?=
 =?utf-8?B?T1FteGczVEl5OUZySURZeXczdGtqLzZHV3VraHFwcWRBVTRnbnRuL0NKdlcx?=
 =?utf-8?B?a1hNTFFrcUhvRXBaaVJXOFJ0ZmtMVXZ5SlRuOGkzbkpSaml4YVlEU0RQS3VE?=
 =?utf-8?B?ZTNPVkUyT0xrb3ZkQkFLUkpEWW1CeHpFOU5SUk5mZjBaRGFkWW1YbVJuUjZx?=
 =?utf-8?B?VFh5T0xUY0VwemF3MkZGSHFsbStEWGtvN29VNGNCbjk2bllSTWZ4MXMzMUJj?=
 =?utf-8?B?aGJaREp0VlFhejFEUGhZdGt4VTErVDh6Y0s5TUttWkoySXluMFlNY2lZdUNw?=
 =?utf-8?B?NndNUGZsQTVWWnBDcVlOWW9FbTBNeHF6allBU1JvaHN3OEVod083d09yaEFI?=
 =?utf-8?B?ancxdTRjOU1XOW40dHlXQmUySHhoRFQwMGt1UFpSOGZLWnJhSFAzMUFuK0Uw?=
 =?utf-8?B?cXl1K0NwL0o2czZhRzdVbXRUWHY1K2FsWDRWWTllZVJkUGV1WDE1bGRDcGZj?=
 =?utf-8?B?NTZpTi9laGllZlJmeVNNK1d5ZzNjSmZsRlAyRUNndUd5QmVZNGppODdadVNO?=
 =?utf-8?B?K0RTSnNDVFZUbThjT0dLSzJXK05NQWVTMU5BamdwcEdTM2hFdWhTQ2tGeGkx?=
 =?utf-8?B?djl5VllCVHJDZXpaWmlLVVZPRmVLS2l4M09SdkpaSXFXdTBlR1A3alF6SWhr?=
 =?utf-8?B?SFFKY0t4TmhGWVhmV2tqK2tOM2NnbVMwS2FiVmw0Z2RrVHhBM0FGaFpUU2R1?=
 =?utf-8?B?QjFEZlM0OUUraTVtMmhhSWw3aE5MdnBhV3lRK2VZbXhKOWlpNTh4SW9LckVh?=
 =?utf-8?B?SWxLdDljcGJsSUo1M1cyb3VPc1p2RUlCVjhqWHNJY0dKMmdHSXViVVREUEYx?=
 =?utf-8?B?dkFFeHBGeWRsYkZGb0xNL21UQ3lxZFlpTExkdEFQM2hkTWhOVUNKdz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef67857b-a9e4-4d3c-eb32-08de83a88d48
X-MS-Exchange-CrossTenant-AuthSource: DM3PR12MB9416.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 22:08:28.3123 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s93q752CbldGfLnr/oXG0+IuVyEfLoEASN+dLdiSwXGFECcNW24GtI5cKm9jcVNj17Qv0CjK8w6Pfmnx8r3tsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6283
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
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[nvidia.com,vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,gmail.com,weathered-steel.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[49];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jhubbard@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 670842A1424
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/16/26 2:00 PM, Joel Fernandes wrote:
> On Mon, 16 Mar 2026, John Hubbard wrote:
> 
>> Alex, have you seen my Alignment patch [1], for that? It's sitting
>> around with only Miguel having responded, but seems like exactly
>> what you're talking about here.
>>
>> [1] https://lore.kernel.org/20260312031507.216709-3-jhubbard@nvidia.com
> 
> `Alignment` is already in core Rust for Linux
> (`rust/kernel/ptr.rs`) and I'm already using it in my nova-core v9
> patches.
> 

Right, but the patch I linked doesn't introduce Alignment. It adds a
new from_u64() constructor to the existing Alignment type. Today the
only constructors take usize, so there's no way to go from a u64
DeviceSize constant to an Alignment without a manual cast.

Alex wanted to use Alignment for chunk_size but said "doing so would
mean we cannot use an Alignment" if the field conforms to the
C API's u64.

So again, I think that patch is worth looking at.

thanks,
-- 
John Hubbard

