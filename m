Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aC/sMMf932ntbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 575BD407E81
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:06:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1D6E10E76A;
	Wed, 15 Apr 2026 21:06:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="CnIZXPLE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from DM5PR21CU001.outbound.protection.outlook.com
 (mail-centralusazon11011069.outbound.protection.outlook.com [52.101.62.69])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A21CB10E76A;
 Wed, 15 Apr 2026 21:06:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jx5djpmGP9qkeQEeLCrGPYN0GLebpee6CKn5BruZxfv+sXIm8npmOwBksOw0LDdOnc2++cSy1Z3Jopzt/gu7zBd2hVOP2TZDhdtoi6cI+TmwiGiyQpOkFQ/M3ovEcn2H6b3HLIqFEc4m63dQhS8OxR7NgU2YCnSLyfWGCkm1DivWZvj0GWdrtbO23CPONPmAwXQjhnsZJcCZgve+LFyubfgWWoo1R8M5Isdw2xrlw4cEyPtgpUOyxjVmoYxG4YOnDDMNS9xfR2Jg2PM5RsehZydU/598iozCaImDxnC0CQ13dVDTr+NcoZmrk3d+Usvrcek5HrOWVom2nrZM6Ndy7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DoX6jLjCUsPN0dbhJH9nPf7zt93pY2Q/KW+nW7CADHA=;
 b=L0kl0+Hx2vGp/s732zuGlgGj3AFnkXKouQmpKUXQRrdLhgPX1E7EoNxcDESvA+bQBpceVLA5TDOcs0GqtBbip9A1AHkm8DiRijaP72FHpJNca5BOnSfLNTe8paDgFh+W7F0v424+ePmhUlIm8ARIwhKzlhu81PsyXMnzBPXt3imcwDwgoM5VITdEnqwP3HzhXL0772nl/aSAMqh3ZyaQuyc1PqyrJBLxs7FWLsegZ3liZoSTVvAbAfO5WOiq7ajIFvRVK0+4htAOMHXcN0OwJBMen+T+u7gV0knkkJggERA/GsiQ9nPIDd1MKj7rNXtacmc9FNOPjcgJOpbBBi4WqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DoX6jLjCUsPN0dbhJH9nPf7zt93pY2Q/KW+nW7CADHA=;
 b=CnIZXPLEcIXpJJuEMMAi8Ezpe4dsgNq+fAMQbC1ds4aMOXJ9OzHSvdvW2sA97bGo71prJD5O8VyXenX+01+4gU+ypL8sJcF2dPYT70ufaP2P4d84yQopEoYGuIUXx+yBg71odi3TPHEPNQI6wSTpcNer5TrGNVVN2TZLKcy8QmyOofqQlKC0QNIZkamws/y894Svf5Z32bOO7UUiOKOgegBhmoEPmoKHCi1yUpk+3NxOIt8rqtaEPyWBSMbZlzoUgcMezabxKDNKtLdxH9pP2lpiMNkgkmRcoVqUsRIfVMAP0qejxfL2LbEDV0MqcI55+tRjGH4bxlSmiGnOyuH9rg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB9177.namprd12.prod.outlook.com (2603:10b6:806:39d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.20; Wed, 15 Apr 2026 21:06:02 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 21:06:02 +0000
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
Subject: [PATCH v11 03/20] gpu: nova-core: gsp: Expose total physical VRAM end
 from FB region info
Date: Wed, 15 Apr 2026 17:05:30 -0400
Message-Id: <20260415210548.3776595-3-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CY5PR19CA0047.namprd19.prod.outlook.com
 (2603:10b6:930:1a::6) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB9177:EE_
X-MS-Office365-Filtering-Correlation-Id: 2922aaba-15f8-4e98-88ee-08de9b32cd1b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: Wr4PWJC35nO+nGTAUZnxX9RPFI5SfS0Rer4IEqsd8/sifhSU5bwCOjN2dhzHqTp7QbTQhPD4Pl45RzK2Wj/BbbzmEfCX6bSQO3x9W1Iiog6aEmthtzILAWPgmi26lIVA8M63Q//ZFSCbJydLGM5ZWiNthKpKL3R+Kf3+FYtPj7RNfL5CLXEElXVwWAWpPfjdtDHMVvE4KWzhxEvxTRIKZ3oyI/prUWpk9C6ngu76wu+LCKqS2QyCdjXPbZLt3aw3WGvv13NFTnatPSjKUkSezPmfMcyVI54R+I5kIJWUF++upgonm2sWlX1Japg6CSw5l3nJzUtiotfv3SaK943yb/Tl1inTIbllSMtSdDKB+J2QbvALg7nPCmjxrehg8ZVRpMbG9RqSLwxBw+DYdHXlPx7zCNCdoS0Vkzr74qf2Na64uReb5jUina+i2hEa2/Fiz7/HaGRxfJmoUwtYFU5aUrngYlu3Own68JdWwEt4AsfDqCXmoRhq5ePBsHQ5iLS+v1evzpFpVs6oRwb8P2RxYcr9x/Jy8/lTM+jUC41GBfp8LPy1KEs1pPz1N4DUziem8dLBh3HTUrRlerJ26TzXsZsShyXNAGe+fBDDeeZ7jcZqo2gDoPzXbez238nO2a9jsKk/Y+ynl+8TxyvNTf0ov7sC5XTc63EK7r6AqYT3PVk3NpMxC6YkQ+ae2MaUqeBMtN+K+VbVto0xJzSEEHpmrQBbUTLbzv5Ks+EDmd8dcvU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uSyHJUnyHj0TnvKe/mDTK/N3LraLALtaSNDML9lU9iO+bUtGRRfd5ovDzu/E?=
 =?us-ascii?Q?5a4aLpZ/GcS3owdQZYwnjOCmHgW1+X3yB84VYxtTjg1uhIyQGeMfwl0WkN1W?=
 =?us-ascii?Q?biMU3Wf4Km3BgkvU8kCo7HL7RUkoCbSEEFpS0L26kCqGvzunZanrFUbr9zzD?=
 =?us-ascii?Q?V1+vMYmDnGnlwWyTeyjWgl/Yws+FI86PK5cV5x2Z2Br8Lp9n+BJ4mFKNBD24?=
 =?us-ascii?Q?eKembgkH39g1m3hj1GDy9zTsvbyNK9GMqfSsmgf/HohB8dG4XKgQew9cvaSq?=
 =?us-ascii?Q?a7wPNex7c5UUeA0Tk1qRRTNFPUG/kD+G4OnV+m7VXbuu5xmhbeQYkyR9whJM?=
 =?us-ascii?Q?ZsjVMXftZ4X/zji7ynzLeUqR8lmKOD/20ydiA1RixtO5BB0JdXAcKSZGJeMr?=
 =?us-ascii?Q?gMPXJVmqKXoEA1UUrn/O41xFc0nQCFoMIDKidzjbspxigVZFOmUCbYhsj/z4?=
 =?us-ascii?Q?E1q8NRFU+xRa91ceW+3GQdMlpVE/rbLntR1OnHrpQlZJBN3oC9GjT77b/WLK?=
 =?us-ascii?Q?YokyKEW1fDAjMtWcYxLdjiBLQVqbxMb4OaTNIG4TXXPqxsKUdm/EvLiJZFnG?=
 =?us-ascii?Q?WQ/nsZzXhlia59bCzb3cblDyVTxd5zYqMLOKOQsB2rsPaGPi5d7TQInyOILL?=
 =?us-ascii?Q?PCBbiXMBfaJ5mN77DRFZFRByBXvmOSxjJHtM456fq250hARY9J9ZufkIq+vj?=
 =?us-ascii?Q?RjbrXQrkVLIU3/+qSaN1SkoJ3zY8ZC/DyZzVKzUd8zBXnBeoWu9rIDjxRRav?=
 =?us-ascii?Q?6XnYTDSR9oCHbOtuZcQqsHRuF0a17ZCPH1iUSmckCDdAvkOVbzcA1Z3cHDqE?=
 =?us-ascii?Q?4sRfEbc57Z27UiDONHArCic/Pruz1VfFyxAiC3P48Gv7oz7Wvgu9YJzj4olG?=
 =?us-ascii?Q?dN7ugT+Cnv+hbmrOT1CuSB2BpFixdEhxhE/FnpE4fMJ4i4PCqf7y2IuWm/QN?=
 =?us-ascii?Q?2ZgeIj2ja9doslFXoC/4LU6Gu/SQraI0SmnCdL3yFQNFpqJtIuU78F39GQW9?=
 =?us-ascii?Q?ClDsk/bEMX2Sm/l/SsjAjBhIACCE7wwojBCsyHmPjhgGPILnh/n6r9X5OpQs?=
 =?us-ascii?Q?OPPjJ83f0glmu+VHwZGrEiZK01u+AcYoQadhyT70G1KM1LNzSJ5MgoYdLBwz?=
 =?us-ascii?Q?F2J4ktUBmWTnrTNOdUzInV/TtusYm6sv+cq71AK3Eulcz38fnJiuaXy2X2fe?=
 =?us-ascii?Q?mb7sWq3MK6GxDY5c0c9JOkt5mnOD3oQdF2TM2jged37+IszhDPhkSf1LVd6H?=
 =?us-ascii?Q?zX4vQ70k98cOBmKtG2ZYPoCavhx3NEOnVWAc8ieXuMnOxdM7I74nAATMiCFq?=
 =?us-ascii?Q?fyQLsyVSyxWnFyLAHD6/rggbkT51fmGTVeUfuqx5NTdqZgqpgN+9fgjmXpW3?=
 =?us-ascii?Q?fcbqXR8OWtsCEr/z0za8iSz28Z/uOort1K9hyKWTTwq4hfKlWl3FMvbY0BDk?=
 =?us-ascii?Q?qpikfj9XcBvCm8ThGa4coIrftUGitQzKql+P21pOx0MUj904AQPqnIx/+2ft?=
 =?us-ascii?Q?pNhJzJPPNQ6LybnbOVE1msY5uieBmFeyGiVhIFZ+/BXNY8DxP3RLhXUUGlGf?=
 =?us-ascii?Q?G5Wtstn/i+tUHfpq20rwUxw1iW9SUi62MxFmkRSGGC+fBeL15AGpQP22p5P1?=
 =?us-ascii?Q?LOwHEzYFiFQF3Ql76Duev7QCDwlHq3EwVvcj5CxFnLle8zPKpCQQWCmxMu61?=
 =?us-ascii?Q?oTwKdzQnXeGEJt68gKeVeppWdinxcUmWTRdPggnu7oAZmoUAmtYyzyz32OUy?=
 =?us-ascii?Q?wED9hostzA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2922aaba-15f8-4e98-88ee-08de9b32cd1b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 21:06:02.6320 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6KIta0n4h2NQ+YMkWmkAcBFfGo1cJxHdwIyP8I/nqV2zyKsB24lODli0az7z2695Ro1arJLifysBnJQMmGJY8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB9177
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
	RCPT_COUNT_GT_50(0.00)[55];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.986];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 575BD407E81
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add `total_fb_end()` to `GspStaticConfigInfo` that computes the
exclusive end address of the highest valid FB region covering both
usable and GSP-reserved areas.

