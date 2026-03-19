Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDtLI/nwu2nkqQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 13:50:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F28372CB59B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 13:50:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1CFC10EA01;
	Thu, 19 Mar 2026 12:49:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="Mhpnmw0c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CO1PR03CU002.outbound.protection.outlook.com
 (mail-westus2azon11010028.outbound.protection.outlook.com [52.101.46.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 599F810EA01;
 Thu, 19 Mar 2026 12:49:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PD5u+rV9aa+kY2aCgarqFGzg+5qLmy1GzDiJIOqMJ3RO154kiVgrXzfosG3g8YzC90ohPb3YYFrWSS/uwotH77OvePGXA4UZqq+NWzTX0OW9xriY+tGUQpeCROOC5/8s7lNSPachhlgMkND/E/oSlJwi1q7h8KqnFpdD8sjzj8drc0EBq88iWm/Jn4X0znstC5oxvOHdRDj5Lxz5Rkn/z+kFknV4z6hGVjslBfAiP1l6fpKoRzPS36sC9o2XdCQCD04Yc23oZK2flqruOXb91rMMW/UXnSdiUsb+l8T/mtpQaI7mdt68FzqvGUctJZlBQ2WihCJ7LwewVf6Edc8HKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SLePyHHiQgVIaYryaege9h02PvJgaxeouI8vMyT2voo=;
 b=ZHvZaelCzDFFBP4WXUdlqD270GVtSKRFmLjpHV4K7CGonBUHiaPUob1Xd7ZSJlgVubbnlakTDEao8+hl194kmqlACEP2GvR1poWAKeADTwGtHUkx15OnQIQ7mwQ3MXVkjgg6z/P/wbMy9pmFbo0dGxSRcQZBhmxJyfZRNtwt6gRXEXNXJUpLz9GiwmrVLH8kehQ7wPOvaX3hPf2wUvsx3us8gS4PvfMnWtXHw/xjwvujlTfZGT7IRFaeeo25ZlV3x00zgjTbxnOcG3eauv1K6d2Fl2LNMMW+tSc26wn0Kb8OzsfJ6WzXXo9JZ6zLfqxhMdQKxXxAeUrMoTWJ+pfN/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SLePyHHiQgVIaYryaege9h02PvJgaxeouI8vMyT2voo=;
 b=Mhpnmw0cxMNA9ykoefNfi1tyXWLNM2DLP5o5JdZ7yPOODASG4oLjV6ttt5uXRAibShjH8X9m9WEh9SxDRgAhChsj8CXT5KM2x5/AwM2gCuE0eVza0ho79DucHZl3L2R3aK7vFGEIkF5Dmb3MpoiMnKhmD8jTX9ThRyLx1T/Knbv7RhsymbfpnMm8HjQmzICDNgaJiDTtCp4QfN3YvSYrWa8Dg20CRgJkOHQBIR+9K8p/FH6wA0PLN1dKZxPHO6yFIlI3BVEenAlbQnOE7v63YPy13GwtpTO/ekSp3by373x6AqFqvqYDzJWmXuVfg50QLEj+yryhnU/wzJg5hx3gaw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH2PR12MB3990.namprd12.prod.outlook.com (2603:10b6:610:28::18)
 by DM6PR12MB4388.namprd12.prod.outlook.com (2603:10b6:5:2a9::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.14; Thu, 19 Mar
 2026 12:49:45 +0000
Received: from CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989]) by CH2PR12MB3990.namprd12.prod.outlook.com
 ([fe80::7de1:4fe5:8ead:5989%6]) with mapi id 15.20.9745.007; Thu, 19 Mar 2026
 12:49:44 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 19 Mar 2026 21:49:40 +0900
Message-Id: <DH6RS5TQ5M2F.30AL4XPU3ECUP@nvidia.com>
To: "Joel Fernandes" <joelagnelf@nvidia.com>
Cc: <linux-kernel@vger.kernel.org>, "Miguel Ojeda" <ojeda@kernel.org>,
 "Boqun Feng" <boqun@kernel.org>, "Gary Guo" <gary@garyguo.net>,
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, "Benno Lossin"
 <lossin@kernel.org>, "Andreas Hindborg" <a.hindborg@kernel.org>, "Alice
 Ryhl" <aliceryhl@google.com>, "Trevor Gross" <tmgross@umich.edu>, "Danilo
 Krummrich" <dakr@kernel.org>, "Dave Airlie" <airlied@redhat.com>, "Daniel
 Almeida" <daniel.almeida@collabora.com>, "Koen Koning"
 <koen.koning@linux.intel.com>, <dri-devel@lists.freedesktop.org>,
 <rust-for-linux@vger.kernel.org>, "Nikola Djukic" <ndjukic@nvidia.com>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "David
 Airlie" <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Jonathan
 Corbet" <corbet@lwn.net>, "Alex Deucher" <alexander.deucher@amd.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Jani Nikula"
 <jani.nikula@linux.intel.com>, "Joonas Lahtinen"
 <joonas.lahtinen@linux.intel.com>, "Rodrigo Vivi" <rodrigo.vivi@intel.com>,
 "Tvrtko Ursulin" <tursulin@ursulin.net>, "Huang Rui" <ray.huang@amd.com>,
 "Matthew Auld" <matthew.auld@intel.com>, "Matthew Brost"
 <matthew.brost@intel.com>, "Lucas De Marchi" <lucas.demarchi@intel.com>,
 =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 "Helge Deller" <deller@gmx.de>, "Alex Gaynor" <alex.gaynor@gmail.com>,
 "Boqun Feng" <boqun.feng@gmail.com>, "John Hubbard" <jhubbard@nvidia.com>,
 "Alistair Popple" <apopple@nvidia.com>, "Timur Tabi" <ttabi@nvidia.com>,
 "Edwin Peer" <epeer@nvidia.com>, "Andrea Righi" <arighi@nvidia.com>, "Andy
 Ritger" <aritger@nvidia.com>, "Zhi Wang" <zhiw@nvidia.com>, "Balbir Singh"
 <balbirs@nvidia.com>, "Philipp Stanner" <phasta@kernel.org>, "Elle Rhumsaa"
 <elle@weathered-steel.dev>, <alexeyi@nvidia.com>, "Eliot Courtney"
 <ecourtney@nvidia.com>, <joel@joelfernandes.org>,
 <linux-doc@vger.kernel.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-fbdev@vger.kernel.org>
Subject: Re: [PATCH v13 1/2] rust: gpu: Add GPU buddy allocator bindings
From: "Alexandre Courbot" <acourbot@nvidia.com>
References: <20260308180407.3988286-1-joelagnelf@nvidia.com>
 <20260317220323.1909618-1-joelagnelf@nvidia.com>
 <20260317220323.1909618-2-joelagnelf@nvidia.com>
In-Reply-To: <20260317220323.1909618-2-joelagnelf@nvidia.com>
X-ClientProxiedBy: OS7PR01CA0014.jpnprd01.prod.outlook.com
 (2603:1096:604:251::18) To CH2PR12MB3990.namprd12.prod.outlook.com
 (2603:10b6:610:28::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB3990:EE_|DM6PR12MB4388:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a4fd159-7f26-46e7-6dd5-08de85b5fec0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|1800799024|376014|10070799003|366016|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: VkoOUjuVNxEGIDnrrS2GsP1zrN01IRx3ZyVc3undaj4vwqVKEq3XXG+z2chYI53vv/CVuilOzOiDOuGKbFWKl9XRko9rOIz3JlMYh08fl7wHO2QcKi/oYLPN4SQu0r0FwPu27ptrs72ddkoCSScxEb83c1DOs/0qZyvNrkckreA66mXsSOQl6H1uutlKpel6YbjJwoie4L4DG77ndm9V7z4/jTXj37GBzkPiQmiFCVUhczLRro8yw1HUDChZQ7KnVjkfY3NnBvIxAYvNsRsJ/kJ7PjgKQjA//njR3Xs96Y6qGLhphwJNfTiUtbWcO0UrTBiyYaR6xXqQ7Cnsfy2YQ8v3sHRsJy/jG2p+24SS0ziNLUg+SW5bcUthSRN7r8SAjuZ1Gu1bxwNcJsK8unOC9YyDGAuP1xXGtj2zRb3j9pGTnuCaWe74afhUhipDeyGIkYxQouagXEXwTypvyjC4Q4OwQ6n9L9ulPzRScBCQ3kl3i3mYX+/GbfujSES9ISTQIsNuCeNG7Vi0+KL2ju2s7hgxdKeymZLnklWeI+jgK+HrE7o9EjP2U5CNx9Hoiep6LqdkiyUKpI9NuC9vM9Vc9HEUyjpeXdKMe6LTtP93f2dRha4LZuq+CT2yKxh6+dIkI9ZIEmkG2fblH7qvSN7ulULuWXQ0Kqa9pEgA4VVwxaiH0I1WcFgp+KAiK9poqjO9c3ZJEqR/HYiaPADntUJsenK9/xlHre2jytvqlR1hixmRE+l9QM2qIColoKiUbTU9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB3990.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(376014)(10070799003)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vmd6NnYyT2c1K09Qb0VXZGEwNHY1K1N3Q1oyVXVDN29xT3VFeTlBQ050L2ZJ?=
 =?utf-8?B?dEUvRmNld0hCN1F6cXJEUFFTc0NyQzdpSzNTWFY2bHZwbkN5cHZ0VWxzYWF1?=
 =?utf-8?B?ZitBeUtMMXBQWjkxUkx3M0pUamYvZldzZHh2OUtKaFRhTyt6bi92b3FtblZv?=
 =?utf-8?B?dmJtSUs1WjN4SzFQZ1poVlFHbVZWMHZmSUNDa0NDZlZBc3lLbHlSdk9ud1pC?=
 =?utf-8?B?bXBRZC9mV0doeHRyVkVxN25aRG1Rb1dOMUx5c0xPZUNiL0FIeUNCSnZQRytj?=
 =?utf-8?B?ekYvQ2U2cW53MWFxUTFSY240NjB4U3dlNzdwOHZGVDNEWDVTb1FxUDJOL05v?=
 =?utf-8?B?TVZ3LzFNRUdKUyswbENaNHZjeVFSMlpJN1Q1SlFzZHJPeDNsdmgxY0dQSGRX?=
 =?utf-8?B?ZXVFVlhpTU5xaDk4dndxc1AvaVYzNU9DNCt0ZnorWDU0eHdPcWM1UWYvc21w?=
 =?utf-8?B?QXJZTHZMeHJ0SjJqZGJmdFZIdUY1dEoxYnhvN2ZvTFRSZ0FqaElEdlJuUWo4?=
 =?utf-8?B?c3VkZUZnQ3dueGJNTVYzYmdpc200aVZ6S08zaGI0bit3MFNVeEgweE5PTksr?=
 =?utf-8?B?VUJyL2V0R1NkK3JTa0J0UmdUeUZYSU5RVGpBSHk1aFN5ZGNldXVWUnl4WmJ2?=
 =?utf-8?B?a2FzVW1NalV5L2FOcVZ5NHFsUGE1WHBzaDgwZjRkcEVWQi93ZjNIWDlqcHVp?=
 =?utf-8?B?dWpZbGhwWHRZYXRMRmZHbTMwWU1kRlFXTGJBWFd5YjVRQjN3WEVsTDJETita?=
 =?utf-8?B?dEhPRnhXdTUxK3EzYytnaSttWkQ1OStSVmxBeFBDUE9ERjdHeFhDamhZOWg4?=
 =?utf-8?B?ZGFFUGRCYWFaNnhEczFZQ1htQ0s1dXpEN1JrbHM3c3BkYlpDQXB4b1gvWVpj?=
 =?utf-8?B?M0FmK2hNVDNZQS9RYmRvZkRyQk5KQksrcHVrYWV0cXdCLzh0YXZNWTNWdDds?=
 =?utf-8?B?Wk9Ub2J2WExWd3ArZzZaRlF1VGorWUdUME5BTUdIMXJZWnZsbnpJQnU2R241?=
 =?utf-8?B?Qk1xNlY4VWN2TFdhZFFCcVZQY0JGekFVcG1aeTV3aUlFM3ZoaFB6TVhkODNu?=
 =?utf-8?B?a0JzMXBTM1FWclFaNGxONkJyVW10eFlhSzM3RlgvdldqZEVGYnhDb1pBNEJS?=
 =?utf-8?B?Nnc5QnVZV2gycGxJRFdLV2JDM0NkaEFzVHI5S3BYWkkvQUZzWit0aVhHZDkv?=
 =?utf-8?B?MXN3MGxzZnlvRHFwZURSZ3YxRlRyUXpiTXV4MndxZ3B3TmJDZGl0cnlwd240?=
 =?utf-8?B?QUROU0ZGRGxwU0VRckFSaG1QVDZqN0cva0xZQVR1ajZrdXk2YVZRMDdpSlNG?=
 =?utf-8?B?L25sM0dyOUxWdW9wSnZ0NGhxaDdJRURkZGdtalpRVU5yUzZDUDlWcVN5Zkky?=
 =?utf-8?B?SnJiYVBhS21MYXFRd09PRm9odTd1R3YrNDdKZjc3VjJXYzg1VzRLTWswOS9h?=
 =?utf-8?B?M3ZCVjIrMVVvWG4yMmQrQlRoY1JCTmVTenZXeDJxMDdmSUVKSlV4MVArYWVN?=
 =?utf-8?B?L2pYMW9WYXNVY20wMFNmVVJZcXJVNkVLbHRtNXRza24vbXhvYVpJNTdYdmF6?=
 =?utf-8?B?MEFURmxhcXdGd1h2ZGpQQ0I1QU5nbEpxV1JkZTVVUHhKemwrSXhmWXRWTjNN?=
 =?utf-8?B?RTc1SXhwSXBManFZcWtwZlVlbmMxeTgxbi9ZcWVrTk9EU1piSUVST3FrN21Z?=
 =?utf-8?B?R2RzN1VnVWpXTGFVUVBOYWMwTWE1SmlxZENrZzJVYzYrek5xWlduNmYyeDhE?=
 =?utf-8?B?RHBuSHU0bHpENkllSUtXWDE1OFJHcEFWN1hvOThFcEdvd2NYMDlyQ0RadWRn?=
 =?utf-8?B?R3IwNUhxUnp5TWVCMkhIUHF2TGVJaWwxZUxZOXZSVGYzdVlHL0JmV0M5Zllx?=
 =?utf-8?B?bmwvd2wyeEVISW1PLzhlbDFRZmRJY28vUllJUUxCR1FPbDVUdEJlOEM5VVFp?=
 =?utf-8?B?ZlZwU09Nb2lxKzlMNHRxaGVORjc1UU9FN2todEMvdDhaRnNJdGpEU2RxeHho?=
 =?utf-8?B?VnA0c2ZrQ1ZBWkkwQTYwZkhFVSsvUTZSSWdhODE3UWszelg4aXNiRmVtOGN2?=
 =?utf-8?B?bWJGZFp5alFOSjB2NytaV2oxZWVHek1RQ1dvOFpQNjU2SUJLSGtZdThlQ2tp?=
 =?utf-8?B?L0dwSjExNXhCTFExMFkwekFsQkQ3c3N5alEzZDZKSEp1ZXBsVzNRUWxHRUZR?=
 =?utf-8?B?RGdEY2pTNmpnUWs1VXJtemcyVEp5K1B4bkNvZXFvSlNaY0ttTkZNQ3JmTjZs?=
 =?utf-8?B?cFhON3Y2K2d0WjliWGJqaVBqVHIxSVlURHFMM1lIUDE4WjVhV0RDOFJJTFp2?=
 =?utf-8?B?dWI5ZDdoZHhIOURzd3MvMWR6VTNlUkU2c3hvcElMQ0RraXEyZjdrb2tLVkNO?=
 =?utf-8?Q?Yc9IhDeDjPe0yaLHcygF4nb774pwoimuODHhz3/lxw48g?=
X-MS-Exchange-AntiSpam-MessageData-1: sfdGAXaEw9LUcQ==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a4fd159-7f26-46e7-6dd5-08de85b5fec0
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB3990.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2026 12:49:44.6858 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MvSnS6cIPithcuPSgrgQcj+eWTbZyQO4R4rwqh38g3+9dzizOB8GoFvL3b2BKXNJVYULdzh2dvnF8T9j9BVeNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4388
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
	NEURAL_HAM(-0.00)[-0.976];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[acourbot@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,nvidia.com:email,nvidia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: F28372CB59B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Joel,

On Wed Mar 18, 2026 at 7:03 AM JST, Joel Fernandes wrote:
> Add safe Rust abstractions over the Linux kernel's GPU buddy
> allocator for physical memory management. The GPU buddy allocator
> implements a binary buddy system useful for GPU physical memory
> allocation. nova-core will use it for physical memory allocation.
>
> Cc: Nikola Djukic <ndjukic@nvidia.com>
> Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>

A few things came to mind when re-reading this again. I believe these
will be my final comments on this patch though (famous last words).

<snip>
> +//! # Examples
> +//!
> +//! Create a buddy allocator and perform a basic range allocation:
> +//!
> +//! ```
> +//! use kernel::{
> +//!     gpu::buddy::{
> +//!         GpuBuddy,
> +//!         GpuBuddyAllocFlags,
> +//!         GpuBuddyAllocMode,
> +//!         GpuBuddyParams, //
> +//!     },
> +//!     prelude::*,
> +//!     ptr::Alignment,
> +//!     sizes::*, //
> +//! };
> +//!
> +//! // Create a 1GB buddy allocator with 4KB minimum chunk size.
> +//! let buddy =3D GpuBuddy::new(GpuBuddyParams {
> +//!     base_offset: 0,
> +//!     physical_memory_size: SZ_1G as u64,
> +//!     chunk_size: Alignment::new::<SZ_4K>(),
> +//! })?;
> +//!
> +//! assert_eq!(buddy.size(), SZ_1G as u64);
> +//! assert_eq!(buddy.chunk_size(), Alignment::new::<SZ_4K>());

Note that you can also use

  assert_eq!(buddy.chunk_size().as_usize(), SZ_4K);

To avoid the `Alignment` constructor.

<snip>
> +impl GpuBuddyAllocMode {
> +    // Returns the C flags corresponding to the allocation mode.
> +    fn into_flags(self) -> usize {
> +        match self {
> +            Self::Simple =3D> 0,
> +            Self::Range { .. } =3D> bindings::GPU_BUDDY_RANGE_ALLOCATION=
,
> +            Self::TopDown =3D> bindings::GPU_BUDDY_TOPDOWN_ALLOCATION,
> +        }
> +    }
> +
> +    // Extracts the range start/end, defaulting to (0, 0) for non-range =
modes.

Let's use `(0, 0)` so they are properly formatted (I know it's not a
doccomment, but the convention also applies to regular comments).

> +    fn range(self) -> (u64, u64) {
> +        match self {
> +            Self::Range { start, end } =3D> (start, end),
> +            _ =3D> (0, 0),
> +        }
> +    }
> +}
> +
> +crate::impl_flags!(
> +    /// Modifier flags for GPU buddy allocation.
> +    ///
> +    /// These flags can be combined with any [`GpuBuddyAllocMode`] to co=
ntrol
> +    /// additional allocation behavior.
> +    #[derive(Clone, Copy, Default, PartialEq, Eq)]
> +    pub struct GpuBuddyAllocFlags(u32);

I've realized a bit late that this should actually be
`GpuBuddyAllocFlags(usize)`.

The values are defined in the bindings as `usize`, and we convert them
to `u32`, only to convert them back into `usize` in `alloc_blocks`. I
know it goes against the idea that flags should not have a size
dependent on the architecture, but in this case it's just a consequence
of the C API not doing it - and in the end we have to conform, so there
is no point in resisting. Actually, `GpuBuddyAllocMode::into_flags`
already return a `usize`, so we're already halfway there.

Just going with the flow and using `usize` removes quite a few `as` in
the code. Ideally we would fix the C API and switch back to `u32` in the
near future but for now that's the best course of action imho.

I've checked whether it worked, and it does - here is a diff for reference:

https://github.com/Gnurou/linux/commit/2e1bfc2d8e1f93a76343c7c563b1f4b85a69=
ab8b

<snip>
> +    /// Get the base offset for allocations.
> +    pub fn base_offset(&self) -> u64 {
> +        self.0.params.base_offset
> +    }
> +
> +    /// Get the chunk size (minimum allocation unit).
> +    pub fn chunk_size(&self) -> Alignment {
> +        self.0.params.chunk_size
> +    }
> +
> +    /// Get the total managed size.
> +    pub fn size(&self) -> u64 {
> +        self.0.params.physical_memory_size
> +    }
> +
> +    /// Get the available (free) memory in bytes.
> +    pub fn free_memory(&self) -> u64 {

This name is a bit confusing as it can be interpreted as this method
frees memory, whereas it doesn't free anything, and doesn't even deal
with memory (but an address space that may or may not represent memory).

In the C `struct gpu_buddy`, the member representing the chunk size is
named `chunk_size`, and the total size `size`, making the two methods
above this one adopt the same name (by a happy coincidence maybe :)).

Let's do the same here - since we are querying `avail`, this method can
just be called `avail` to align with the C API.

In the same spirit, we should rename
`GpuBuddyParams::physical_memory_size` into just `size` because that's
the name of the corresponding field in `struct gpu_buddy` and again, we
are not limited to managing physical memory with this allocator.

> +        let guard =3D self.0.lock();
> +
> +        // SAFETY: Per the type invariant, `inner` contains an initializ=
ed allocator.
> +        // `guard` provides exclusive access.
> +        unsafe { (*guard.as_raw()).avail }
> +    }
> +
> +    /// Allocate blocks from the buddy allocator.
> +    ///
> +    /// Returns a pin-initializer for [`AllocatedBlocks`].
> +    pub fn alloc_blocks(
> +        &self,
> +        mode: GpuBuddyAllocMode,
> +        size: u64,
> +        min_block_size: Alignment,
> +        flags: impl Into<GpuBuddyAllocFlags>,
> +    ) -> impl PinInit<AllocatedBlocks, Error> {
> +        let buddy_arc =3D Arc::clone(&self.0);
> +        let (start, end) =3D mode.range();
> +        let mode_flags =3D mode.into_flags();
> +        let modifier_flags =3D u32::from(flags.into()) as usize;
> +
> +        // Create pin-initializer that initializes list and allocates bl=
ocks.
> +        try_pin_init!(AllocatedBlocks {
> +            buddy: buddy_arc,
> +            list <- CListHead::new(),
> +            _: {
> +                // Reject zero-sized or inverted ranges.
> +                if let GpuBuddyAllocMode::Range { start, end } =3D mode =
{
> +                    if end <=3D start {
> +                        Err::<(), Error>(EINVAL)?;
> +                    }
> +                }

Ah, indeed we want to disallow decreasing ranges. Actually, why not
prevent them from even being expressed by using an actual Rust `Range`?

This lets you turn this test into an `is_empty()` and removes 10 LoCs
overall. You lose the ability to copy `GpuBuddyAllocMode`, but we don't
need it in the first place.

Here is a diff showing what it looks like, feel free to pick it:

https://github.com/Gnurou/linux/commit/7f9348f6a64d0fbec7ddf99b78ca727a1ac1=
cd06

