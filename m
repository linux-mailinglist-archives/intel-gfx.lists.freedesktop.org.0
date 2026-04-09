Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKBpAzyH12mwPAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 13:02:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2C93C9735
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 13:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B4C110E7C6;
	Thu,  9 Apr 2026 11:02:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=garyguo.net header.i=@garyguo.net header.b="k/dELKCk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from LO3P265CU004.outbound.protection.outlook.com
 (mail-uksouthazon11020099.outbound.protection.outlook.com [52.101.196.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F5E810E7C5;
 Thu,  9 Apr 2026 11:02:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AvMBEsFO3y2rIMtpRVWbgZX89f7NDKq1akkljt84+D3xh2bBBEzLL4RVveW00J6jWp1CK5/Qo1nO6HJ53aW5obJDy2TKGi73YMs5nbO7vIvMbuFIYp+y+HhoIjPRkGFIGfdM+dfwdyr83yfux0OtXsFHIX+cCVzsRWi9t2S50RVMP8PSVMKV5poUxsw/F8mvcrxuvBHlktEzQJ2UaTCSXXYQiQXuMWDV/u8T3JFMKnIdHiuYeldN0x3G7ows9sYSKKMs6ANoIKZvRvCAkoUkh0gxVLAaDYSKtBr7n9w5qGcBfY53v51mD4bx6+azOVkhe+m+D8pXBM1rr1USiT2KsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=twtQo0k/xMBj0wyU6sLQy3Q8DHDUHqMexIQ386CfmEc=;
 b=w0CNiJnd55M93IR7JsOs5S6JygkKq6GzlvIl75ofLrLNMyv2IAefBeGy2YMepX2wVWQtP7fiBr/KkoXjftmh8TI3ZcssIPglGvbRyylAF+IlnmlAZ5HrSCLSA1UpvuFLm57hODWTp54ULbfSl6XdWlNpME0nY1FIFgaHo96Q4KbfKKvBi+whl5vNyf6sw/zw2RytMbGxIR3hlD0zYG65JvjUHDCLJ8SyTHPw7jslCijDkzZIL7OVt/GFxM891gJs2PIdmSaZTzhgVhUolfQdhF2xG8f1T8o/TD+GCceNV+o9WF3xdjju2hE22mynSIQuW8CwvfHQW4l+wr48ntSVJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=garyguo.net; dmarc=pass action=none header.from=garyguo.net;
 dkim=pass header.d=garyguo.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garyguo.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=twtQo0k/xMBj0wyU6sLQy3Q8DHDUHqMexIQ386CfmEc=;
 b=k/dELKCkmHffjPBCifCGb3Yb4sYIuqX+t6Noq+YLvLHqarsUo2uvsMrjfDFgxiG7L1jooS+mLTqTweksAjUFWEqEYM+0NogMY21Mo28lhDSvxwLnZ/0WAgDVocUO9bkG6yY+DYqrbMC4NEXBr4UFUvYLq+U3wikB5h9kGWyR7qc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=garyguo.net;
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:488::16)
 by LO3P265MB2362.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:102::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Thu, 9 Apr
 2026 11:02:09 +0000
Received: from LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986]) by LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1c3:ceba:21b4:9986%4]) with mapi id 15.20.9769.041; Thu, 9 Apr 2026
 11:02:09 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 09 Apr 2026 12:02:08 +0100
Message-Id: <DHOKN9XVOTIB.1A4JY7CDJFWPS@garyguo.net>
Cc: <linux-kernel@vger.kernel.org>, "Miguel Ojeda" <ojeda@kernel.org>,
 "Boqun Feng" <boqun@kernel.org>, "Gary Guo" <gary@garyguo.net>, "Bjorn Roy
 Baron" <bjorn3_gh@protonmail.com>, "Benno Lossin" <lossin@kernel.org>,
 "Andreas Hindborg" <a.hindborg@kernel.org>, "Alice Ryhl"
 <aliceryhl@google.com>, "Trevor Gross" <tmgross@umich.edu>, "Dave Airlie"
 <airlied@redhat.com>, "Daniel Almeida" <daniel.almeida@collabora.com>,
 "Koen Koning" <koen.koning@linux.intel.com>,
 <dri-devel@lists.freedesktop.org>, <rust-for-linux@vger.kernel.org>,
 "Nikola Djukic" <ndjukic@nvidia.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Jonathan Corbet"
 <corbet@lwn.net>, "Alex Deucher" <alexander.deucher@amd.com>, "Christian
 Koenig" <christian.koenig@amd.com>, "Jani Nikula"
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
Subject: Re: [PATCH v10 12/21] gpu: nova-core: mm: Add unified page table
 entry wrapper enums
