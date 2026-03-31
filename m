Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Kj1J9g6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCA237198A
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA7FE10EB9B;
	Tue, 31 Mar 2026 21:21:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="CjqyBDxC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY3PR05CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11013047.outbound.protection.outlook.com
 [40.93.201.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE1910EA72;
 Tue, 31 Mar 2026 21:21:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RD1u9Le1IrSZoxGjxrwuKo/QnWQHf3+j4KC+cWpHmyghScSPQAMGZvQZhZLBFeetRO6ODvZJLFTor8tqCwz9tn7J4MqE3AUZGQ5XPy75NWYY9VJyAh8mqe3idf+WUwYHveruO3z8IsZQuf7r6aKFtN2kXODp1doqmNVUhG8qKJz0pUN34Fpfa+Ai0aub6trGNXi8p42rZP18KSAHKytM24rAOYut4g5NaHNM7iq1sGSeKly1MYE9PlgJk/kFKkV5UdqxI/divWg0FxiWhivPVZGOTKn1QFhY7qdeXa54gQVFAPnkVMtgolL5dMXmuQgCTJavV+uJwRIFzIdrh3glqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=peECcFfG9Ef7jRtC35L6+RGkxOZPEbYul7W++Dw2oh0=;
 b=ccJC5qbMXLHLOa/YndCTAx4v7bQ6lEQKaUygYcDE45dCH0X/2dmCXypfQKPTrwIpd7Hfv1hBYGOyIaQcf3uSrxiN6XUNuEMlC93FMqaIFjVrhTSn+xj7dvsZGbTIxKPWeG1OZALEc7zSTx2PTUNFOBdgMd44s49Ufe9g9ztZoBsmwveud0eI4rId6Wzztx2E/4/ZWI+/lgKYohIPX/loadh2hwGs3FyyVj/nkjy3dbYMxhX439/2Pg2CBwMC3HDxcTlZ8VViv5sQOOuZk+Fz4Ytitn/QsyQdpejheV/oNfM3xxP9F6gWTYPz4HFuxNbPiwj2lNJyShoqLIOUwJcCeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=peECcFfG9Ef7jRtC35L6+RGkxOZPEbYul7W++Dw2oh0=;
 b=CjqyBDxCgjZZWXnRLtH4Rw4uaiAB2v34IDXaKuq2CD5EGeqoaa/IhfKQZ8kfTi0V2JohI2wgDFo8OcTtfVKfA27ZqZU6arAp4kF42dwN34rNycI7nRroDRaTOAmH8xqvsZ9Hrq4oyWb3R+ReNlr8N4rc8oG8T1dPMlW/Yq6xD9J2afAdEsiJqI1ILqGBVFX+fBckmYrY3f43zNCPaEp3v7f7jRJtCcjRIeIsyp1zF1qpiSY8xJ+6Ig9a88f10E6f9YoKy7YdH+z6i5Fw9FRshHCRn9v0f/9Y+ublD8UvDqjSelMKxyjm29mG8Es9DBsAWUCUBXs349uVabfJGLT8QA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BL1PR12MB5849.namprd12.prod.outlook.com (2603:10b6:208:384::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.8; Tue, 31 Mar
 2026 21:21:06 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:06 +0000
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
Subject: [PATCH v10 02/21] gpu: nova-core: gsp: Extract usable FB region from
 GSP
Date: Tue, 31 Mar 2026 17:20:29 -0400
Message-Id: <20260331212048.2229260-3-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL1PR13CA0237.namprd13.prod.outlook.com
 (2603:10b6:208:2bf::32) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BL1PR12MB5849:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b4e0c35-3fa4-4fd9-2fd4-08de8f6b6b9d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: e+H54qBkSjcAiIusplIS1f5dJKT83U9hgQD3SVCSwGC/JbhF/Mk1uDL+k83A3HwXjhJhHhIM680SpbQYbV/TODVZxIlkD8fV47QoIQW+CZieiPQezBTZAaGgFnMwc1K2a+3Yz+aYpt3oHI1J/Goz+5sgaRsXKLPlVqjZLikXcgzP7QiKwP26JvwkT+2HiFzRnT9Ppy9rz17VPALz6T4vD2rdoC7vhhNqGj+m9q4KKWapRw3G/mkGTpW6/BPI/k70NWOzKIEaFjnyxIe9dMYtlkrdNzyu27842Jd7jLpk3tZxkcnXR0VlFx8wl9GcQjfNoQtcPHKPyzurho3sH0LaX6tCZsFHVeZGKXTNA3kEWPHNpExW07EZ0eI8EF7yIcnP7QsRQscz81QjxGkJ7SURGVmucZ3Jan55DusCWsagOcVDknz5Vgb1Eqq9fj8sGfqm9J4nvFiAw30vfqmw7ZvgYi32LtzMf47oGkSJTk+SC+z11yS1KLzqzPxyfww/u2tpJHzLQrxN6oI+S6T1h9+HFArEFr46YFTOD8wSM4Ubx7F6LbbtOMZ4SghjyDQIj2fGBRK1MaGGUokkHSRLtJsapl+IKrimluVAb/0QWI0N6ZRtvzN/SMZx45TXA7Bj3End1ZG5czpkJt30e25Srnqno1prud1IEQcmPYg1rxQsyUXL4r+i8DJpIZqzEMtg351qU6DMd9GW8g11Gas5rRachew+AYNjG7EAyexM1pxNWIk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hqDneO9ejHFmaLBQ58ax56jHxAIAqRC5aPVVil0ghI9IsnC1EA0JKvNJGETr?=
 =?us-ascii?Q?f++vyhFNQTHlI0x/l2RLPT3gH+auNkeR/M3XxSOZeR1zSR1h/VAl+Mb9gu0w?=
 =?us-ascii?Q?kwhqYWk7aM2m62mluzmwKi2ThoXW8Ny9ki2AImWOqVSKR0Q4pJkX0/LzP2nz?=
 =?us-ascii?Q?bJ2SLgqvO8sqf7YlQQDa6+81vKZn3PCpk3qKadHMSjJi6n1Rqt3lSvCTWY8J?=
 =?us-ascii?Q?dYayw3U1kne4+FvooFdyRqxmMiTX5DHXFe4u9DNLiBABIAaXhhyF+1EgMpQs?=
 =?us-ascii?Q?3mEV+n6w+u9b9RTKOGTPbi6tIHd32BYL0VFfd/6T3ClIk92oALsCL8zcY/Lb?=
 =?us-ascii?Q?FUVYNioFeXo97/XWs3ThoQjlFkqPKHCCA6MvHVpZJ284obtyameHmCfrUTOV?=
 =?us-ascii?Q?n4pMjEBZxV2motCOPNyLGfS/p407XnchAlDnFWaVHrq+8oXRcQNFdaFWXoIQ?=
 =?us-ascii?Q?LdywqSNHYQAN3XvXhkrKqesxnSl+E4LDE/DsO4gWUbTXuU9kjgAtcacprkM7?=
 =?us-ascii?Q?R5oo9uZPuwxtIMXjq4I6jQmYKmDnfwalhjcLC5n8pA3Ee7CO5nU3/Zoeol9N?=
 =?us-ascii?Q?fSPs3eBIb2SAJndvQQj4enkBqfoxoPf/IvNK0Q1tQdGGZ28j2VX93abQfh7I?=
 =?us-ascii?Q?NGovV3Vq1UJKGSZuVY3pYAV/h3x12Hzy/DKOrSmWQvk+F1MQzpcbLeNz7KFC?=
 =?us-ascii?Q?ilNlUXwKNPtoi5eIquyUd1FIBCkm8xa3VQS5j01oBk4lNuZmCtjw9/DUghTu?=
 =?us-ascii?Q?FniNjGgWDdivWOK6SNbPogDV2f0xUuqUECfrQl5qWC1V+b7XGavivqZn6LJx?=
 =?us-ascii?Q?9VNvmkm53rylS6yJkGtXm4opffve39OX9HmAXef3sn5cZJDUD50wVjkel8yA?=
 =?us-ascii?Q?gaV90Ps1k9sE9VpA1ExZbdCstcYLGImoMeFyCm7SqDL+OINKG9XBc79BOvnv?=
 =?us-ascii?Q?srUrm/fDKIE/PBB65qmj7LNxvuuYFa1vReWyiS+ZkT6HSlEAYYP9hT+3yFuJ?=
 =?us-ascii?Q?+NUMO/t/dMc7RlUN3cttT2NcQx8hdpNDKNHzirnZ+MrB8uHDB4rZqj9wypXV?=
 =?us-ascii?Q?+jrmri04bczWmHrtXL6ZyjRvsUEvxV6ajSvoYg1f47Qtx5AYDgzmDWIXTQRp?=
 =?us-ascii?Q?gN+iDdyed936j3XYm8GBsW14PpSx6Pw5QMB/JFQc6k8LKUQD8gUcFCflApvn?=
 =?us-ascii?Q?g+u/LuzmfdFbF1RV9Zr7WOq5fiuloOxoRboQYqu8RjFcGRqVQNrsUKAuRD3U?=
 =?us-ascii?Q?hFBO85AcVL5+7yCm7KMoEkybzSCwxis9RkrLVKJqKh4uPc55+9joYRci8I7e?=
 =?us-ascii?Q?7+ITI3VNnT3xztPnWk2A6jl55i5Qleyo6gkpkcp12cxWe2fqXK48ui/6zGRm?=
 =?us-ascii?Q?FnqtkW3vOB8q5U7IAWhRbtYIxBv9FAKPzTFKNai86GG0ON9rfT+p88HjWp/z?=
 =?us-ascii?Q?MQx1cimT59tTH26eH1joYBE0VtqzmBTjSdGR29iXA6rIp1aiLkTxTIutxqqF?=
 =?us-ascii?Q?WmAV0HOkqhjbK/7OpBJNI7wE/rEuVMqdW+sKEIdshLV2YwPmxg4Dayg12VCs?=
 =?us-ascii?Q?Ue2ydnMTyw6Dda4sSjndCZFhlVeSe2s2GFZN463168dX+AiJ58BCoj/O1eaV?=
 =?us-ascii?Q?x8hPRbb5sjcPbetqm4nsz1fHpE10vl0arsUGwmxGmKRZSFtTmo197REAZYVm?=
 =?us-ascii?Q?fbNS2G5G3yi4wPbGxQ5eyp9dd5N9sVsmLqZHnw5FNraFPiTC1uQjeJc/kZEV?=
 =?us-ascii?Q?l8ohHjTIuQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b4e0c35-3fa4-4fd9-2fd4-08de8f6b6b9d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:06.6081 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wJGaAIqxSE5SXKmUpW8SHTVqpXRCKKDNGvW/21YnmTGGxcYU7GksRabCfR/qK1kuZIBdXSEPrM8Y3PhIrTW/Pg==
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
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,vger.kernel.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	RCPT_COUNT_GT_50(0.00)[56];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:mid,Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 4CCA237198A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add first_usable_fb_region() to GspStaticConfigInfo to extract the first
usable FB region from GSP's fbRegionInfoParams. Usable regions are those
that are not reserved or protected.

The extracted region is stored in GetGspStaticInfoReply and exposed as
usable_fb_region field for use by the memory subsystem.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/gsp/commands.rs    | 11 ++++--
 drivers/gpu/nova-core/gsp/fw/commands.rs | 44 +++++++++++++++++++++++-
 2 files changed, 52 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/nova-core/gsp/commands.rs b/drivers/gpu/nova-core/gsp/commands.rs
index c89c7b57a751..41742c1633c8 100644
--- a/drivers/gpu/nova-core/gsp/commands.rs
+++ b/drivers/gpu/nova-core/gsp/commands.rs
@@ -4,6 +4,7 @@
     array,
     convert::Infallible,
     ffi::FromBytesUntilNulError,
+    ops::Range,
     str::Utf8Error, //
 };
 
@@ -189,22 +190,28 @@ fn init(&self) -> impl Init<Self::Command, Self::InitError> {
     }
 }
 
