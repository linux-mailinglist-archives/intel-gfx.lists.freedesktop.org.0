Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CF8kC2+41mlxHggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 22:19:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5EB3C3B4F
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 22:19:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5737510E12C;
	Wed,  8 Apr 2026 20:19:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="Km7BD1tQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN8PR05CU002.outbound.protection.outlook.com
 (mail-eastus2azon11011069.outbound.protection.outlook.com [52.101.57.69])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A401010E092;
 Wed,  8 Apr 2026 20:19:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AKyu4YTuNfA6X14JYgDH4QZbhieXEtDiQu7YWMCi59iOpa0x1UwMEoJNJLB5UAhoAMSretwzlE+amYQxxe1h75iehCazWnfUggXhOSMgrMrViAW+5UiEd82BXHxqtHsxUuymmYrMk3cVhNQTNUeoPYyvk/FwNwbvfYdYHoTLwIrST5WNcGuciibcoUerF5N2zQbqRD45O7En8ScAsp9+SzpnaUkXvxBF5/jLv75GNjSFjOtJz92wrzHngKZSramhp/6YiVucN+ewJgId1rLX7IwgHMQiZeqLa698MVf0NftGJwv0e4miCQxRh064Unu7tLibqTi1Z0Nh5v3fFD67Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2efbJ2KJAYhvZX4rWrR+CqaD4WLC7lk1DnyZIwyvCO8=;
 b=c8JPNQVnFD4HBCfgGIsAgFcwuGT+b2Hw3mtG+RE6gDl/AhcE8oTgtMRZQ5GAtwqIhmes0txN9WwyBIrGJ4CV0DsAEP43XH8sPcPQvqn3VzQld8okPpOIT4iuPSfSBbKqTmNJj/M6LDAvc2XrdRhPNCm4AmEuGQZSLYlebMWiPVvVorVkffI1T8ZzlP0nLftqXDq4wy0ZV2JmNxu3JD3V6b6ZtKgD/YdTGq4m60IO1cx+vYqij6KBDzJZQvmiO4D7zf9CHoHcbFI6ZfSoF+x5IAk8ZWfpwXUQX0B3cIwsaae0LXltGOw3EAGGv/JoiYABj3vt3iybXTJLECfXUAKaAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2efbJ2KJAYhvZX4rWrR+CqaD4WLC7lk1DnyZIwyvCO8=;
 b=Km7BD1tQDEJeOs3neGuXzdXrnDVgLasqGI1Tq2RhdJOrNseJxwv8tV4961IA3btB7TxIIG1DU2Qw4xx0xvzefH8ayO8VdtJPuTZQrNzjbSpIEiI+vmz98LmS1/aQ006g6s5ZWw1zofIw+Uf8A8I5tP+WIxKud680eSIJsNQGAUf6JpImgCG4Yqm0VvbR4uqR3iHGIXRldKSCOSNqz9JiwXTG/UyWZhkiawQ+4wzjyYbCK862twNbQVei7E1QYbSapxNyITtg6A8Xqu4hIlQrIyoN5viRbk9sWTacE3Zkmj+Abo5ynghZ+/KwhsZxxuV25RmwrT/DMm71IRJmwNCZGQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 CHXPR12MB999221.namprd12.prod.outlook.com (2603:10b6:610:2fa::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Wed, 8 Apr
 2026 20:19:44 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Wed, 8 Apr 2026
 20:19:44 +0000
Message-ID: <2f004511-61d1-4197-84b6-cddcdd275e55@nvidia.com>
Date: Wed, 8 Apr 2026 16:19:40 -0400
User-Agent: Mozilla Thunderbird
From: Joel Fernandes <joelagnelf@nvidia.com>
Subject: Re: [PATCH v10 12/21] gpu: nova-core: mm: Add unified page table
 entry wrapper enums
To: Alexandre Courbot <acourbot@nvidia.com>,
 Eliot Courtney <ecourtney@nvidia.com>, Danilo Krummrich <dakr@kernel.org>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
 Bjorn Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin
 <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, dri-devel@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, Alex Deucher <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Andrea Righi <arighi@nvidia.com>,
 Andy Ritger <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Balbir Singh <balbirs@nvidia.com>, Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 joel@joelfernandes.org, linux-doc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-fbdev@vger.kernel.org
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-13-joelagnelf@nvidia.com>
 <DHIFF98P1YQ3.1IXUT02E3TF20@nvidia.com>
 <5db2aab1-4b65-486e-ad9b-27a108bdb0d6@nvidia.com>
 <DHMYSTLVHIFJ.A2BDMPVNZNLS@nvidia.com>
 <537a8c5a-3885-4c47-99f6-963b48ddf87d@nvidia.com>
 <DHNKYBM159T9.2UUQ7CU0RN0BU@nvidia.com>
Content-Language: en-US
In-Reply-To: <DHNKYBM159T9.2UUQ7CU0RN0BU@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BL1PR13CA0116.namprd13.prod.outlook.com
 (2603:10b6:208:2b9::31) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|CHXPR12MB999221:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ca0982a-89c3-431e-3c89-08de95ac2c4d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: QCS3u0Bq+ix9zqdgXqkPHsvzqDDFahSoj89lzWz4Iq4zKR8Jcrr4rQ+PvsaHvvxREhEpdVn0eBUwjLCJLyAhcoFEPcx4S+TroyJFLzcPX6K/wpPswGmRNxlu4ZgSGUZDuk5iiu+xl9+5Q0CggRFPHpgk5q8OhDE1iHDy43FmESnDIK+v9G2YPurB5Ao390V1SQ1w27sUe2ECzlea4e+S1+H0vrymIViub2xVh9fxsGRFhyUGa2KzhWwH30s3b3+yquLwaDqEm0fhGLeFkc17FRMB4dakNSA858NSu8rk1QF7s0V4jM25Ybxz3Rp9Ij71kU4XyD1ObAF6PDEyJhP8miDC1W/H6/tutkeXF1wjf6jgU0h81A3wPS45+VbB4dB6vBZFHl/tGUDKVMuv/CubYKJutX8yGgc0CcqvYut/4S9kMrdi0cORtvK//Oo2tItmEqUKsSkiqmwASE08Ngu7TePthk/lJ3lsoDD++uHjHWGLl2owd9k6UCJgPT5WHWk9s/QljqAfKdeECq+WURFAh28RaHnCP0ijgRBb6beteIMAzmcXVmje4h0uFSwcMWDyVUc5nNxiGhsDRVkLxVLPYl0/mUQjRtFOKPzcB2NM65j6mY9D/cJQmLnxnh817UmfTLmFFeK8aUq0uam4eIKI7oVreb/vRfQ+gQyIhbn8znSUJR9z/9O0W5NuIzzqGeHVWrO44lsrdgLhlQnJ9p70fukY1DmqWYqgeUyf7blY3Zk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L3oydXF0cFhkTWVzMUxBVUtXLzcyUVExY2gveGc2OVUrSm5FOVV3dzJSUVVr?=
 =?utf-8?B?SUlITjhpV2VJZlJCTnRqZzBmekFUUitDVVBMNUs1N0tETVVsSUFkV2JvN2FL?=
 =?utf-8?B?OG82VEc3K2xnTkFUd1czL0pKZ1piT25jZlhYTXhQRWtXLzhwSTA4c3BoRUt2?=
 =?utf-8?B?YVNDRzEwOURId0JsYzEyQ3RwbWFqcVk0UVpBVkx1MDNaTFE3dnEyWDZ5Y2Yv?=
 =?utf-8?B?d01ldTQ3VGpZVUtYTFNUVW84TkFaM0NrRUlLeXorSGFqY01JZEx2Q1ZRQnEw?=
 =?utf-8?B?cVhPY25YRjV0ZnNCOHlHTzZvdjNWUlVzVnc5RGhRcmpZTHRRYmpsa1RFL2pN?=
 =?utf-8?B?enpyTVVWVW1XSWdPZFMrTnl0U0NqNGdMWGdseWZ1K0pwUWovUGxiNjlZb0lm?=
 =?utf-8?B?REsvYllMK0xodm1pSFR2Y215dXNQZEFmTDRUTWJnYlNaTlhSTzJjSTVtRTFY?=
 =?utf-8?B?OFJnd051dEF2RFdNbjF2d1VnSEpCcWNpZU1xVWsvR2U2cHYvZlpUeXZDNEFw?=
 =?utf-8?B?dWczaU1ScGx0ekZibmZMUmc3WkozU0FicVY0Myt6UlZhWEFNakpOT0FCbXd5?=
 =?utf-8?B?ZFVEOGFwUmltYnhSNVQvdGFXNE1lT2dGU1FTbE9RaithY1lUdnNHeC9oN1Ri?=
 =?utf-8?B?bzNHa21FanV4bHdPVDdiSGlXMUgwOXppQ1NtVjVhNm1SVE16dG53eE1VT001?=
 =?utf-8?B?Z01CdFc3ZXpGYlJrcDRHQk5YNGZGU0xDaWpMazk4V3VQTFJITEFJYzhlUStW?=
 =?utf-8?B?TkJraUFpR1ROUEpqb0dmMFd3Mm1iLzB0WUVBVTJ6QW1FVUNUMzN6WlFjNzg3?=
 =?utf-8?B?U0pKc0tkTkNVWHBqNHp1Q0tCbWtBQkRQdWlRL0pXZkdDRTllYVhUL0JMclYw?=
 =?utf-8?B?M3RkcFFSci9teENWRUZkeC9JeWxBNGtWS1ExZW9ZNXZlcnoramZWSE5KZmtF?=
 =?utf-8?B?ckdXOUR4SVVldjNRWTBpQUUvUzNteUVqWmlhQ3BqVXVoRjhvMVBLbFVndG9y?=
 =?utf-8?B?alhXOXFXMnBMaHRQTUw1TnVWUjZ2bDJleFMwVGJZK0JRZC91cTA1Q2h4SE5t?=
 =?utf-8?B?eHdxdXFqTHNGVXk0THUwMy82OFFBNjA1TllXSHViUHhmcXFzWlRGMnVSM1Mw?=
 =?utf-8?B?SFFLMXY1OUIrbWtVQW9Kb2pWckhGRnorRmtqaUhodTJCckFHcGd5cXovYnIv?=
 =?utf-8?B?RlZTRS9CS01RbDVhMjQxNEZiVEZDazVlbk1SSTdwVDNvZ05iOHBIWDRBVzg2?=
 =?utf-8?B?bGpOdzF4YkJIRXdscmpxbkFkVWdQZ2FVQWZCNzkwYTZVL2J0cnNoYy9rY2ox?=
 =?utf-8?B?dzAxczlwODdVRmljS0llQ29MOEpqYlVmaDBwcVc3RU0zbEZQbFFudE84aTRn?=
 =?utf-8?B?Z2IvV3RYZHBZcTZKWktEempVNGVBSlo1UmF6R1dqOUQ0WnlYaE9mWUZBTnFr?=
 =?utf-8?B?OVFmdXBhYlJ2blBHcVYwRnZvaTdwUFJrOUVaUGJtM0hkWG9sY2VXRC9taUpn?=
 =?utf-8?B?R1A3SXNPTXNZaFZBRkMwWWpNYTdvNDR4SzEzNDdlSDBxM1ltYUhOYldBTFV6?=
 =?utf-8?B?VXpVZEZzS05VWXdIK2x2RGhqQU9oeUE1Q05aNzRhNjJiaDdwekJPRnhMRDNK?=
 =?utf-8?B?VkZuWlF1a2hudTF0ajl6L0lNRUpZNDVnZHYrR0pvRGJzUEswdXMveWFZdzNQ?=
 =?utf-8?B?TVgrZG00eGJXb08vczY1aWpqWXZkcnN1b0YyTzA0cUNNSjhsUGI4eThvV1J5?=
 =?utf-8?B?QmZYTVNZQ0hNOUF6elFudXZoQko0M1gveENIWDd4UjkvMXljZWxvdXlqUmgw?=
 =?utf-8?B?UTNzVnFXNVdIcW81ek9yWVJiMTNzQzhVSnJnK3FzRE14VVovbFYxaUFkVEta?=
 =?utf-8?B?dHVaUVRreU9id1FsYlNlTUxVYlE5ZHJaOUk4MmZ6TjFaWTdVcWxOYzhXU2l3?=
 =?utf-8?B?V2Jqa3Q0dDZSV2xaUVNxWDJMM3dIaWpYbjZ3RURXazNYekdaU2lJZzFyMkZM?=
 =?utf-8?B?UDVLaDg0WjRzenlsdFo0dnVDei94U1llRmR0U09aTEYrREtWV0lZRmg0TEhJ?=
 =?utf-8?B?dFYxeEcvYmE0SFhRbEt3WXNOTDZ0MmtOZzA4SURyUThmY0locjNSMUtZLy9u?=
 =?utf-8?B?UnRJekNmNURXaVlmUno3RE9mWCsvL3BxQUtTY3JTMU91a2JIWGVsb1JJcktu?=
 =?utf-8?B?Q2V1dy9CLzdVSUU4SHJWU3AvTU5zaWpnMVF2cUpBUG03UnpvdXhGZmYzY0dC?=
 =?utf-8?B?ZUM5dVBkd0loMkFhS3VGbE1DQUxYZDFlVlhNWnNzWjl6aVc1Wm0rbVZoeVhU?=
 =?utf-8?B?Y3E4Q3ZZbUpUeVlVdUNQbEtSTzZYRXNQOXQya0lYZStzZlZiZi9rZz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ca0982a-89c3-431e-3c89-08de95ac2c4d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 20:19:44.5944 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CQ58XxuvyR++IUnmDaFEMtnPrcJYrvSralMg/cil1XpSFiMO+9oy5YhqDWupykcOak/KCqpyOMb5QuR4z7nHwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CHXPR12MB999221
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: CF5EB3C3B4F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Alex, Eliot, Danilo,

Thanks for taking a look. Let me respond to the specific points below.

On Wed, 08 Apr 2026, Alexandre Courbot wrote:
> After a quick look I'd say that having a trait here would actually be
> *good* for correctness and maintainability.
>
> The current design implies that every operation on a page table (most
> likely using the walker) goes through a branching point. Just looking at
> `PtWalk::read_pte_at_level`, there are already at least 6
> `if version == 2 { } else { }` branches that all resolve to the same
> result. Include walking down the PDEs and you have at least a dozen of
> these just to resolve a virtual address. I know CPUs are fast, but this
> is still wasted cycles for no good reason.

I did some measurements and there is no notieceable difference in both
approaches. I ran perf and loaded nova with self-tests running. The extra
potential branching is lost in the noise. In both cases, loading nova and
running the self-tests has ~119.7M branch instructions on my Ampere. The total
instruction count is also identical (~615M).

I measured like this:
perf stat -e
branches,branch-misses,cache-references,cache-misses,instructions,cycles --
modprobe nova_core

So I think the branching argument is not a strong one. I also did more
measurements and the dominant time taken is MMIO. During the map prep and
execute, page table walks are done. A TLB flush alone costs ~1.4 microseconds.
And PRAMIN BAR0 writes to write the PTE is also about 1 microsecond. Considering
this, I don't think the extra branching argument holds (even without branch
prediction and speculation).