From: "Gary Guo" <gary@garyguo.net>
To: "Joel Fernandes" <joelagnelf@nvidia.com>, "Alexandre Courbot"
 <acourbot@nvidia.com>, "Eliot Courtney" <ecourtney@nvidia.com>, "Danilo
 Krummrich" <dakr@kernel.org>
X-Mailer: aerc 0.21.0
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
X-ClientProxiedBy: LO4P123CA0075.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:190::8) To LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:488::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LOVP265MB8871:EE_|LO3P265MB2362:EE_
X-MS-Office365-Filtering-Correlation-Id: d962b7cd-83d1-4119-6b0a-08de9627721a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|10070799003|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: xcAmLn04xAsvJEY3s79AYkmreZ+d6OP6M3Fk2V3aI4bj8gFakvFTkU7+8okw8MZGTQz38Wc6BrJjQBhji/pF3f7sulGakPL+6G26XLQpKkC2wvmpPQrHOWuNkfoCvPH6hgwxpgUUCqpFCtNvcgJ438DwCbeeLgCqfcIoIVfnOXi+waOTW/vmwRizjoqBfttkcjt/nVVsPv9l4mtAi3/g3N+9OpF1y64BD5M1xpflHOMSr8IHmCO1gz9i1VA1Zh4L+qUgjITWGIc9tYdiVNiZGnJJjjlcAgs3FrJ8UzjEDtdyyI8od290bGGAbAMiCOCmJlvquCHYhcRN5jUviRbL/0psIxAT7fV5wtyYpxFiy+lEEsodzx7wcO4UsMMQylVlip66TbUswXF+dAzbk7VRscdzZ+rwy0TjqMlEPT4tGe8afqQIfcdKshkTdBdpW6PBmlIQUQtGw70tDl+wtF4iKfAFJReVSoFidC4hvapAILuMiNG0VGUmOLAVdAE7lWjAfhxybe14SA2coBeFKTsGIVn7q3nQ3qePhF0TV3nRvfiXxwfSJn9cWcmPutlFl9W9DTRFGfGRvwn/eEBL7A6KZk0MFj9uiiEasl3T71HbAbJXYmhpRtQE2r4BRJv+M7scjzTk3vvWwiSHVg1ak3oAsNx198o6VqXPhAlg118zawls7T04tMdy0w6xxS1rWet5U47JhBb/IzP3JmsFXcnbEbW03MRc1pettKU3vcmZYM8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(10070799003)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SyttT0VyQlA2YnVBZ0xmUzZoSzdkbnRXdnpQa1lGa3duYlR1MXFJbEdneWRM?=
 =?utf-8?B?cjNIRDRBMlV5aEQwWUd2cDIwdkhrQXEzU3FRbnVUUEhBNjB6eVNCUS9jMFJU?=
 =?utf-8?B?SHAzTnEwMVhiSi91MG5XcC9TTFVBRHZ1K2YwVGV5TWhhWFZrV2JQQnlHcDBr?=
 =?utf-8?B?S1p3c2ZEMlh2ZUpudWc4SzNvcXZ5L1QzMllHWU5IUkkrSXBWNXk1TEY5ZUNQ?=
 =?utf-8?B?RWxqRWFDaE5NV0h0U0JwZzdRQk9FY1F4Nmtmd2FEanA1WlVlbm9pR0tJY2s5?=
 =?utf-8?B?V1JJRDFFY0hBeVMveEUxVUc3aGdjYXpiVlU4NlNXbDEyc2t0R1htYzI0WmFW?=
 =?utf-8?B?dXhoOXp0ekZpZzhuQS9HSnE0Y2pFTFdpVUpmWmVsRnNJeXgzazJ3aGxVWkhE?=
 =?utf-8?B?QzJNSXV6YUFTNWhsaHk3WlNmZnVHTG9FOEhTd0NTczNFSFdIYTkvdVlRaldQ?=
 =?utf-8?B?VE9CbnNEeFhJNmJSNmRKU1d1UEFvZEE2MnBJdE9FNDBKQzFTOXdyV0hYNk1Z?=
 =?utf-8?B?TGVtTi81QU1aU3dJNDFTRk9xRVVTclU4MHluam9EdWhKV1FmVS9YeUlCSU1P?=
 =?utf-8?B?UHVVSU9BT3JROHBscWd5N0NYUGVHU05IeGp2UnQxbkQ0M1c2eDdQcVArYXBt?=
 =?utf-8?B?VFR0QnBDOGpveTB6SDd0Nk9IakwvT2N1d0I5RW1zR3hRSWcwOEF1QnV1bDVl?=
 =?utf-8?B?VzBFWUFya2tqbkprRXA5OXJHR2Vabld6UDU2TEZLTlE4N1VKck54dU1NZEpP?=
 =?utf-8?B?bHZESjBnSmlFWUs4Zjg5eDdkR1ozRHZFS0RrQi9rUWJzR2hWbzMrSVB0WmNW?=
 =?utf-8?B?UzRxZVNZNnJaeUpONHBOMGI0UEFOWmh4UFgxNUExM0RCancvYW14Ty91VG1W?=
 =?utf-8?B?UU5MRjN3WG1vdHpXb1pMclJRVFpYdkVCR1BrYnRZZDcxZzBWR3R0YUlhbldG?=
 =?utf-8?B?c3VQL1dtMUczMy9Pc2pySWlBL212Zk9hOE90Vy9DNWxYazJqdlZPVFk1bUt3?=
 =?utf-8?B?cGFIMXFEdnpUTEpsRzV6TWJWNXNpQ2JFSE5waDd0M1dOY1pkMlFuU0U1OXVn?=
 =?utf-8?B?djZCZmZEMTlVZGdWb1FmOVZBL1dCWnVSZmowdHJhZk1WNkZzMUpPc3JrcVkr?=
 =?utf-8?B?d0VUT0lEZjMzOXFFWGg3dlBQYlhFaFBkZzhOS2E2SjlKTDhRZ05rSkJCRUcz?=
 =?utf-8?B?RjIvYWcrSE13TEk2VFVZOEREc29wczBTMFE5cXNWczFNV2paRHI5OGpUODBn?=
 =?utf-8?B?dzlNN3I2a1ViTFJ3NEFxMmkyZ3htNU9HYlEvbVExUVFnZHFBMDYyUlU1dG5i?=
 =?utf-8?B?bG1BQWhjNUM2RUR6cHBIZnNYajBCaWhuS1pFUHdDYnpCMkFnakNEdmhCTFJI?=
 =?utf-8?B?SzlUUVZnbVoxRFgveWQreWNmc0NIZDVJN00yUWhiNFZFVVBiYURSM0M4MzdL?=
 =?utf-8?B?RlFBaDFVcHYvTksxbzZGU2pTK3pCMDV0NmZNeHVGNGkxUXJGV1BYblVDYVQ3?=
 =?utf-8?B?YSt1d3hzajg5WElHem5lOVBHWWJlWVdlZmZRcy93MzN2NkV0U1JDN1pDbjVU?=
 =?utf-8?B?ZTdxT1Q1ODRxVTBiWDZ3RWNyYzNkdGgweGNHTjNQL2srSDluSGNZUExNTVJn?=
 =?utf-8?B?NDBsM0RDc1haRzJ5SVdhRk9pU3hJMlo0SWZxeXRidk10TUhIZlR3MzJKM0dm?=
 =?utf-8?B?QmM4UjdMRTFRK25XVll5SE44bE91Szk1cm5aMU9CM3VQYjF2WnZKSE96YmxG?=
 =?utf-8?B?MDFqRzNlUE91Mm93bDZXVXkvbDBSYjJ4aW95Y2JSSExzSUE3M3hxVTFUQ2lD?=
 =?utf-8?B?b1RKNXVhbzVIMGJzTHRYWk9BRkNaSmgycFZwa1gyVnVxREZvZk9wbUQ1ZE9t?=
 =?utf-8?B?MkpKdmJWZDFEM1QxVDQ3TmtOUk9ubHhFbllZT3JUbXdnWXFEUDJoYmtjV3N1?=
 =?utf-8?B?OFVFM3doSFlyQ01hQ3lOU2lLbi9YU2JPNjlxRlVhK3lhOG9NYkNBOVZqRm9n?=
 =?utf-8?B?NS9DZjlPSXF1UzlWcjZLLzhnNVlHK0llRzA3ZDRVbUY2azhXdTNFSkhsK3Bp?=
 =?utf-8?B?NXhUeDBjZy9CRStQZ1BNVU1zQmZlK1o0QUQ5MFVyMmNIL0FHNTUxUG5DMng1?=
 =?utf-8?B?OEs2ZFU3WGdHYndBdUtHT0YrK0RjbkM2b2dud3RPU2dPamMzdjg2VlZBNFQ2?=
 =?utf-8?B?cXNPVFZJSmsrVUtxNjg2VHE1VTROenhjcmVvQi8rUWJJKzRCK1VNYkFzTXhw?=
 =?utf-8?B?NUd3VUg4Ym9jMmZDV0lpQUg4NWZnSDBLT0tHRHhDU202ZUcwZVNqVnNSQ3p1?=
 =?utf-8?B?VENxOGQvMDRoKzlkY2xiV3p3Y0JMeFU4cXRGZWtVZysrZDVTeEVLUT09?=
