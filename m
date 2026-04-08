Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGKmJNUE1mnbAQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 09:33:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8EB03B8455
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 09:33:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7295610E561;
	Wed,  8 Apr 2026 07:33:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="MdkUrkoK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM1PR04CU001.outbound.protection.outlook.com
 (mail-centralusazon11010002.outbound.protection.outlook.com [52.101.61.2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C1DA10E561;
 Wed,  8 Apr 2026 07:33:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dG0ENxs91VmLlUE3/QeZQrboUWTYJpWBZOXJfNk8SQiyUj/MDjFkeZDXcVCj2AzOl3aD7qqbuSIsDSVqwM9En5jn8G/8lJuhGsqsW4KvTuGUzsCvIHd0VDawDsatNf5BEEt/tstbJaR2dbs3WSv/IfLYtTpw/ULCiXswQTGK9nCMx5+vaFBiaIL8VmoTCxj4doiEa8xKzp9NgyO8KGwDjFkIqgrEwZdIwUnsMTVaZX49QuOZJnzyzTYvi0/fh4ZnsNokpEXkja1mehpT3hGNe2QRDSNOnLnHtB/f1w1u19Qq9bEPW0TK61wOhfFeTND/xGXAV+C9xiPW+MkBvLrxCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gKbgwlW98uWni15v4bFnoAhDp76mow4q1DVH/dmDduc=;
 b=GBpE+nPfN41FRRE5BDDm+N5Ci+8NQMTgmgrDy+OpOB4xkHydr77pWU4315plrWgH6Kl9mDv0RbgExk53zOoqY/r6ZbfVz8i5P15h/NLeRVYJz2V+KzAWieguIR2lfpoUom4AazTgtnUBwmE1VmupuPmcXflxN5hr0Sz9TFU0FIZc8IgR/K/Syk77wJ5Q0vkAAOK6iUU3Vy6+5ii4wRtWyayamYSj1uqxiJY2kE3t+/AHqMGTBlzqRHu0ampwrEA1SWjG40xX4GmP4OvqHDFksNxlAvw/ddaNF2Xa3z00Fzd95veXZaS6n+iQBtZcVJogVqnIrziyvETLchhfH4c9Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gKbgwlW98uWni15v4bFnoAhDp76mow4q1DVH/dmDduc=;
 b=MdkUrkoKQJJ/5Mnriq+qJwGNowiAMDfc22ll7cBlZTHlbd3Vqzz1BFuOgTXx+jUUPWGa27Sdp/V0JlIWIyWmDXqbTK/ekJi3glLUfTciJCvuN1rIUh28Wn/VcrGyTYribXHlpvDalJ8uRlFMYynsAM1fg5vhBGFoqPO8mN+iII43MAHS4RqH5IFLEdPFZANGqDf6fHI+Kmni8FMIy5abMtwPP964tZxYMdXD5pJhEsiV5Q76F2Y5W6nGlYPEszBWWTXf1hgZFhAngNlO37i9PAVAoLhyRx/vcrSb6+IPJIRUpxscsJNzvxXRUdPRQex8g8MGfyS71dko3UUeMcbMTg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by CH3PR12MB9249.namprd12.prod.outlook.com (2603:10b6:610:1bc::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Wed, 8 Apr
 2026 07:33:28 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%4]) with mapi id 15.20.9769.018; Wed, 8 Apr 2026
 07:33:28 +0000
Content-Type: text/plain; charset=UTF-8
Date: Wed, 08 Apr 2026 16:33:24 +0900
Message-Id: <DHNLKWSL1YWG.2YPWKQN9RTRTO@nvidia.com>
Cc: <linux-kernel@vger.kernel.org>, "Miguel Ojeda" <ojeda@kernel.org>,
 "Boqun Feng" <boqun@kernel.org>, "Gary Guo" <gary@garyguo.net>, "Bjorn Roy
 Baron" <bjorn3_gh@protonmail.com>, "Benno Lossin" <lossin@kernel.org>,
 "Andreas Hindborg" <a.hindborg@kernel.org>, "Alice Ryhl"
 <aliceryhl@google.com>, "Trevor Gross" <tmgross@umich.edu>, "Danilo
 Krummrich" <dakr@kernel.org>, "Dave Airlie" <airlied@redhat.com>, "Daniel
 Almeida" <daniel.almeida@collabora.com>, "Koen Koning"
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
 <elle@weathered-steel.dev>, <alexeyi@nvidia.com>, "Eliot Courtney"
 <ecourtney@nvidia.com>, <joel@joelfernandes.org>,
 <linux-doc@vger.kernel.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v10 02/21] gpu: nova-core: gsp: Extract usable FB region
 from GSP