Also some branches cannot be eliminated even with parameterization:

    if level == self.mmu_version.dual_pde_level() {
        // 128-bit dual PDE read
    } else {
        // Regular 64-bit PDE read
    }

This isn't really a version branch -- it's a structural branch that
distinguishes between 64-bit PDE and 128-bit dual PDE entries. Any MMU
version with a dual PDE level would need this same distinction.

I also did code-generation size analysis (see diff of code used below):

Code generation analysis:

  Module .ko size:   Before: 511,792 bytes   After: 524,464 bytes  (+2.5%)
  .text section:     Before: 112,620 bytes   After: 116,628 bytes  (+4,008 bytes)

  The +4K .text growth is the monomorphization cost: every generic function
  is compiled twice (once for MmuV2, once for MmuV3).

> If you use a trait here, and make `PtWalk` generic against it, you can
> optimize this away. We had a similar situation when we introduced Turing
> support and the v2 ucode header, and tried both approaches: the
> trait-based one was slightly shorter, and arguably more readable.

Actually I was the one who suggested traits for Falcon ucode descriptor if you
see this thread [1]. So basically you and Eliot are telling me to do what I
suggested in [1]. :-) However, I disagree that it is the right choice for this code.

[1] https://lore.kernel.org/all/20251117231028.GA1095236@joelbox2/

