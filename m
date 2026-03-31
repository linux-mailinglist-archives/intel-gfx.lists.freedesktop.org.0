Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIzGM/Y6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C13371A57
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F081210EBFC;
	Tue, 31 Mar 2026 21:21:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="bHUUHDhk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH4PR04CU002.outbound.protection.outlook.com
 (mail-northcentralusazon11013034.outbound.protection.outlook.com
 [40.107.201.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2670510EBEC;
 Tue, 31 Mar 2026 21:21:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S8peaxgPi1w+YxbNy4VENCfMP91mncLCpDaBqRaIFIG/fCDFkMLZLjNHoeLf/4f9hfPS8k75lJN5B4zFmuYL4B/lWejlpe/S9h746D/AhIEvelf9DLN8+4MtErDoXjz7Lia7bZYnEIWgclhvSlognZTMq3+nswziVqgmBgGDGSp/7lV2efO3wDZhgg7oubQH/7o6sa/fEBY1WDY53/qbTa4uKTCId2tdqSfBUrsgJeWtegHbcxpTL63l+BcvzssSDHDh32kY2uO3k10qfRq4LLDe6KwznQyQPkpidngtWLG2bUUYJ69zO0R/PkO49q69CJDhhc6QC4whK6LlJrqd5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5URwu/INkQc/EEbvaxkXDIKt2ioiBByO8uTf5wNGMkg=;
 b=cy5pXHXBeLZ2XfIRQNHZTvQStbad8YY3ADX6ofvkT9cXHVrLzVAp8RBQI+oB0EpoVPaNt5YfAOdytyoNnjwfibCRoSd97EAgLVEw3kQQ3bDmRRg3yH9mYj/NX8E2Xln7D1dP/yoZ5x704gllefM0RZ3N1z+gJm4FZXoTM8vcCpsdDjz0QZrltW882F2071odcZrg476+SvOH3wj0c2MsAbLbXFbYUYHCWGl5OUSycxuPFOMxl7/ZF+KA4DXfEFswrSeP0/pNDU4KK/WKGFqh2+yqOf1tamE3jCKPnBtMkGzMOkLJq/VYFRuulVUZDTPqXZ/68EEkj4SrW90LKdPJVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5URwu/INkQc/EEbvaxkXDIKt2ioiBByO8uTf5wNGMkg=;
 b=bHUUHDhkQ6ULwFGmADp3h6zNFc1KJ+HxkBhgHoe3f0ehvZC3L92vMgChNtWApcBRX7VDAIkxIgaQYk1tAr2l5FrreAdwuk6Iew4oMjWVOKOzVziAj2WUuUT6PVXyLIsX9ZYo4dJjUnteKKsvfDdVXJFGTkkEa89oXI2UDxUPQh6rxZT0nAslBRNnuBuJXiVc/ltSwxjNsZ3d75RA7/oFRfT+dyQhkmm+J0WSRlJcuzIK8qbCHM6ekulVsnCXadQxnwgXN3wy0fu74ClUdQdYIj5a+BrkYmLRZe/v3VHyJtAwzKxfacN0b2yQ9hNYYVbTPpvlv1zN5mGPNIO9k45Njw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BL1PR12MB5849.namprd12.prod.outlook.com (2603:10b6:208:384::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.8; Tue, 31 Mar
 2026 21:21:42 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:42 +0000
From: Joel Fernandes <joelagnelf@nvidia.com>
To: linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>, Bjorn Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, dri-devel@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Andy Ritger <aritger@nvidia.com>,
 Zhi Wang <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org, Joel Fernandes <joelagnelf@nvidia.com>
Subject: [PATCH v10 19/21] gpu: nova-core: mm: Add BAR1 memory management
 self-tests
Date: Tue, 31 Mar 2026 17:20:46 -0400
Message-Id: <20260331212048.2229260-20-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BL0PR05CA0014.namprd05.prod.outlook.com
 (2603:10b6:208:91::24) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BL1PR12MB5849:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ef65465-fa4c-48c3-4cb1-08de8f6b810e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: /Zm+ZsZd56IvK/i7yOg3H0qfSQwjpOKo4JGgGcweA4D7y7rJytxJ3VcjfeXctlH/paj9420bZG1yqGcfg6dPyNfKncf2U3dbueCVWt4Hd4yyBJxgzxSAPyYwqjXPfJwTkZM8ZR0iCHTfFVhPIdNfa+YbB176mA1Qmy2O/2e5kW7u/4e0u2x8AK2OPi1Amprea2rXCzUXuwd3KDqcNBGFdh+V8l/XZRMYsvQYJt/694gmLze+MQywm34l+ShZ+rfGaaceHmFEbfq6ISlrhfgsfHtrX5cix8+WDvhfwe3xEgIDZtKvKqRznVXK3zrTtO9lE8qh8x3SXA0O8isDfXkdfC5oTF4qcy66dg9D6c//r3v16k51kcGD0OJyYgeddJGnBzdRnYGg0SvDbCP09+4NHgEHSf0wAMoTE97s6ceE5Uosb118YHpBLHfENeH5rqJQqZ9q2h60jMA8BuMvKvoHFjTbxjcUH421vyVSiQowfO37wO8watWIYVlu5Y+OuVi2/NZKzX8PqoV9KA7MJKM0YLBuEgAnRl2UJxJ+sKhMCI0yI3WVkAyjXMH/Dey+k4zqAdaBIIDcTSc2NOESRrrKV/ZGGOlmI8okUFCBucfhQghRgC+1NUO2D0liDSRP6hDweexivDGKFTSCUZ/VbnZ/B7D0tqmFt9qisnbasf9AGj3xqqIMN6wp5QKHKp2/sQzrRfpoI/m/6N1LOY0fB5fVpzeGMxDR1B8mbQD0i/REt0I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YWQ5bmk1MStZb2xRVkcyV2QxNFJvUDkybWpaTmVpdWFoYXdnN3pzZ2JEWThj?=
 =?utf-8?B?cTBPQ3lwM2R0VVhDMVdDL0Z6dC9JN2FvM1VmclczSHYyNCtCNlluRk9GOHR0?=
 =?utf-8?B?SEZ5cFp0K2hDbEl1SXYzdTRqZkkyRXNpajRoRnVhQzVlTlp6b2ZvZW02K0U2?=
 =?utf-8?B?bHVuVWVSQTViVFF4ejZ2K2o4ZUFHcnRLWlpSTVlxcEVVM2pDeTZIc2VKVTgv?=
 =?utf-8?B?RWZBcDlaN3NsYzdJejVnc3JSbmFlemIwVmpFVWVHNmxUdzhreEdnUDVWdktu?=
 =?utf-8?B?d243UkZSMy9ocW1wMDBSMEtYM2gvalY0NlZ3RWVnRExWaHV6a21Lb3BZMFFh?=
 =?utf-8?B?eHV1S0d2aTdLVFFzbHduNmZnWFlQMXlNV2wrUzFmS3FYa3BaUUw3bWorTlFL?=
 =?utf-8?B?REhBUU05UEVuM1ZrcmEvcENmRzVnak9hK09STFNOenJIQ3B3OHRMT3U4OC82?=
 =?utf-8?B?WlF1eHpaZi93VlVsM3VOclRmZnRXWDkvaEN6QytVK1MwL05wbi9sd0NBOVBs?=
 =?utf-8?B?emZqalk5TXUxN2N6cC9NbDlSV2gyU2F4WnpZVFQvdWRUTjNhYUx2YW5GdlFC?=
 =?utf-8?B?NERIQXIvT0V4Mmg2L25pbjBlY3h6STM5WjkxVWM4V0pHWm9la1VaZDhVZ2Jt?=
 =?utf-8?B?cU94S01PZjJrWk1CNzJKM055R2wvcCtrdDh2OGlOaTFDdk1yRitjc1FBUzNi?=
 =?utf-8?B?cVZlbzdxdHk3dVAwaVBiUE5lNGphTUd0OG5ORWpYWFFJT3FXMWhXdGIyTHd4?=
 =?utf-8?B?VDROeTN6ZlZKWUVLcG42RDZGd1NBRmk1Z2ltOXFYandOMUx2anJwc2RuMVY3?=
 =?utf-8?B?Zm1xRWsyVFEvQ3NyTjNmb2wxZW82ZzJJalRiZlRrNFl1S05tVWdjYWNCYTJv?=
 =?utf-8?B?Um0xRWxoMGtUdC9haENHeC9zQVM3enVBbmxMTEIwa0FaL0xGLytjUDNQdE04?=
 =?utf-8?B?d3QyTkl5eklWaStXakY0K3RYd1BPbnRwcjZuREdPVm5pRTVzWkRBNlJweVlj?=
 =?utf-8?B?ZXZVTUh1MWFlNVBIQ3RKbG9TSEZNMmc1ZHhEZjNMZ3ZHSEh0USt5N3IvV090?=
 =?utf-8?B?SVVmYWxEaE04eG8zaXYwS0ZzRm5VMUkxTi9VZ0dVUUxKUmtzVEVvMkNIQk9Y?=
 =?utf-8?B?NjIwTzRtanQrdlgyNUtnNFFSQmNhOHZjTXRZbFBUek9HR2ZZZGVQT3Jpdi9C?=
 =?utf-8?B?dXlYcTNOd1lFeXZTMnZacUpzTS9EODJzQms5YjJydm9zVWt1a2xaTmxTWmtx?=
 =?utf-8?B?d0E1SjRTQkpMM0lVNlA5aFArZDZsTldUWnA3a3VhYkRCOFQ4cno5VFptcnFU?=
 =?utf-8?B?emtzN2F6OFBhUGJ0RisxT0tYOWt4NEhKZHBuRlBSNXpiNDBoTlBPcWRVMjlE?=
 =?utf-8?B?VW82U2h6YUVpZ1UzcGxtY05WN1hUc2VFOGRqS1VLTnJlWXpESktmVnBmczZo?=
 =?utf-8?B?YzhJaVNTUTkrRk81V2M2dEJYUmdFSE15ZUs4VGFnQzdYR3c3eUkxLzRybXAr?=
 =?utf-8?B?NW9NR3ZXc1BuVVdlSUxVTkpQTnY3Z3B2NjZJcXZkUmlleFo5QjlPY21PbGZC?=
 =?utf-8?B?OFRZSm9NTmRGUmVvVVJjYjIySEpJMEZLdHJKek5wT056cWp3T1o5WFpoRjM1?=
 =?utf-8?B?NWhuUW5xZ0VUZGFCeWF0N3FRN054L010QW0yNnhnVzlIbUtaSEM3NVBOYU1p?=
 =?utf-8?B?YlBtZE5WUGxrekhEbnBNaUU5cWZCQ0w3eFM1aDNkbkpHQnVIOWhHaG1Pdldk?=
 =?utf-8?B?QkhJR2p5UGtINVBsVVM5V1BFdkY1VEUzOUVJRXc1K3pkMGV6RXFieElRTmQz?=
 =?utf-8?B?Q0F0TXJTUkVFRlRLejFrUm5JNzdFemZMbTd5ei9uWUtCNnplUTEvb3dDQTZG?=
 =?utf-8?B?SXJVVzAvU2ZrN3hITXdDMHJWOFF5S1FXQ1FQeFNEL2llYlFjOVNHMVl5c2x2?=
 =?utf-8?B?ejVrU1diRFp1Z3p4bUVIMWVVMS9vMEhEc2dkam92QnpSZzA5ZUVVZHVuOUtC?=
 =?utf-8?B?QlJCRzAwelhDZkFpeExtMVVqamdOaDFseTd3ZjNHa24wS0o0YnVkQngwMU9Z?=
 =?utf-8?B?VC8zZHpmU0hmS0ZmekphY2hmUVVvK3REMTZKT2hCYUFzV3A5aENnZlA3Uis3?=
 =?utf-8?B?dXN3bWI5VERZOEJTakhrMEQrbi9pVWl5YU1menRic1ZDTWMzc2c2cDJESU0x?=
 =?utf-8?B?QnI5WnNhUVpwakRRaklyZkZZYnRDRTlxaWJJSitqQk5nalVDdDBGNTB6TDVr?=
 =?utf-8?B?NVBPOHBIUEpSSFA2ZHJOaTFjbzY4TUp0UkJvVXA1NWRKOWNhcWdXcjUyRjY4?=
 =?utf-8?B?NTlEUkZhWG1nZlpkL1p2czI4WEZDK1dLa2ZuNlN0OGJ6Z0I3OENDUT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ef65465-fa4c-48c3-4cb1-08de8f6b810e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:42.4315 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cUjnEchwz1iYRgvTjZ+MRLGXvDTwCK/8GLleo5yivAJsInMGQqYWBiPbWV5ZN8eMtEnP5SbFM3Oxtui0Eo0+dA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5849
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
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,vger.kernel.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[56];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,nvidia.com:email,nvidia.com:mid]
X-Rspamd-Queue-Id: 80C13371A57
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add self-tests for BAR1 access during driver probe when
CONFIG_NOVA_MM_SELFTESTS is enabled (default disabled). This results in
testing the Vmm, GPU buddy allocator and BAR1 region all of which should
function correctly for the tests to pass.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/Kconfig        |  10 ++
 drivers/gpu/nova-core/driver.rs      |   2 +
 drivers/gpu/nova-core/gpu.rs         |  36 ++++
 drivers/gpu/nova-core/mm/bar_user.rs | 236 +++++++++++++++++++++++++++
 4 files changed, 284 insertions(+)

diff --git a/drivers/gpu/nova-core/Kconfig b/drivers/gpu/nova-core/Kconfig
index 6513007bf66f..35de55aabcfc 100644
--- a/drivers/gpu/nova-core/Kconfig
+++ b/drivers/gpu/nova-core/Kconfig
@@ -15,3 +15,13 @@ config NOVA_CORE
 	  This driver is work in progress and may not be functional.
 
 	  If M is selected, the module will be called nova_core.
+
+config NOVA_MM_SELFTESTS
+	bool "Memory management self-tests"
+	depends on NOVA_CORE
+	help
+	  Enable self-tests for the memory management subsystem. When enabled,
+	  tests are run during GPU probe to verify PRAMIN aperture access,
+	  page table walking, and BAR1 virtual memory mapping functionality.
+
+	  This is a testing option and is default-disabled.
diff --git a/drivers/gpu/nova-core/driver.rs b/drivers/gpu/nova-core/driver.rs
index 3bc264a099de..b1aafaff0cee 100644
--- a/drivers/gpu/nova-core/driver.rs
+++ b/drivers/gpu/nova-core/driver.rs
@@ -101,6 +101,8 @@ fn probe(pdev: &pci::Device<Core>, _info: &Self::IdInfo) -> impl PinInit<Self, E
 
             Ok(try_pin_init!(Self {
                 gpu <- Gpu::new(pdev, bar.clone(), bar.access(pdev.as_ref())?),
+                // Run optional GPU selftests.
+                _: { gpu.run_selftests(pdev)? },
                 _reg <- auxiliary::Registration::new(
                     pdev.as_ref(),
                     c"nova-drm",
diff --git a/drivers/gpu/nova-core/gpu.rs b/drivers/gpu/nova-core/gpu.rs
index 1cd0f147994b..021fc7cc7247 100644
--- a/drivers/gpu/nova-core/gpu.rs
+++ b/drivers/gpu/nova-core/gpu.rs
@@ -341,4 +341,40 @@ pub(crate) fn unbind(&self, dev: &device::Device<device::Core>) {
             .inspect(|bar| self.sysmem_flush.unregister(bar))
             .is_err());
     }
+
+    /// Run selftests on the constructed [`Gpu`].
+    pub(crate) fn run_selftests(
+        mut self: Pin<&mut Self>,
+        pdev: &pci::Device<device::Bound>,
+    ) -> Result {
+        self.as_mut().run_mm_selftests(pdev)?;
+        Ok(())
+    }
+
+    #[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+    fn run_mm_selftests(self: Pin<&mut Self>, pdev: &pci::Device<device::Bound>) -> Result {
+        use crate::driver::BAR1_SIZE;
+
+        // BAR1 self-tests.
+        let bar1 = Arc::pin_init(
+            pdev.iomap_region_sized::<BAR1_SIZE>(1, c"nova-core/bar1"),
+            GFP_KERNEL,
+        )?;
+        let bar1_access = bar1.access(pdev.as_ref())?;
+
+        crate::mm::bar_user::run_self_test(
+            pdev.as_ref(),
+            &self.mm,
+            bar1_access,
+            self.gsp_static_info.bar1_pde_base,
+            self.spec.chipset,
+        )?;
+
+        Ok(())
+    }
+
+    #[cfg(not(CONFIG_NOVA_MM_SELFTESTS))]
+    fn run_mm_selftests(self: Pin<&mut Self>, _pdev: &pci::Device<device::Bound>) -> Result {
+        Ok(())
+    }
 }
diff --git a/drivers/gpu/nova-core/mm/bar_user.rs b/drivers/gpu/nova-core/mm/bar_user.rs
index 5f7c0e9e51f9..933512610806 100644
--- a/drivers/gpu/nova-core/mm/bar_user.rs
+++ b/drivers/gpu/nova-core/mm/bar_user.rs
@@ -150,3 +150,239 @@ fn drop(&mut self) {
         }
     }
 }
+
+/// Check if the PDB has valid, VRAM-backed page tables.
+///
+/// Returns `Err(ENOENT)` if page tables are missing or not in VRAM.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+fn check_valid_page_tables(mm: &GpuMm, pdb_addr: VramAddress, chipset: Chipset) -> Result {
+    use crate::mm::pagetable::AperturePde;
+
+    let mut window = mm.pramin().get_window()?;
+    let pdb_entry_raw = window.try_read64(pdb_addr.raw())?;
+    let pdb_entry = crate::mm::pagetable::Pde::new(chipset.mmu_version(), pdb_entry_raw);
+
+    if !pdb_entry.is_valid() {
+        return Err(ENOENT);
+    }
+
+    if pdb_entry.aperture() != AperturePde::VideoMemory {
+        return Err(ENOENT);
+    }
+
+    Ok(())
+}
+
+/// Run MM subsystem self-tests during probe.
+///
+/// Tests page table infrastructure and `BAR1` MMIO access using the `BAR1`
+/// address space. Uses the `GpuMm`'s buddy allocator to allocate page tables
+/// and test pages as needed.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+pub(crate) fn run_self_test(
+    dev: &kernel::device::Device,
+    mm: &GpuMm,
+    bar1: &crate::driver::Bar1,
+    bar1_pdb: u64,
+    chipset: Chipset,
+) -> Result {
+    use kernel::gpu::buddy::{
+        GpuBuddyAllocFlags,
+        GpuBuddyAllocMode, //
+    };
+    use kernel::ptr::Alignment;
+    use kernel::sizes::{
+        SZ_16K,
+        SZ_32K,
+        SZ_4K,
+        SZ_64K, //
+    };
+
+    // Test patterns.
+    const PATTERN_PRAMIN: u32 = 0xDEAD_BEEF;
+    const PATTERN_BAR1: u32 = 0xCAFE_BABE;
+
+    dev_info!(dev, "MM: Starting self-test...\n");
+
+    let pdb_addr = VramAddress::new(bar1_pdb);
+
+    // Check if initial page tables are in VRAM.
+    if check_valid_page_tables(mm, pdb_addr, chipset).is_err() {
+        dev_info!(dev, "MM: Self-test SKIPPED - no valid VRAM page tables\n");
+        return Ok(());
+    }
+
+    // Set up a test page from the buddy allocator.
+    let test_page_blocks = KBox::pin_init(
+        mm.buddy().alloc_blocks(
+            GpuBuddyAllocMode::Simple,
+            SZ_4K.into_safe_cast(),
+            Alignment::new::<SZ_4K>(),
+            GpuBuddyAllocFlags::default(),
+        ),
+        GFP_KERNEL,
+    )?;
+    let test_vram_offset = test_page_blocks.iter().next().ok_or(ENOMEM)?.offset();
+    let test_vram = VramAddress::new(test_vram_offset);
+    let test_pfn = Pfn::from(test_vram);
+
+    // Create a VMM of size 64K to track virtual memory mappings.
+    let mut vmm = Vmm::new(pdb_addr, chipset.mmu_version(), SZ_64K.into_safe_cast())?;
+
+    // Create a test mapping.
+    let mapped = vmm.map_pages(mm, &[test_pfn], None, true)?;
+    let test_vfn = mapped.vfn_start;
+
+    // Pre-compute test addresses for the PRAMIN to BAR1 read test.
+    let vfn_offset: usize = test_vfn.raw().into_safe_cast();
+    let bar1_base_offset = vfn_offset.checked_mul(PAGE_SIZE).ok_or(EOVERFLOW)?;
+    let bar1_read_offset: usize = bar1_base_offset + 0x100;
+    let vram_read_addr: usize = test_vram.raw() + 0x100;
+
+    // Test 1: Write via PRAMIN, read via BAR1.
+    {
+        let mut window = mm.pramin().get_window()?;
+        window.try_write32(vram_read_addr, PATTERN_PRAMIN)?;
+    }
+
+    // Read back via BAR1 aperture.
+    let bar1_value = bar1.try_read32(bar1_read_offset)?;
+
+    let test1_passed = if bar1_value == PATTERN_PRAMIN {
+        true
+    } else {
+        dev_err!(
+            dev,
+            "MM: Test 1 FAILED - Expected {:#010x}, got {:#010x}\n",
+            PATTERN_PRAMIN,
+            bar1_value
+        );
+        false
+    };
+
+    // Cleanup - invalidate PTE.
+    vmm.unmap_pages(mm, mapped)?;
+
+    // Test 2: Two-phase prepare/execute API.
+    let prepared = vmm.prepare_map(mm, 1, None)?;
+    let mapped2 = vmm.execute_map(mm, prepared, &[test_pfn], true)?;
+    let readback = vmm.read_mapping(mm, mapped2.vfn_start)?;
+    let test2_passed = if readback == Some(test_pfn) {
+        true
+    } else {
+        dev_err!(dev, "MM: Test 2 FAILED - Two-phase map readback mismatch\n");
+        false
+    };
+    vmm.unmap_pages(mm, mapped2)?;
+
+    // Test 3: Range-constrained allocation with a hole — exercises block.size()-driven
+    // BAR1 mapping. A 4K hole is punched at base+16K, then a single 32K allocation
+    // is requested within [base, base+36K). The buddy allocator must split around the
+    // hole, returning multiple blocks (expected: {16K, 4K, 8K, 4K} = 32K total).
+    // Each block is mapped into BAR1 and verified via PRAMIN read-back.
+    //
+    // Address layout (base = 0x10000):
+    //   [    16K    ] [HOLE 4K] [4K] [ 8K ] [4K]
+    //   0x10000       0x14000  0x15000 0x16000 0x18000 0x19000
+    let range_base: u64 = SZ_64K.into_safe_cast();
+    let sz_4k: u64 = SZ_4K.into_safe_cast();
+    let sz_16k: u64 = SZ_16K.into_safe_cast();
+    let sz_32k_4k: u64 = (SZ_32K + SZ_4K).into_safe_cast();
+
+    // Punch a 4K hole at base+16K so the subsequent 32K allocation must split.
+    let _hole = KBox::pin_init(
+        mm.buddy().alloc_blocks(
+            GpuBuddyAllocMode::Range(range_base + sz_16k..range_base + sz_16k + sz_4k),
+            SZ_4K.into_safe_cast(),
+            Alignment::new::<SZ_4K>(),
+            GpuBuddyAllocFlags::default(),
+        ),
+        GFP_KERNEL,
+    )?;
+
+    // Allocate 32K within [base, base+36K). The hole forces the allocator to return
+    // split blocks whose sizes are determined by buddy alignment.
+    let blocks = KBox::pin_init(
+        mm.buddy().alloc_blocks(
+            GpuBuddyAllocMode::Range(range_base..range_base + sz_32k_4k),
+            SZ_32K.into_safe_cast(),
+            Alignment::new::<SZ_4K>(),
+            GpuBuddyAllocFlags::default(),
+        ),
+        GFP_KERNEL,
+    )?;
+
+    let mut test3_passed = true;
+    let mut total_size = 0usize;
+
+    for block in blocks.iter() {
+        total_size += IntoSafeCast::<usize>::into_safe_cast(block.size());
+
+        // Map all pages of this block.
+        let page_size: u64 = PAGE_SIZE.into_safe_cast();
+        let num_pages: usize = (block.size() / page_size).into_safe_cast();
+
+        let mut pfns = KVec::new();
+        for j in 0..num_pages {
+            let j_u64: u64 = j.into_safe_cast();
+            pfns.push(
+                Pfn::from(VramAddress::new(
+                    block.offset() + j_u64.checked_mul(page_size).ok_or(EOVERFLOW)?,
+                )),
+                GFP_KERNEL,
+            )?;
+        }
+
+        let mapped = vmm.map_pages(mm, &pfns, None, true)?;
+        let bar1_base_vfn: usize = mapped.vfn_start.raw().into_safe_cast();
+        let bar1_base = bar1_base_vfn.checked_mul(PAGE_SIZE).ok_or(EOVERFLOW)?;
+
+        for j in 0..num_pages {
+            let page_bar1_off = bar1_base + j * PAGE_SIZE;
+            let j_u64: u64 = j.into_safe_cast();
+            let page_phys = block.offset()
+                + j_u64
+                    .checked_mul(PAGE_SIZE.into_safe_cast())
+                    .ok_or(EOVERFLOW)?;
+
+            bar1.try_write32(PATTERN_BAR1, page_bar1_off)?;
+
+            let pramin_val = {
+                let mut window = mm.pramin().get_window()?;
+                window.try_read32(page_phys.into_safe_cast())?
+            };
+
+            if pramin_val != PATTERN_BAR1 {
+                dev_err!(
+                    dev,
+                    "MM: Test 3 FAILED block offset {:#x} page {} (val={:#x})\n",
+                    block.offset(),
+                    j,
+                    pramin_val
+                );
+                test3_passed = false;
+            }
+        }
+
+        vmm.unmap_pages(mm, mapped)?;
+    }
+
+    // Verify aggregate: all returned block sizes must sum to allocation size.
+    if total_size != SZ_32K {
+        dev_err!(
+            dev,
+            "MM: Test 3 FAILED - total size {} != expected {}\n",
+            total_size,
+            SZ_32K
+        );
+        test3_passed = false;
+    }
+
+    if test1_passed && test2_passed && test3_passed {
+        dev_info!(dev, "MM: All self-tests PASSED\n");
+        Ok(())
+    } else {
+        dev_err!(dev, "MM: Self-tests FAILED\n");
+        Err(EIO)
+    }
+}
-- 
2.34.1