From: "Alexandre Courbot" <acourbot@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>
Content-Transfer-Encoding: quoted-printable
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-3-joelagnelf@nvidia.com>
In-Reply-To: <20260331212048.2229260-3-joelagnelf@nvidia.com>
X-ClientProxiedBy: TYCP286CA0040.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:29d::15) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|CH3PR12MB9249:EE_
X-MS-Office365-Filtering-Correlation-Id: 876d5d13-74d3-43b3-0e2b-08de95412009
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|7416014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: eG1Qxns4yK6U5lN20aO0OAnjVu1ZOZotDzd4ztid3766lFd85VFukgvNA48fWKWsih5tsvRR4dpiFsVlbmGp24a7MjruMacl5DQsxhXpZ7KI2ZlCECwG5FsX7fKEQPkiokhquL7vdB9rGoUUOLOyvjA1H1mTA9NWM6Zs4hNG9Bdj4xwQIw+Whm2p1Nh2I7brU9hfOu7BDgHPV4LZ4qiawYxKZc1Mmx+hCyqVULJvZu6yFlUPj/BCsj0w8lnzJJAQyKpgBuJ53Dd3ALUfhhmU4DyIzbSOgJR5wjMWNm9+FMw0PWECCaw8cWXKNzUdR5ONpvs+Br5uFkN4TJcPfu7nPlKufm/yNltT9UfhrrZESHQm36Z4b9cU+JBB/KZWwp8hRJg1CsOM9N/XxDuYKZggKu91+wof4M+aNFTCwV1068Oc3OtJUG5sn6D4SKDYhVQ8Nzcez2cYX3pT26ypyQfxTXI6i7Y+/Y+kLafVaEf/FuGI3gQIEpIqukCcdrcTT9RbmDBQNj6AqRKt7YpMG4S1SYKiDkoRs6fkJqEdvLvGPZjpGa1lx7HNtr+qoXYkDE76fOfQkmG90pEz8chROyXW0mqX4sAr64epIq2pgr3dIj2nXyC/ceBif/14uCsJsNP7i3YsCIdXNmYJjmxapqf1UgfmCwmFx7IIwk+eAwqqA7E9x+Pn/1vFko6qrsxkMl7W3def85DKJFej/KDZsQrAEGsoqKdiyXtL1nMyH/fMdrU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB3990.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(7416014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WGFBaUhlYU9RM0pjREs4aFZqMlFPL0o1UjhtWVY5YlJvcnYyVlowNUlVMWtJ?=
 =?utf-8?B?MVQ1V1pqdWs4OXlJcFpKMHBvQyt3Q24rWXJublhEcEhhK0JmS0kvb3J3Qllo?=
 =?utf-8?B?RVNvallEVDBhV3BwWkRVMktkL3NHZHdUVk9nS1oxSFNUckZmQTdTZmFCRUow?=
 =?utf-8?B?dXJDN1RJUGhDdTZzMCtpTDREdHN2bHQ3S1pzbzQyajlkN0hlWVlBcjdvOG9H?=
 =?utf-8?B?STM0eUwxNGZxdnBDODhSVU5ibGlPcENyU0xGK29rTXdIRElJVlRTUjQ5cExD?=
 =?utf-8?B?ZkZtSXpmRUtGRnozMWpVZE1pZGJ1SmthR05EakwwKy8raFc4cUl1dTdWdnhx?=
 =?utf-8?B?ZGhaY3F3TFBuQUV3ZWI5ZFdSNVFCZEJXWGE2ajJ2Um54eVVUZU1JUUJqS05K?=
 =?utf-8?B?dVlRaUxvOFUvaUVET2FKTHo0dGs0QTBkUVZaWFZsZWc4amVRUm16SFNZVElh?=
 =?utf-8?B?ZXErOXM5ZHJVMlYyKzNpTkxZRUwySWErY0NJU3ZZUmN3WUFNZDhMdDVOR1dR?=
 =?utf-8?B?T0k5YzliRjFYemtEdzJXaVJycGl2YUtDT2hNamNENGg0WTBMQTlwaUlRYjF3?=
 =?utf-8?B?RFFkZ0pRWkNmd2ZOY1hjTFlUTW5GU3dvOW1oSFB4Y3ZRbEpiZkV4QmxWTm1J?=
 =?utf-8?B?OXIzVGpJMmNxYlc1eGpKdHdRSTFxMVlJVzg5U2t3Q25RVHBSTVdqTllzMWpz?=
 =?utf-8?B?dXhWcXNnNGc4NWFtaStvNnp1MGFXcC9XSTJIT1hvdmFYY3MzQXNsNlg2N28v?=
 =?utf-8?B?YUMzR21VQVovWDlaa3dqTkxJeGFNQVl6ZU9KWlBkVUZMNGhBOVpRS084MzQ3?=
 =?utf-8?B?ZUdkSEh4cSs4UHdjYjl6UDZGcC9McTcxeVRJZmV4d2tHRUhVYy9nWG9FM1lW?=
 =?utf-8?B?WjBmQ1NUUlY1TmprRDdEVUk2dU1Demg2ZUo0TDdUM21tTTJoUDlMbmVKeGx3?=
 =?utf-8?B?NHBpbVp4TFJicVZEOVo5c2xKVWo1ejNhR0xpdk9lOHN0MEZBTmhNUkUzaUo3?=
 =?utf-8?B?alVKYWM2UlJoZHFkOWVidjU5MjV4NGpyTG9mbmJmNGdFQ3NrZlZOMkpjaEdi?=
 =?utf-8?B?a3FmU1hGUng4Zzd0UmdFVjQ0ZUpyUFcxemhCdXE2UnlQWnllaWowRnZCWXJi?=
 =?utf-8?B?emZtUzA3cm51L0UvOXVVNUdnWDZOZm9LcThDS0FINDF6Q1Z4R3VSTFpoNFp5?=
 =?utf-8?B?UGMvRnlBTDlhRjlKVTNkcmVkb2hoZUtac3JzbmNaaWo0eGorVWw0ejFaa2hK?=
 =?utf-8?B?aE1TYjJVWnQ3bVJuZzJuV3J0TmQ0WDhlN2ErU0JDSHJIWjJLTFg1VkxaSHVQ?=
 =?utf-8?B?SytrMytaWGJMckdxY0Q3MlBvVUdmdjE5SnVqVG9BNGE0RmFJMGd6ZEtHRkdU?=
 =?utf-8?B?RVowK3BJOXArVFE0S0U2STRZTjdFNTVQcEV5YWUzVUJjYVY0Um5wT2VqRmF4?=
 =?utf-8?B?cU4yVjl6dWpvZjlwMWUyNHhZVStPR1hMSDFXbUZiT0hqbkpSTUhaZytVQWFS?=
 =?utf-8?B?eEQ2U0VRakpHeG5XcjdDb0RYS1F0V2JvcDZKWEt5QWpzQzN3dDh5ZmsycHVm?=
 =?utf-8?B?UEVvTExjRUdGTmljKzRUNVNhaFVHY08zM1gwRHBVUnVNNXdPMGgyTFhKcmtP?=
 =?utf-8?B?WUVZbW5JQjVERWRtVUhmdHdFS0M0N01FUGpVRlNVaW5mVU5sU3d6WTBGbEpJ?=
 =?utf-8?B?N1F4dElNbUlBRnlBb29JSHJQSWpmVFg4M1dUSlUza3MwR29LQzBOK0UvS1FV?=
 =?utf-8?B?eUppK2tRMVVoV0ZsL29KYzJ0SFIweFlsZlJjV3JrRDIxcnlNZnhMSHNkTlJ3?=
 =?utf-8?B?ZUxNUzF5QjQvUGEvbjRZMVhmUndDN0M4R2JYRzlHejdwbE9oVUVsTGwxd0Vn?=
 =?utf-8?B?QVYveHpkb1hRaEdzQ0QyOXJpK0hjMEJwQzVDbzZubmZpS1dyNXNUNHZJNHEr?=
 =?utf-8?B?bE8xWllvN3dnRDNSUTJ0MC9DRVlIdzdxaHllV2JJQ3dOS1E5VmF0bFJUeEtE?=
 =?utf-8?B?MWhzczVJamhNaWJvbWVjQ2h2UkZZeHZmYzQ4RnhmTG9FcVU5bTNkZ3FLZWVV?=
 =?utf-8?B?RHJYREczMkgzN0dzbjBuZ1VlbHYxTkYzbHU5Ui9pcTNDM2NQdE1QS3NrSXU2?=
 =?utf-8?B?VExWemtjRnZjNC9KWm1XbkxxVXRhRjAzYWpmaGZlbnk4RkNqcVFMMG9iLzhh?=
 =?utf-8?B?N1BncVB5YnZZQ2pKQm5LcElTV0hicStyMzdrMUl3THJlZmtFUTVaMDRyRGV0?=
 =?utf-8?B?eVF0aC91aUFtQUF2WFlIU3dESGo1Yit3d1JBYWpML3lPNHhYTmtvRENCWDQw?=
 =?utf-8?B?WWEwbWZuY2RoZ2l0VWthcVJwYUVXaVN0TTNHMWNpdFA5L0RzUjByYUlCZ1hp?=
 =?utf-8?Q?0VQ9XUcW+IMhGBrMYVaNcmxINninSs1vKt2WaHNgZhVE6?=
X-MS-Exchange-AntiSpam-MessageData-1: am9Q4IQ71mO4GA==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 876d5d13-74d3-43b3-0e2b-08de95412009
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 07:33:28.0623 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tSl+SMByA4Iqx3Dc5JXlOtk2RtG9ik0akV7X/IJhnTT3EtUtdpIALihk4/iXVz0sN6idvwJYqGXIjneY8QvdXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB9249
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
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,nvidia.com:email,nvidia.com:mid,Nvidia.com:dkim]
X-Rspamd-Queue-Id: E8EB03B8455
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Apr 1, 2026 at 6:20 AM JST, Joel Fernandes wrote:
> Add first_usable_fb_region() to GspStaticConfigInfo to extract the first
> usable FB region from GSP's fbRegionInfoParams. Usable regions are those
> that are not reserved or protected.
>
> The extracted region is stored in GetGspStaticInfoReply and exposed as
> usable_fb_region field for use by the memory subsystem.
>
> Cc: Nikola Djukic <ndjukic@nvidia.com>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> ---
>  drivers/gpu/nova-core/gsp/commands.rs    | 11 ++++--
>  drivers/gpu/nova-core/gsp/fw/commands.rs | 44 +++++++++++++++++++++++-
>  2 files changed, 52 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/nova-core/gsp/commands.rs b/drivers/gpu/nova-cor=
e/gsp/commands.rs
> index c89c7b57a751..41742c1633c8 100644
> --- a/drivers/gpu/nova-core/gsp/commands.rs
> +++ b/drivers/gpu/nova-core/gsp/commands.rs
> @@ -4,6 +4,7 @@
>      array,
>      convert::Infallible,
>      ffi::FromBytesUntilNulError,
> +    ops::Range,
>      str::Utf8Error, //
>  };
> =20
> @@ -189,22 +190,28 @@ fn init(&self) -> impl Init<Self::Command, Self::In=
itError> {
>      }
>  }
> =20
> -/// The reply from the GSP to the [`GetGspInfo`] command.
> +/// The reply from the GSP to the [`GetGspStaticInfo`] command.
>  pub(crate) struct GetGspStaticInfoReply {
>      gpu_name: [u8; 64],
> +    /// Usable FB (VRAM) region for driver memory allocation.
> +    #[expect(dead_code)]
> +    pub(crate) usable_fb_region: Range<u64>,

Let's print the region when creating the GPU (using `dev_info` or
`dev_dbg`) - this can be useful to the user, and lets us remove this
`dead_code`.