-/// The reply from the GSP to the [`GetGspInfo`] command.
+/// The reply from the GSP to the [`GetGspStaticInfo`] command.
 pub(crate) struct GetGspStaticInfoReply {
     gpu_name: [u8; 64],
+    /// Usable FB (VRAM) region for driver memory allocation.
+    #[expect(dead_code)]
+    pub(crate) usable_fb_region: Range<u64>,
 }
 
 impl MessageFromGsp for GetGspStaticInfoReply {
     const FUNCTION: MsgFunction = MsgFunction::GetGspStaticInfo;
     type Message = GspStaticConfigInfo;
-    type InitError = Infallible;
+    type InitError = Error;
 
     fn read(
         msg: &Self::Message,
         _sbuffer: &mut SBufferIter<array::IntoIter<&[u8], 2>>,
     ) -> Result<Self, Self::InitError> {
+        let (base, size) = msg.first_usable_fb_region().ok_or(ENODEV)?;
+
         Ok(GetGspStaticInfoReply {
             gpu_name: msg.gpu_name_str(),
+            usable_fb_region: base..base.saturating_add(size),
         })
     }
 }
diff --git a/drivers/gpu/nova-core/gsp/fw/commands.rs b/drivers/gpu/nova-core/gsp/fw/commands.rs
index db46276430be..9fffa74d03f9 100644
--- a/drivers/gpu/nova-core/gsp/fw/commands.rs
+++ b/drivers/gpu/nova-core/gsp/fw/commands.rs
@@ -10,7 +10,10 @@
     }, //
 };
 
