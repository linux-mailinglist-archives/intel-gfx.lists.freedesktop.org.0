Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCnhFt22uWnJMQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 21:17:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F82B2B21F7
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 21:17:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 217AC10E69A;
	Tue, 17 Mar 2026 20:17:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="sgzej9yM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH1PR05CU001.outbound.protection.outlook.com
 (mail-northcentralusazon11010018.outbound.protection.outlook.com
 [52.101.193.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3C7010E689;
 Tue, 17 Mar 2026 20:17:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nEI75hpr/yDY7rD6rzfcGewNyo3I8fbdpGTojiOz3MDeJ9RzQanPpbFuffEwJa1J9Tx+baDTYrpC7OfaFoEnm41g70JUkx/GBGx66QXA2RTKlISYtY4OmXi+pemXBQrYAlIRXWDcRzPMAANWkQINpDd1bgVROmIkkRA7IwCtv0gO7k37UUDvbHk1eM8ufTV3MhxQAbvDMEbqLl2IPQn/ReJNG6lfk0l4WYIIlx5+wAzwHfMC6ggfDqQAl7eVNkvuSMdalGoa4v2GPCPPfO0evosJfiJg8n01QOvKKJUNJaOQn3Zfi32OBy+vWK6sjxXrusB2eHQ/geF/7SIWfmuxKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rzqjkFYIpkvnReWrLJD1qhNXpY9Nl0burHZZ5GakTTs=;
 b=tW6pP5oeb8cGG8S2a4zMbK9T6Yne5E0ieKQqqe+3L2TbX5PA1OHPaF7p9ds4S2RtYXPDYEsLkEjHCx46oeEoc0f3OnrOs7TnEsF5ACau2I8HuQmU3x8GfJHvHH3kx1Oqy9xkWDdA4XBGWjvvND9ksIpcMp1AFyxs85fLVq5bcFkBZvIhPDoN6khuLp44BvCJZxwdqvJBNzK2Y8GRsHL0qiDEAW2XDmX1iFwyLnblT+4fNRlk5gAp3IbD4s3WeIzQeOZ4cPC8NxCzTLxXxI1kw3uyflC8saLbyWkRazudfCloPTKaSM0mcejid3DVyB/OicbZoY7fL6Ik2bP4FVo0DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rzqjkFYIpkvnReWrLJD1qhNXpY9Nl0burHZZ5GakTTs=;
 b=sgzej9yMX7KuiD8LG/JYPZj0LZUxhyxECLAnyphrjRGsrf3lSbQ9M0Kd8UYwmy6ZxCDaWvKkERDZ1Nfu/7ENf8gnj6fLQrB/iayeHqUXvN1b4tc9ZFPxY/C1K5PZzxdlTwFlkX3O6Z6mbEuE2S/P/4dQvloiK6n/xmB+3bvSwAbDLP4Uxb2V6hKPszjowW/brOMgutDFUBEZy16ZDNhX/xKI+svJUhtR+LqqG21BROrWfvf6yEsM2q9fT5bjOXikHpPtdBfuuzprkzbHLsQzQxla9NDMYDkxByItaVxydsR0efC1KTS4t9M4jFO48n6UnQoC+ICBeObnGM+0//1z3g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 MN0PR12MB6150.namprd12.prod.outlook.com (2603:10b6:208:3c6::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.17; Tue, 17 Mar
 2026 20:17:23 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9723.014; Tue, 17 Mar 2026
 20:17:22 +0000
From: Joel Fernandes <joelagnelf@nvidia.com>
To: linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>,
 =?UTF-8?q?Bj=C3=B6rn=20Roy=20Baron?= <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Alex Gaynor <alex.gaynor@gmail.com>, Danilo Krummrich <dakr@kernel.org>,
 Dave Airlie <airlied@redhat.com>, David Airlie <airlied@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>,
 Nikola Djukic <ndjukic@nvidia.com>,
 Alexandre Courbot <acourbot@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, Jonathan Corbet <corbet@lwn.net>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, John Hubbard <jhubbard@nvidia.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Andrea Righi <arighi@nvidia.com>,
 Andy Ritger <aritger@nvidia.com>, Zhi Wang <zhiw@nvidia.com>,
 Balbir Singh <balbirs@nvidia.com>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, dri-devel@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, linux-doc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 Joel Fernandes <joelagnelf@nvidia.com>
Subject: [PATCH v13 1/1] rust: interop: Add list module for C linked list
 interface
Date: Tue, 17 Mar 2026 16:17:10 -0400
Message-Id: <20260317201710.934932-2-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260317201710.934932-1-joelagnelf@nvidia.com>
References: <20260317201710.934932-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: IA4P220CA0006.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:208:558::7) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|MN0PR12MB6150:EE_
X-MS-Office365-Filtering-Correlation-Id: 144c4fce-25f4-40b2-436c-08de84623276
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|13003099007|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: srqNLmVCSXX+9HU+ADR4sLWWd9YOxsGzu4vv4nDksX0thA1CigwSQ0xErnnGEJdKiRbvQbaGLv3O4f5V4UwxkJVYOzjTnl3PJxQTh1y7JmVz8+R7fae5/YBc0KuHwj/2gTf2t/usC2WcnhIHlW9Zzz2ttP7x4CswxqWNtKsKomP905jvx7kVfH7+twkiiHFS0r99anaGLws4vKFshzSZzCUUhsKfea23ucsV76FZ6JsgKuKQ+dnvXSkTGzB51CfZWR9gF8WKb1U2gX9wV6XvUYdXV1WZE2fzEs0wZwTWrNAH5svYv5D6GmI/sRLia300FNG1dyA+obZE7WU9irkmaDekJfxfmb62ySveQSRQhzAXvxmb9mXuzafJUcKNRiBsLnB8jk7BCl0UqsqhsRXWjX3IyQGhBd7cYzxiLppasO/mU80lYYDB/1GBp/pQ74tMLs22AJGs40et3mwfyuvLjZcu3wi0P/SpjiOjEwOjKaJDu9+TsLWRzkvuDaMN2ZNtim/rgl+/3Pm+vTiETYxefbDzyW5IeW7AqH11y9FNPqP3A7wuSYFtblQLEvNgID/k0unVS1UIGkAQY4f9P8kj0RFf86CLvKgc7M3WILowZNIM7czjh5y8II2z6Qo/tYI3qDtnbJgDqCIWpU0DReK8+1/aMg9Ih6BbJMsB+6dXhjpKaLzGd+wzxQxBVpnECbr2SnUFIsjPzfzIqYjVBZWc0fl/aTcx/PefIRPN9IbkO9w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(13003099007)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bWP9GPFRu8xHo8wOH76GX3ft6DOOfXvAxhyO6lvp5R4B7o5ZKHKAC8SJOl1Z?=
 =?us-ascii?Q?Hsyw5NJSQbcf8Un94Y5AVgnbamfUoS6ByEx5AEQpFovUPM/5VPOlT2BORNjc?=
 =?us-ascii?Q?jL4iouJg5Qp01SR9pOZ7R/6TrL7I17InCZ4zbJwUlxWUUuZL/4Ifvw7enTLN?=
 =?us-ascii?Q?R2yBPm5NeOJMipNcMb+VyYy3k/lMN9u0+HpM234Osw3soO5nSfdTX7ftVU5o?=
 =?us-ascii?Q?4wDX50qq4P+a3QahtFB7Rh5U4E+plAckuhBbkQVDjx1txyvjk25Js5jlsqkA?=
 =?us-ascii?Q?2OrX2lL3l1wvQnTU3VM16L8nAaUlSGQVxPVgRm8DzuetyIJ/fcJbfp67b6r3?=
 =?us-ascii?Q?0fDKnE6f8//8cYOAXFVI222ne4GT/rh+LItKzAoEQTabm6BsJryYCy6Vhpzb?=
 =?us-ascii?Q?FXQgkOt9bMmitKGK/WoFWhg+fvmm+yzGuJnVeCh2JTTSmvVF/1OKnro/mb2k?=
 =?us-ascii?Q?WhRSg5sdQTdgEcFzUjej20+V+KtDkIHoElp9CHRdtAW8kYnwcMqeWEeQe0nO?=
 =?us-ascii?Q?8pOXnPRk47816zRkLmkmKVHbFitRlNY4F9wkOkha3Neou04rEBnU73rslBNa?=
 =?us-ascii?Q?hZCu8eLtlqx5+NQJZtzia6+9jKD7TiM3D9JsI3FAKS9liHgVYYkLRsVAj1fX?=
 =?us-ascii?Q?eARr1Vxlez/Lhu+AoxUomM/4Q4tvZuc04K1dsMACq0GtIf6BNgK3DdsQoF+y?=
 =?us-ascii?Q?5pnCaiJ6wCq8XcA2NezJMQZuoPw/JCXdNwYBz3TngeSSKv2ebtBZ4Clou6Jm?=
 =?us-ascii?Q?RkoQNViByiWN47QYaT7dUMSeY0OX1Cst/8zMQQiZiTm4MUUNHhGNUx2eVwxs?=
 =?us-ascii?Q?qlzGGtRFWeygQhmTZVND3F18dfANsoppl24JDhAnmoG3DbPxQOvBW6ASjXO4?=
 =?us-ascii?Q?amLtNkVuUew/+e+TSr1yGqVtv5dBTgtHFFYT5/YYkNtEPcY+IhykzxPMguF9?=
 =?us-ascii?Q?n8Kdkl+MJ5o+tLS40PNrX9oTMEM8skjuN7SuElTYmU3Ru50F67P+J80oG3u7?=
 =?us-ascii?Q?upbDJP0JYUI1TgaXVyffg1NIIqZWd69J8ibbbWLfNHvDN08QLXYGQ380YhRf?=
 =?us-ascii?Q?Fdl/LgGkR6yLsfzja+U4nL69XcX+3/jeSYORpq+kTcJVKmwh/yMlWhHLhurx?=
 =?us-ascii?Q?hNK/oFwXfrhq05PweX0zlvEuwzo1WTOxMhgzK/28J+bTHuO79nb7mVAFslKv?=
 =?us-ascii?Q?eNKKdddOZ1zAEiZjq9fO78tbYcZc6DSZJ/8nGKBuVu2lglhb7QbRxRxaGVaj?=
 =?us-ascii?Q?DRFa/9VmUOLEBcEigw/tGW1nNntiD7Sc7UaV9X8+i+hobcr+71OoyaPJztjg?=
 =?us-ascii?Q?LpyJs1ViLMSRs9iARPv7yU3YCdBLWPrp12IA8zFIQRNV+D7WbDANe3Har/qB?=
 =?us-ascii?Q?Au/3IqCLeHkFjvEcEmVHa6CSenFqzxBPP0uS/yDDXdk2oQ+mhP4IMIDg9dPL?=
 =?us-ascii?Q?SdZxo0mrgFIbuB5nu6XVI88zX2ly8v7aRhtB1t5zujzX/NCe2FcUtbzc1xni?=
 =?us-ascii?Q?CQagLhg2RnrUBrkWVugOOPTLo4+lIn/sPxY8nBPpcL6PVZc+wy05/8dtdBQY?=
 =?us-ascii?Q?ZYHkClnlD88Wig6M5L3481L1ESzDeyoMMydBT/5OAJ66P1xPk+Y2TU/aKlI8?=
 =?us-ascii?Q?Es0M7LwGMQNfCPId+RjnT3Hlu0eq9UoJrVK9G5/oUAZFiCJQlHBDtluewodq?=
 =?us-ascii?Q?/Pat/wWl7TE78qtXOYPfHV/lzeiQGKJzsQPl2vmcl4rE8ntrEQMWMTe+wksR?=
 =?us-ascii?Q?wQOlUe9KWg=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 144c4fce-25f4-40b2-436c-08de84623276
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 20:17:22.6558 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KXofJfjl/Blps9cEBX5ILtNfhY1gsV5P6ClMqjhHrWepxJRrcww8RpsDtnVtuPXjhu6qX/DMvA2p4Vyd1VQF1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6150
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,gmail.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,collabora.com,nvidia.com,weathered-steel.dev,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,lists.freedesktop.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	RCPT_COUNT_GT_50(0.00)[54];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,nvidia.com:email,nvidia.com:mid,Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 9F82B2B21F7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a new module `kernel::interop::list` for working with C's doubly
circular linked lists. Provide low-level iteration over list nodes.

Typed iteration over actual items is provided with a `clist_create`
macro to assist in creation of the `CList` type.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Reviewed-by: Daniel Almeida <daniel.almeida@collabora.com>
Reviewed-by: Alexandre Courbot <acourbot@nvidia.com>
Acked-by: Alexandre Courbot <acourbot@nvidia.com>
Acked-by: Gary Guo <gary@garyguo.net>
Acked-by: Miguel Ojeda <ojeda@kernel.org>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 MAINTAINERS                 |   8 +
 rust/helpers/helpers.c      |   1 +
 rust/helpers/list.c         |  17 ++
 rust/kernel/interop.rs      |   9 +
 rust/kernel/interop/list.rs | 342 ++++++++++++++++++++++++++++++++++++
 rust/kernel/lib.rs          |   2 +
 6 files changed, 379 insertions(+)
 create mode 100644 rust/helpers/list.c
 create mode 100644 rust/kernel/interop.rs
 create mode 100644 rust/kernel/interop/list.rs

diff --git a/MAINTAINERS b/MAINTAINERS
index 4bd6b538a51f..e847099efcc2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23251,6 +23251,14 @@ T:	git https://github.com/Rust-for-Linux/linux.git alloc-next
 F:	rust/kernel/alloc.rs
 F:	rust/kernel/alloc/
 
+RUST [INTEROP]
+M:	Joel Fernandes <joelagnelf@nvidia.com>
+M:	Alexandre Courbot <acourbot@nvidia.com>
+L:	rust-for-linux@vger.kernel.org
+S:	Maintained
+T:	git https://github.com/Rust-for-Linux/linux.git interop-next
+F:	rust/kernel/interop/
+
 RUST [NUM]
 M:	Alexandre Courbot <acourbot@nvidia.com>
 R:	Yury Norov <yury.norov@gmail.com>
diff --git a/rust/helpers/helpers.c b/rust/helpers/helpers.c
index a3c42e51f00a..724fcb8240ac 100644
--- a/rust/helpers/helpers.c
+++ b/rust/helpers/helpers.c
@@ -35,6 +35,7 @@
 #include "io.c"
 #include "jump_label.c"
 #include "kunit.c"
+#include "list.c"
 #include "maple_tree.c"
 #include "mm.c"
 #include "mutex.c"
diff --git a/rust/helpers/list.c b/rust/helpers/list.c
new file mode 100644
index 000000000000..18095a5593c5
--- /dev/null
+++ b/rust/helpers/list.c
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/*
+ * Helpers for C circular doubly linked list implementation.
+ */
+
+#include <linux/list.h>
+
+__rust_helper void rust_helper_INIT_LIST_HEAD(struct list_head *list)
+{
+	INIT_LIST_HEAD(list);
+}
+
+__rust_helper void rust_helper_list_add_tail(struct list_head *new, struct list_head *head)
+{
+	list_add_tail(new, head);
+}
diff --git a/rust/kernel/interop.rs b/rust/kernel/interop.rs
new file mode 100644
index 000000000000..b88140cf76dc
--- /dev/null
+++ b/rust/kernel/interop.rs
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Infrastructure for interfacing Rust code with C kernel subsystems.
+//!
+//! This module is intended for low-level, unsafe Rust infrastructure code
+//! that interoperates between Rust and C. It is NOT for use directly in
+//! Rust drivers.
+
+pub mod list;
diff --git a/rust/kernel/interop/list.rs b/rust/kernel/interop/list.rs
new file mode 100644
index 000000000000..328f6b0de2ce
--- /dev/null
+++ b/rust/kernel/interop/list.rs
@@ -0,0 +1,342 @@
+// SPDX-License-Identifier: GPL-2.0
+
+//! Rust interface for C doubly circular intrusive linked lists.
+//!
+//! This module provides Rust abstractions for iterating over C `list_head`-based
+//! linked lists. It should only be used for cases where C and Rust code share
+//! direct access to the same linked list through a C interop interface.
+//!
+//! Note: This *must not* be used by Rust components that just need a linked list
+//! primitive. Use [`kernel::list::List`] instead.
+//!
+//! # Examples
+//!
+//! ```
+//! use kernel::{
+//!     bindings,
+//!     clist_create,
+//!     types::Opaque,
+//! };
+//! # // Create test list with values (0, 10, 20) - normally done by C code but it is
+//! # // emulated here for doctests using the C bindings.
+//! # use core::mem::MaybeUninit;
+//! #
+//! # /// C struct with embedded `list_head` (typically will be allocated by C code).
+//! # #[repr(C)]
+//! # pub struct SampleItemC {
+//! #     pub value: i32,
+//! #     pub link: bindings::list_head,
+//! # }
+//! #
+//! # let mut head = MaybeUninit::<bindings::list_head>::uninit();
+//! #
+//! # let head = head.as_mut_ptr();
+//! # // SAFETY: `head` and all the items are test objects allocated in this scope.
+//! # unsafe { bindings::INIT_LIST_HEAD(head) };
+//! #
+//! # let mut items = [
+//! #     MaybeUninit::<SampleItemC>::uninit(),
+//! #     MaybeUninit::<SampleItemC>::uninit(),
+//! #     MaybeUninit::<SampleItemC>::uninit(),
+//! # ];
+//! #
+//! # for (i, item) in items.iter_mut().enumerate() {
+//! #     let ptr = item.as_mut_ptr();
+//! #     // SAFETY: `ptr` points to a valid `MaybeUninit<SampleItemC>`.
+//! #     unsafe { (*ptr).value = i as i32 * 10 };
+//! #     // SAFETY: `&raw mut` creates a pointer valid for `INIT_LIST_HEAD`.
+//! #     unsafe { bindings::INIT_LIST_HEAD(&raw mut (*ptr).link) };
+//! #     // SAFETY: `link` was just initialized and `head` is a valid list head.
+//! #     unsafe { bindings::list_add_tail(&mut (*ptr).link, head) };
+//! # }
+//!
+//! //
+//! /// Rust wrapper for the C struct.
+//! ///
+//! /// The list item struct in this example is defined in C code as:
+//! ///
+//! /// ```c
+//! /// struct SampleItemC {
+//! ///     int value;
+//! ///     struct list_head link;
+//! /// };
+//! /// ```
+//! #[repr(transparent)]
+//! pub struct Item(Opaque<SampleItemC>);
+//!
+//! impl Item {
+//!     pub fn value(&self) -> i32 {
+//!         // SAFETY: `Item` has same layout as `SampleItemC`.
+//!         unsafe { (*self.0.get()).value }
+//!     }
+//! }
+//!
+//!
+//! // Create typed [`CList`] from sentinel head.
+//! // SAFETY: `head` is valid and initialized, items are `SampleItemC` with
+//! // embedded `link` field, and `Item` is `#[repr(transparent)]` over `SampleItemC`.
+//! let list = clist_create!(unsafe { head, Item, SampleItemC, link });
+//!
+//! // Iterate directly over typed items.
+//! let mut found_0 = false;
+//! let mut found_10 = false;
+//! let mut found_20 = false;
+//!
+//! for item in list.iter() {
+//!     let val = item.value();
+//!     if val == 0 { found_0 = true; }
+//!     if val == 10 { found_10 = true; }
+//!     if val == 20 { found_20 = true; }
+//! }
+//!
+//! assert!(found_0 && found_10 && found_20);
+//! ```
+
+use core::{
+    iter::FusedIterator,
+    marker::PhantomData, //
+};
+
+use crate::{
+    bindings,
+    types::Opaque, //
+};
+
+use pin_init::{
+    pin_data,
+    pin_init,
+    PinInit, //
+};
+
+/// FFI wrapper for a C `list_head` object used in intrusive linked lists.
+///
+/// # Invariants
+///
+/// - The underlying `list_head` is initialized with valid non-`NULL` `next`/`prev` pointers.
+#[pin_data]
+#[repr(transparent)]
+pub struct CListHead {
+    #[pin]
+    inner: Opaque<bindings::list_head>,
+}
+
+impl CListHead {
+    /// Create a `&CListHead` reference from a raw `list_head` pointer.
+    ///
+    /// # Safety
+    ///
+    /// - `ptr` must be a valid pointer to an initialized `list_head` (e.g. via
+    ///   `INIT_LIST_HEAD()`), with valid non-`NULL` `next`/`prev` pointers.
+    /// - `ptr` must remain valid for the lifetime `'a`.
+    /// - The list and all linked `list_head` nodes must not be modified from
+    ///   anywhere for the lifetime `'a`, unless done so via any [`CListHead`] APIs.
+    #[inline]
+    pub unsafe fn from_raw<'a>(ptr: *mut bindings::list_head) -> &'a Self {
+        // SAFETY:
+        // - `CListHead` has same layout as `list_head`.
+        // - `ptr` is valid and unmodified for `'a` per caller guarantees.
+        unsafe { &*ptr.cast() }
+    }
+
+    /// Get the raw `list_head` pointer.
+    #[inline]
+    pub fn as_raw(&self) -> *mut bindings::list_head {
+        self.inner.get()
+    }
+
+    /// Get the next [`CListHead`] in the list.
+    #[inline]
+    pub fn next(&self) -> &Self {
+        let raw = self.as_raw();
+        // SAFETY:
+        // - `self.as_raw()` is valid and initialized per type invariants.
+        // - The `next` pointer is valid and non-`NULL` per type invariants
+        //   (initialized via `INIT_LIST_HEAD()` or equivalent).
+        unsafe { Self::from_raw((*raw).next) }
+    }
+
+    /// Check if this node is linked in a list (not isolated).
+    #[inline]
+    pub fn is_linked(&self) -> bool {
+        let raw = self.as_raw();
+        // SAFETY: `self.as_raw()` is valid per type invariants.
+        unsafe { (*raw).next != raw && (*raw).prev != raw }
+    }
+
+    /// Pin-initializer that initializes the list head.
+    pub fn new() -> impl PinInit<Self> {
+        pin_init!(Self {
+            // SAFETY: `INIT_LIST_HEAD` initializes `slot` to a valid empty list.
+            inner <- Opaque::ffi_init(|slot| unsafe { bindings::INIT_LIST_HEAD(slot) }),
+        })
+    }
+}
+
+// SAFETY: `list_head` contains no thread-bound state; it only holds
+// `next`/`prev` pointers.
+unsafe impl Send for CListHead {}
+
+// SAFETY: `CListHead` can be shared among threads as modifications are
+// not allowed at the moment.
+unsafe impl Sync for CListHead {}
+
+impl PartialEq for CListHead {
+    #[inline]
+    fn eq(&self, other: &Self) -> bool {
+        core::ptr::eq(self, other)
+    }
+}
+
+impl Eq for CListHead {}
+
+/// Low-level iterator over `list_head` nodes.
+///
+/// An iterator used to iterate over a C intrusive linked list (`list_head`). Caller has to
+/// perform conversion of returned [`CListHead`] to an item (using [`container_of`] or similar).
+///
+/// # Invariants
+///
+/// `current` and `sentinel` are valid references into an initialized linked list.
+struct CListHeadIter<'a> {
+    /// Current position in the list.
+    current: &'a CListHead,
+    /// The sentinel head (used to detect end of iteration).
+    sentinel: &'a CListHead,
+}
+
+impl<'a> Iterator for CListHeadIter<'a> {
+    type Item = &'a CListHead;
+
+    #[inline]
+    fn next(&mut self) -> Option<Self::Item> {
+        // Check if we've reached the sentinel (end of list).
+        if self.current == self.sentinel {
+            return None;
+        }
+
+        let item = self.current;
+        self.current = item.next();
+        Some(item)
+    }
+}
+
+impl<'a> FusedIterator for CListHeadIter<'a> {}
+
+/// A typed C linked list with a sentinel head intended for FFI use-cases where
+/// C subsystem manages a linked list that Rust code needs to read. Generally
+/// required only for special cases.
+///
+/// A sentinel head [`CListHead`] represents the entire linked list and can be used
+/// for iteration over items of type `T`, it is not associated with a specific item.
+///
+/// The const generic `OFFSET` specifies the byte offset of the `list_head` field within
+/// the struct that `T` wraps.
+///
+/// # Invariants
+///
+/// - The sentinel [`CListHead`] has valid non-`NULL` `next`/`prev` pointers.
+/// - `OFFSET` is the byte offset of the `list_head` field within the struct that `T` wraps.
+/// - All the list's `list_head` nodes have valid non-`NULL` `next`/`prev` pointers.
+#[repr(transparent)]
+pub struct CList<T, const OFFSET: usize>(CListHead, PhantomData<T>);
+
+impl<T, const OFFSET: usize> CList<T, OFFSET> {
+    /// Create a typed [`CList`] reference from a raw sentinel `list_head` pointer.
+    ///
+    /// # Safety
+    ///
+    /// - `ptr` must be a valid pointer to an initialized sentinel `list_head` (e.g. via
+    ///   `INIT_LIST_HEAD()`), with valid non-`NULL` `next`/`prev` pointers.
+    /// - `ptr` must remain valid for the lifetime `'a`.
+    /// - The list and all linked nodes must not be concurrently modified for the lifetime `'a`.
+    /// - The list must contain items where the `list_head` field is at byte offset `OFFSET`.
+    /// - `T` must be `#[repr(transparent)]` over the C struct.
+    #[inline]
+    pub unsafe fn from_raw<'a>(ptr: *mut bindings::list_head) -> &'a Self {
+        // SAFETY:
+        // - `CList` has same layout as `CListHead` due to `#[repr(transparent)]`.
+        // - Caller guarantees `ptr` is a valid, sentinel `list_head` object.
+        unsafe { &*ptr.cast() }
+    }
+
+    /// Check if the list is empty.
+    #[inline]
+    pub fn is_empty(&self) -> bool {
+        !self.0.is_linked()
+    }
+
+    /// Create an iterator over typed items.
+    #[inline]
+    pub fn iter(&self) -> CListIter<'_, T, OFFSET> {
+        let head = &self.0;
+        CListIter {
+            head_iter: CListHeadIter {
+                current: head.next(),
+                sentinel: head,
+            },
+            _phantom: PhantomData,
+        }
+    }
+}
+
+/// High-level iterator over typed list items.
+pub struct CListIter<'a, T, const OFFSET: usize> {
+    head_iter: CListHeadIter<'a>,
+    _phantom: PhantomData<&'a T>,
+}
+
+impl<'a, T, const OFFSET: usize> Iterator for CListIter<'a, T, OFFSET> {
+    type Item = &'a T;
+
+    #[inline]
+    fn next(&mut self) -> Option<Self::Item> {
+        let head = self.head_iter.next()?;
+
+        // Convert to item using `OFFSET`.
+        //
+        // SAFETY: The pointer calculation is valid because `OFFSET` is derived
+        // from `offset_of!` per type invariants.
+        Some(unsafe { &*head.as_raw().byte_sub(OFFSET).cast::<T>() })
+    }
+}
+
+impl<'a, T, const OFFSET: usize> FusedIterator for CListIter<'a, T, OFFSET> {}
+
+/// Create a C doubly-circular linked list interface [`CList`] from a raw `list_head` pointer.
+///
+/// This macro creates a `CList<T, OFFSET>` that can iterate over items of type `$rust_type`
+/// linked via the `$field` field in the underlying C struct `$c_type`.
+///
+/// # Arguments
+///
+/// - `$head`: Raw pointer to the sentinel `list_head` object (`*mut bindings::list_head`).
+/// - `$rust_type`: Each item's rust wrapper type.
+/// - `$c_type`: Each item's C struct type that contains the embedded `list_head`.
+/// - `$field`: The name of the `list_head` field within the C struct.
+///
+/// # Safety
+///
+/// The caller must ensure:
+///
+/// - `$head` is a valid, initialized sentinel `list_head` (e.g. via `INIT_LIST_HEAD()`)
+///   pointing to a list that is not concurrently modified for the lifetime of the [`CList`].
+/// - The list contains items of type `$c_type` linked via an embedded `$field`.
+/// - `$rust_type` is `#[repr(transparent)]` over `$c_type` or has compatible layout.
+///
+/// # Examples
+///
+/// Refer to the examples in the [`crate::interop::list`] module documentation.
+#[macro_export]
+macro_rules! clist_create {
+    (unsafe { $head:ident, $rust_type:ty, $c_type:ty, $($field:tt).+ }) => {{
+        // Compile-time check that field path is a `list_head`.
+        // SAFETY: `p` is a valid pointer to `$c_type`.
+        let _: fn(*const $c_type) -> *const $crate::bindings::list_head =
+            |p| unsafe { &raw const (*p).$($field).+ };
+
+        // Calculate offset and create `CList`.
+        const OFFSET: usize = ::core::mem::offset_of!($c_type, $($field).+);
+        // SAFETY: The caller of this macro is responsible for ensuring safety.
+        unsafe { $crate::interop::list::CList::<$rust_type, OFFSET>::from_raw($head) }
+    }};
+}
diff --git a/rust/kernel/lib.rs b/rust/kernel/lib.rs
index d93292d47420..bdcf632050ee 100644
--- a/rust/kernel/lib.rs
+++ b/rust/kernel/lib.rs
@@ -29,6 +29,7 @@
 #![feature(lint_reasons)]
 //
 // Stable since Rust 1.82.0.
+#![feature(offset_of_nested)]
 #![feature(raw_ref_op)]
 //
 // Stable since Rust 1.83.0.
@@ -107,6 +108,7 @@
 #[doc(hidden)]
 pub mod impl_flags;
 pub mod init;
+pub mod interop;
 pub mod io;
 pub mod ioctl;
 pub mod iommu;
-- 
2.34.1