I think the two cases are quite different in complexity:

The falcon ucode descriptor is essentially a set of flat field accessors
and a few params (imem_sec_load_params, dmem_load_params).
The trait has ~10 simple getter methods. There's no multi-level hierarchy,
no walker, and no generic propagation.

The MMU page table case is structurally different. Making PtWalk generic
over an Mmu trait would require:

  - PtWalk<M: Mmu> (the walker)
  - Plus all the associated types: M::Pte, M::Pde, M::DualPde each
    needing their own trait bounds

And we would also need:
  - Vmm<M: Mmu> (which creates PtWalk)
  - BarUser<M: Mmu> (which creates Vmm)

I am also against making Vmm an enum as Eliot suggested:
       enum Vmm {
           V2(VmmInner<MmuV2>),
           V3(VmmInner<MmuV3>),
       }

That moves the version complexity up to the reader. Code complexity IMO should
decrease as we go up abstractions, making it easier for users (Vmm/Bar).

If you look at the the changes in vmm.rs to handle version dispatch there [2]:
Added: +109
Removed: -28

[2]
https://github.com/Edgeworth/linux/commit/3627af550b61256184d589e7ec666c1108971f0e

The main benefit of my approach is version-specific dispatch complexity is
completely isolated inside MmuVersion thus making the code outside of
pagetable.rs much more readable, without having to parametrize anything, and
without code size increase. I think that is worth considering.