-use crate::gsp::GSP_PAGE_SIZE;
+use crate::{
+    gsp::GSP_PAGE_SIZE,
+    num::IntoSafeCast, //
+};
 
 use super::bindings;
 
@@ -121,6 +124,45 @@ impl GspStaticConfigInfo {
     pub(crate) fn gpu_name_str(&self) -> [u8; 64] {
         self.0.gpuNameString
     }
+
+    /// Returns an iterator over valid FB regions from GSP firmware data.
+    fn fb_regions(
+        &self,
+    ) -> impl Iterator<Item = &bindings::NV2080_CTRL_CMD_FB_GET_FB_REGION_FB_REGION_INFO> {
+        let fb_info = &self.0.fbRegionInfoParams;
+        fb_info
+            .fbRegion
+            .iter()
+            .take(fb_info.numFBRegions.into_safe_cast())
+            .filter(|reg| reg.limit >= reg.base)
+    }
+
+    /// Extracts the first usable FB region from GSP firmware data.
+    ///
+    /// Returns the first region suitable for driver memory allocation as a `(base, size)` tuple.
+    /// Usable regions are those that:
+    /// - Are not reserved for firmware internal use.
+    /// - Are not protected (hardware-enforced access restrictions).
+    /// - Support compression (can use GPU memory compression for bandwidth).
+    /// - Support ISO (isochronous memory for display requiring guaranteed bandwidth).
+    ///
+    /// TODO: Multiple discontinuous usable regions of RAM are possible in
+    /// special cases. We need to support it (to also match Nouveau's behavior).
+    pub(crate) fn first_usable_fb_region(&self) -> Option<(u64, u64)> {
+        self.fb_regions().find_map(|reg| {
+            // Filter: not reserved, not protected, supports compression and ISO.
+            if reg.reserved == 0
+                && reg.bProtected == 0
+                && reg.supportCompressed != 0
+                && reg.supportISO != 0
+            {
+                let size = reg.limit - reg.base + 1;
+                Some((reg.base, size))
+            } else {
+                None
+            }
+        })
+    }
 }
 
 // SAFETY: Padding is explicit and will not contain uninitialized data.
-- 
2.34.1