X-OriginatorOrg: garyguo.net
X-MS-Exchange-CrossTenant-Network-Message-Id: d962b7cd-83d1-4119-6b0a-08de9627721a
X-MS-Exchange-CrossTenant-AuthSource: LOVP265MB8871.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 11:02:09.6503 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bbc898ad-b10f-4e10-8552-d9377b823d45
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5wJ4fdBfUdHY1EjK7jrbIP5hCqAdxgXchWnqNqOb8JDfRc9ooWiF0IdoQ52whCiHkTqnOLXxKjnbYtVk23VOfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO3P265MB2362
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
	DMARC_POLICY_ALLOW(-0.50)[garyguo.net,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[garyguo.net:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[56];
	FROM_NEQ_ENVFROM(0.00)[gary@garyguo.net,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[garyguo.net:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vmm.rs:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,pagetable.rs:url,garyguo.net:dkim,garyguo.net:mid]
X-Rspamd-Queue-Id: AF2C93C9735
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Apr 8, 2026 at 9:19 PM BST, Joel Fernandes wrote:
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
>
>> In order to fully benefit from it, we will need the bitfield macro from
>> the `kernel` crate so the PDE/PTE fields can be `Bounded`, I will try to
>> make it available quickly in a patch that you can depend on.
>
> That would be great, and I'd be happy to integrate Bounded validation onc=
e
> the macro is available. I just don't think we need to restructure the
> dispatch model in order to benefit from it.
>
>> But long story short, and although I need to dive deeper into the code,
>> this looks like a good candidate for using a trait and associated types.
>
> The walker code (walk.rs) is already version-agnostic and reads cleanly.
> The version dispatch is encapsulated behind method calls, not exposed as
> inline if/else blocks.
>
> Generic propagation (or version-specific dispatch at higher levels) adds =
more
> complexity at higher layers.
>
> Enclosed below [3] is the diff I used for my testing with the data, I don=
't
> really see a net readability win there (IMO, it is a net-loss in readabil=
ity).
>
> [3]
> https://git.kernel.org/pub/scm/linux/kernel/git/jfern/linux.git/commit/?h=
=3Dtrait-pt-dispatch&id=3D5eb0e98af11ba608ff4d0f7a06065ee863f5066a

IMO this diff is quite has got me quite in favour of trait approach.

I wanted about to purpose something similar (or maybe I had already?) trait
approach some versions ago but didn't due to the eventual need of `match` l=
ike
dispatch (like you had with `vmm_dispatch`), but your code made that looks =
not
as bad as I thought it would be.

Best,
Gary