> But the main argument to use a trait here IMO is that it enables
> associated types and constants. That's particularly critical since some
> equivalent fields have different lengths between v2 and v3. An
> associated `Bounded` type for these would force the caller to validate
> the length of these fields before calling a non-fallible operation,
> which is exactly the level of caution that we want when dealing with
> page tables.

I think Bounded validation is orthogonal to the dispatch model.
We can add Bounded to the current design without restructuring
into traits. For example:

    // In ver2::Pte
    pub fn new_vram(pfn: Bounded<Pfn, 25>, writable: bool) -> Self { ... }

    // In ver3::Pte
    pub fn new_vram(pfn: Bounded<Pfn, 40>, writable: bool) -> Self { ... }

The unified Pte enum wrapper already dispatches to the correct
version-specific constructor, which would enforce the correct Bounded
constraint for that version.

> In order to fully benefit from it, we will need the bitfield macro from
> the `kernel` crate so the PDE/PTE fields can be `Bounded`, I will try to
> make it available quickly in a patch that you can depend on.

That would be great, and I'd be happy to integrate Bounded validation once
the macro is available. I just don't think we need to restructure the
dispatch model in order to benefit from it.

> But long story short, and although I need to dive deeper into the code,
> this looks like a good candidate for using a trait and associated types.

The walker code (walk.rs) is already version-agnostic and reads cleanly.
The version dispatch is encapsulated behind method calls, not exposed as
inline if/else blocks.

Generic propagation (or version-specific dispatch at higher levels) adds more
complexity at higher layers.

Enclosed below [3] is the diff I used for my testing with the data, I don't
really see a net readability win there (IMO, it is a net-loss in readability).

[3]
https://git.kernel.org/pub/scm/linux/kernel/git/jfern/linux.git/commit/?h=trait-pt-dispatch&id=5eb0e98af11ba608ff4d0f7a06065ee863f5066a

thanks,

--
Joel Fernandes