This allows callers to know the full physical VRAM extent, not just
the allocatable portion.

Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/gsp/commands.rs    | 6 ++++++
 drivers/gpu/nova-core/gsp/fw/commands.rs | 7 +++++++
 2 files changed, 13 insertions(+)

diff --git a/drivers/gpu/nova-core/gsp/commands.rs b/drivers/gpu/nova-core/gsp/commands.rs
index d18abd8b5f04..e42a865fd4ac 100644
--- a/drivers/gpu/nova-core/gsp/commands.rs
+++ b/drivers/gpu/nova-core/gsp/commands.rs
@@ -196,6 +196,9 @@ pub(crate) struct GetGspStaticInfoReply {
     /// Usable FB (VRAM) region for driver memory allocation.
     #[expect(dead_code)]
     pub(crate) usable_fb_region: Range<u64>,
+    /// End of VRAM.
+    #[expect(dead_code)]
+    pub(crate) total_fb_end: u64,
 }
 
 impl MessageFromGsp for GetGspStaticInfoReply {
@@ -207,9 +210,12 @@ fn read(
         msg: &Self::Message,
         _sbuffer: &mut SBufferIter<array::IntoIter<&[u8], 2>>,
     ) -> Result<Self, Self::InitError> {
+        let total_fb_end = msg.total_fb_end().ok_or(ENODEV)?;
+
         Ok(GetGspStaticInfoReply {
             gpu_name: msg.gpu_name_str(),
             usable_fb_region: msg.first_usable_fb_region().ok_or(ENODEV)?,
+            total_fb_end,
         })
     }
 }
diff --git a/drivers/gpu/nova-core/gsp/fw/commands.rs b/drivers/gpu/nova-core/gsp/fw/commands.rs
index 3d5180e6b1e0..f2d59aa3131f 100644
--- a/drivers/gpu/nova-core/gsp/fw/commands.rs
+++ b/drivers/gpu/nova-core/gsp/fw/commands.rs
@@ -164,6 +164,13 @@ pub(crate) fn first_usable_fb_region(&self) -> Option<Range<u64>> {
             }
         })
     }
+
+    /// Compute the end of physical VRAM from all FB regions.
+    pub(crate) fn total_fb_end(&self) -> Option<u64> {
+        self.fb_regions()
+            .filter_map(|reg| reg.limit.checked_add(1))
+            .max()
+    }
 }
 
 // SAFETY: Padding is explicit and will not contain uninitialized data.
-- 
2.34.1

