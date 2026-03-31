Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Ht7C/Y6zGlyRgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5B0371A4F
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 23:21:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 539D610EBFF;
	Tue, 31 Mar 2026 21:21:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="OIesg9Is";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH8PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11012026.outbound.protection.outlook.com [40.107.209.26])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24E5410EBEC;
 Tue, 31 Mar 2026 21:21:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zJRT6gmosD4x3nxRHi9wcI3VxPlVysR72LqrjjVcT52JQJScCrroIL23EwR0qNcHo2NWbFHtplSFFzUwJoIHYAcoaOwmaszGrrxIDu90MFybSEVIRaJ82jHRRcsv1R2ogdz7cCg7+b1Ev+dwog2sjjG5ocNQJQVFl/p6SqTy4+8bP3GG/Rm7nqBfeJUK1XQLy/UZMHJIM+Lvvxro6LyAAVlJW23vz2FASiUE9BXV5BLvDGTKSXGp0qY13eB85PoitdrObbzmJvZ5hsjdYbp6sCjIiY7ZQ9hcI1iFh38NwVen66HWKcVPyJsCfaw/qNxU6ONJTNo67EQTjbpwcaKPmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dNfNKmYzCflEyH8VhSrOQysOvD0OAVzABVVU1E01sPQ=;
 b=H4qyR/kKYi1zoove88KZ+sMHgzvW1/ikO3HrpY1N1Uz+gOvVZeY+pKaCS7aWOcov2HdfH4VvcRKRXIoOeR+Mhy1p35Knh5ZtVN3cufdzkr96dQezkD/sp1etlpNoacsQo3/JOKPCsrmT5yJGowC0cAZ0PH0fs6Z8WjOVOyqBiuoiBKwixAzNqXUK+JyavUsGjhW7r5nKB87Ls7/UzH1xfUDhnQhmZolgHJ3QVtdPz1eJKvfgeRjDkax/4RBK4WIrv7WXetxuISGpe1TQtYV0XrjGZ3y+xam+cyLwCLkI/a/8drhjk76Bb2DfBsMyYLFgkcotfQv3fA2XisLfR4WciA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dNfNKmYzCflEyH8VhSrOQysOvD0OAVzABVVU1E01sPQ=;
 b=OIesg9Ish9n7oJxvbLphalIKn+i6RsZ5xWQfpJidOOsAYaQy/u3yQdWAocQu/gH8um3k/LF9fUb26gp6JcvzjAc4vOLyq8qAZU9GSnIbWxDRlw2IoMn5zs4i1df5QY/5P053RIHLbydv3PFTXHBJ1MJb+VuXrLXxkOXAn86IZq35fUTFAGCs+Lct/lbCoFg7HcI7qnliGl9kaPWYmxPDJQz0rnc6V8qjJnsafDOrnJyE7fQpahnkqQMrjFrrpZ7Moz3Shg5s5Mz6/JyyjLwhmtejZxEhXFJFChGBy6wOHCB2Lxp9LLkrecem9XP1Ze4y/+bNMUx3gmp2ZLVFfH2aDQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA3PR12MB8809.namprd12.prod.outlook.com (2603:10b6:806:31f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Tue, 31 Mar
 2026 21:21:45 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 21:21:44 +0000
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
Subject: [PATCH v10 20/21] gpu: nova-core: mm: Add PRAMIN aperture self-tests
Date: Tue, 31 Mar 2026 17:20:47 -0400
Message-Id: <20260331212048.2229260-21-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260331212048.2229260-1-joelagnelf@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CY5PR20CA0015.namprd20.prod.outlook.com
 (2603:10b6:930:3::18) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA3PR12MB8809:EE_
X-MS-Office365-Filtering-Correlation-Id: bd478f39-0c0c-4bee-30cc-08de8f6b8279
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: 0e2eyqpGqUhMF+UW4V9pTjoAG6W4HViUZjrMwNDZmNFyZ7T/VNpSemr6gBjtoH9c0fFwLuHwct/13/WGGqnoDhvZEr696hKFrKFoGe7ZnBsd+lYXPhxgXp8ZTba91Ao2HX+y6TZ1PkKHvERb/6RsB8X4KhZEQ7BJyOrG+8DHmsKZMOqwLJvZGcZMjw/FUt5VHIeINm53cj7SG1jf38i01J/DbG8cLmKJ0tKl68mvl1wbLV1cKqTH4BrVQ8owWvu7LAbJIzSvya6aJP6l4Ag0tg0+KpzGV4rQQJnGPCYMRtVfv4wVwlQwa2iOqnnldiR2aoBhm8/dMNKMkiR6EeDg1ONHjXU234I03qxnDfbwO1mYT5aM20TWugTXtbxHFBoctELRFNJUHSNMOVdbT1HIaySleat29Ia8338r9hQE6vVdReClutMOKEJ6XSdFINotEbZXabC31g85L3KpSJr4BYJGKtcO2BnvZfo1/ZR2Efg0/gusippnPYaBAOb4LqVgqnL4aSfKd/cU2iUDpBOrqYsP307Z6SRa1XrSpGS4W61Ce8YR7rQ6Q+arXl2T+yfkuqRbIn9qMSli8apWw8zy6LT4D4tkdWtr1ZrWN9I3toCMtRL3Wu9jIxbhsb/JUPdYKKubjXf4wk5rZ8uQ8PumshQzhdXcfLnZi1qQDpnClFLk3vV3AnzhuyIUqyCBzYXgJIcC+TqA2pjfnchV3DNsfDhyLx4bT0g+Axd8ls8Fe2c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MhTdegMcNyR13REKJcTDZ1B9FNv6Hxctxd5RTCN1fawJ5XGfloPgng6c8yp7?=
 =?us-ascii?Q?FmMwvc8cWIv14XpOAunllK9GMY5B2PwLc01Q9oULJYQBO5K28ujlgOVujy1t?=
 =?us-ascii?Q?E0QI4tuqpp3pjrx8lH1+yYJMdMmILTjJWJFmJ52Gga09CVAKv/4GWDMmq9U/?=
 =?us-ascii?Q?bTavT4aH0rnpW87hmJlprV6cGEyEzyZW6DCKKhfkgkBuoYbxME+Ni7yJ48n/?=
 =?us-ascii?Q?4IUUzMJldnlgBVLcoKXBiNWWRtf/d5ImzJW4Z6SKK7/IjAe5638tdv1csLvC?=
 =?us-ascii?Q?L+ZDNIWK/nLKTJJm2bY817DDJt7wtGOGctUGm6vo0AgRFIh9yJKjkTKF0ZBw?=
 =?us-ascii?Q?nx1EuKsiU8rieA+bzoeX6jiDyhgC9d1DUqIkV0qBgi32TuciP3YfhlOsqK2m?=
 =?us-ascii?Q?EFL/yDbPfCPwtMrWsKsM4xffC3QO9zRl5WgkHoQMRD1voabwKOG1s4thCe52?=
 =?us-ascii?Q?yD3aRJMPRovpBmH+CL5FCSuOEzDAWhIcAj6fFO3HBni8Yfn9DR8f1EAH3VC6?=
 =?us-ascii?Q?5etKghOsxhT5e67JvWylULwzJuWL2T0rbcLe3ytdY1w4hICZSbaWkVmcTUvu?=
 =?us-ascii?Q?C4Og4cLfEOzvg2verLkpFjaPxBnbcUVSUspN8YRDCO6eDy9SuwYNrz+6fiIy?=
 =?us-ascii?Q?8yaTfKq2MubDErUNg9JAPjUR30wumQxhy5rrUuGzcEjhFb2crZybEn7m2OUl?=
 =?us-ascii?Q?zRWqxQTqyq/8wfNq3r3/WVEnYKYl9BXyN/5iSLvDkCWyIS/vL7o15BARXp3a?=
 =?us-ascii?Q?altGrbVMSU/QAgMvvMWCau2j3yn/TO0nZaqJWTP/1Knud4ui1lLYj2ilCbI8?=
 =?us-ascii?Q?novlWG8og3D1eerxqm+XNfU6JoLTjrd4ROedWAQt7V2H7H8caAQE6Im/Cgcm?=
 =?us-ascii?Q?6MqEwQre43tcg9u/DZiEIipSeWi/+4QVic0nzNHfsQ5eocK7RJu7iv8YDusp?=
 =?us-ascii?Q?FobbXUB8dtC9WHeq6R4xEnzG+mN8zUbXWnNoSS24jZY6fOIMHK+TV1c1VEhW?=
 =?us-ascii?Q?9iUPC3ivzXWUgWYFtx+P9n7TgO+RoA+LIPRvSrl6qgiCZYdSWtepoTgsEHY4?=
 =?us-ascii?Q?ict3Vpth2+3LbGaG39iqmxMD5AyhJipm0Unpj1DFzFrvpQb+AdJQkMyHPs3M?=
 =?us-ascii?Q?1eSEtGPtm6SdUVaYOzyUqZ893SG9qQtPcbFQ5K5wlcP9qcFluIOf/7mXD+V3?=
 =?us-ascii?Q?ZGVr3//dShEtIHphTfJzyT/NdIxzFq7XZEaSAzmEKKiQcR+d2CfgsdQ514AF?=
 =?us-ascii?Q?KaQEXUuEE55PHHO90DBz+PuXU8yobazCxLDrnwqyOpglYANTmvnOuB2f/LI8?=
 =?us-ascii?Q?fF907PzhNBGdFr+l+aEAXXnp6NM1TWS0fEopCdwYwP6kK1BWsbCd41NNgdRC?=
 =?us-ascii?Q?NDZHiH95Q3Cq7kLeA2D+DQ4HF7TvcOWA7Mih/N/kIAdhWoWwPkA3UYisSUuV?=
 =?us-ascii?Q?SF53VuM8OBDgafBm8dj9K7W1Zk/dB4lFRnyzJefXXzLaPUS0L3UiouE9iUt+?=
 =?us-ascii?Q?srh921MoQgE9k+tPmeHquNaTY83TCJfNFmw+G7L6ZFCfitoc2MKQANvY4w9Q?=
 =?us-ascii?Q?owa2R8vbxkun6DKWZdJ68h4StDqyK44a0n5RXSIv3GxwB0rRo7/jGztmanBq?=
 =?us-ascii?Q?s8z3+WijAaNYtguFKTw0zFN7OxZbeZhC52LB8JL0Zxi2Fp3eiG84btEbwjnv?=
 =?us-ascii?Q?mpYDjeEf7JQ2DEIoA6bWsVKG0mIelEneXkmV3Nrz8ZgZvm9fOhVkgJ6RNm3U?=
 =?us-ascii?Q?OJZnEtpH7w=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd478f39-0c0c-4bee-30cc-08de8f6b8279
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 21:21:44.7946 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SScsIP4hjsJmvtPNpv8Qwk5GVRj5B9bfVYhacI/9ENvoH7FW+cc94rkRld4j63baeh6WdjC2LSTXsoC9JwCw6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB8809
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Nvidia.com:dkim,nvidia.com:email,nvidia.com:mid]
X-Rspamd-Queue-Id: CA5B0371A4F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add self-tests for the PRAMIN aperture mechanism to verify correct
operation during GPU probe. The tests validate various alignment
requirements and corner cases.

The tests are default disabled and behind CONFIG_NOVA_MM_SELFTESTS.
When enabled, tests run after GSP boot during probe.

Cc: Nikola Djukic <ndjukic@nvidia.com>
Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
---
 drivers/gpu/nova-core/gpu.rs       |   3 +
 drivers/gpu/nova-core/mm/pramin.rs | 209 +++++++++++++++++++++++++++++
 2 files changed, 212 insertions(+)

diff --git a/drivers/gpu/nova-core/gpu.rs b/drivers/gpu/nova-core/gpu.rs
index 021fc7cc7247..8206ec015b26 100644
--- a/drivers/gpu/nova-core/gpu.rs
+++ b/drivers/gpu/nova-core/gpu.rs
@@ -355,6 +355,9 @@ pub(crate) fn run_selftests(
     fn run_mm_selftests(self: Pin<&mut Self>, pdev: &pci::Device<device::Bound>) -> Result {
         use crate::driver::BAR1_SIZE;
 
+        // PRAMIN aperture self-tests.
+        crate::mm::pramin::run_self_test(pdev.as_ref(), self.mm.pramin(), self.spec.chipset)?;
+
         // BAR1 self-tests.
         let bar1 = Arc::pin_init(
             pdev.iomap_region_sized::<BAR1_SIZE>(1, c"nova-core/bar1"),
diff --git a/drivers/gpu/nova-core/mm/pramin.rs b/drivers/gpu/nova-core/mm/pramin.rs
index fde0eb30eaeb..059d00c49611 100644
--- a/drivers/gpu/nova-core/mm/pramin.rs
+++ b/drivers/gpu/nova-core/mm/pramin.rs
@@ -180,6 +180,11 @@ pub(crate) fn new(
         }))
     }
 
+    /// Returns the valid VRAM region for this PRAMIN instance.
+    pub(crate) fn vram_region(&self) -> &Range<u64> {
+        &self.vram_region
+    }
+
     /// Acquire exclusive PRAMIN access.
     ///
     /// Returns a [`PraminWindow`] guard that provides VRAM read/write accessors.
@@ -278,3 +283,207 @@ fn compute_window(
     define_pramin_write!(try_write32, u32);
     define_pramin_write!(try_write64, u64);
 }
+
+/// Offset within the VRAM region to use as the self-test area.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+const SELFTEST_REGION_OFFSET: usize = 0x1000;
+
+/// Test read/write at byte-aligned locations.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+fn test_byte_readwrite(
+    dev: &kernel::device::Device,
+    win: &mut PraminWindow<'_>,
+    base: usize,
+) -> Result {
+    for i in 0u8..4 {
+        let offset = base + 1 + usize::from(i);
+        let val = 0xA0 + i;
+        win.try_write8(offset, val)?;
+        let read_val = win.try_read8(offset)?;
+        if read_val != val {
+            dev_err!(
+                dev,
+                "PRAMIN: FAIL - offset {:#x}: wrote {:#x}, read {:#x}\n",
+                offset,
+                val,
+                read_val
+            );
+            return Err(EIO);
+        }
+    }
+    Ok(())
+}
+
+/// Test writing a `u32` and reading back as individual `u8`s.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+fn test_u32_as_bytes(
+    dev: &kernel::device::Device,
+    win: &mut PraminWindow<'_>,
+    base: usize,
+) -> Result {
+    let offset = base + 0x10;
+    let val: u32 = 0xDEADBEEF;
+    win.try_write32(offset, val)?;
+
+    // Read back as individual bytes (little-endian: EF BE AD DE).
+    let expected_bytes: [u8; 4] = [0xEF, 0xBE, 0xAD, 0xDE];
+    for (i, &expected) in expected_bytes.iter().enumerate() {
+        let read_val = win.try_read8(offset + i)?;
+        if read_val != expected {
+            dev_err!(
+                dev,
+                "PRAMIN: FAIL - offset {:#x}: expected {:#x}, read {:#x}\n",
+                offset + i,
+                expected,
+                read_val
+            );
+            return Err(EIO);
+        }
+    }
+    Ok(())
+}
+
+/// Test window repositioning across 1MB boundaries.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+fn test_window_reposition(
+    dev: &kernel::device::Device,
+    win: &mut PraminWindow<'_>,
+    base: usize,
+) -> Result {
+    let offset_a: usize = base;
+    let offset_b: usize = base + 0x200000; // base + 2MB (different 1MB region).
+    let val_a: u32 = 0x11111111;
+    let val_b: u32 = 0x22222222;
+
+    win.try_write32(offset_a, val_a)?;
+    win.try_write32(offset_b, val_b)?;
+
+    let read_b = win.try_read32(offset_b)?;
+    if read_b != val_b {
+        dev_err!(
+            dev,
+            "PRAMIN: FAIL - offset {:#x}: expected {:#x}, read {:#x}\n",
+            offset_b,
+            val_b,
+            read_b
+        );
+        return Err(EIO);
+    }
+
+    let read_a = win.try_read32(offset_a)?;
+    if read_a != val_a {
+        dev_err!(
+            dev,
+            "PRAMIN: FAIL - offset {:#x}: expected {:#x}, read {:#x}\n",
+            offset_a,
+            val_a,
+            read_a
+        );
+        return Err(EIO);
+    }
+    Ok(())
+}
+
+/// Test that offsets outside the VRAM region are rejected.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+fn test_invalid_offset(
+    dev: &kernel::device::Device,
+    win: &mut PraminWindow<'_>,
+    vram_end: u64,
+) -> Result {
+    let invalid_offset: usize = vram_end.into_safe_cast();
+    let result = win.try_read32(invalid_offset);
+    if result.is_ok() {
+        dev_err!(
+            dev,
+            "PRAMIN: FAIL - read at invalid offset {:#x} should have failed\n",
+            invalid_offset
+        );
+        return Err(EIO);
+    }
+    Ok(())
+}
+
+/// Test that misaligned multi-byte accesses are rejected.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+fn test_misaligned_access(
+    dev: &kernel::device::Device,
+    win: &mut PraminWindow<'_>,
+    base: usize,
+) -> Result {
+    // `u16` at odd offset (not 2-byte aligned).
+    let offset_u16 = base + 0x21;
+    if win.try_write16(offset_u16, 0xABCD).is_ok() {
+        dev_err!(
+            dev,
+            "PRAMIN: FAIL - misaligned u16 write at {:#x} should have failed\n",
+            offset_u16
+        );
+        return Err(EIO);
+    }
+
+    // `u32` at 2-byte-aligned (not 4-byte-aligned) offset.
+    let offset_u32 = base + 0x32;
+    if win.try_write32(offset_u32, 0x12345678).is_ok() {
+        dev_err!(
+            dev,
+            "PRAMIN: FAIL - misaligned u32 write at {:#x} should have failed\n",
+            offset_u32
+        );
+        return Err(EIO);
+    }
+
+    // `u64` read at 4-byte-aligned (not 8-byte-aligned) offset.
+    let offset_u64 = base + 0x44;
+    if win.try_read64(offset_u64).is_ok() {
+        dev_err!(
+            dev,
+            "PRAMIN: FAIL - misaligned u64 read at {:#x} should have failed\n",
+            offset_u64
+        );
+        return Err(EIO);
+    }
+    Ok(())
+}
+
+/// Run PRAMIN self-tests during boot if self-tests are enabled.
+#[cfg(CONFIG_NOVA_MM_SELFTESTS)]
+pub(crate) fn run_self_test(
+    dev: &kernel::device::Device,
+    pramin: &Pramin,
+    chipset: crate::gpu::Chipset,
+) -> Result {
+    use crate::gpu::Architecture;
+
+    // PRAMIN uses NV_PBUS_BAR0_WINDOW which is only available on pre-Hopper GPUs.
+    // Hopper+ uses NV_XAL_EP_BAR0_WINDOW instead, requiring a separate HAL that
+    // has not been implemented yet.
+    if !matches!(
+        chipset.arch(),
+        Architecture::Turing | Architecture::Ampere | Architecture::Ada
+    ) {
+        dev_info!(
+            dev,
+            "PRAMIN: Skipping self-tests for {:?} (only pre-Hopper supported)\n",
+            chipset
+        );
+        return Ok(());
+    }
+
+    dev_info!(dev, "PRAMIN: Starting self-test...\n");
+
+    let vram_region = pramin.vram_region();
+    let base: usize = vram_region.start.into_safe_cast();
+    let base = base + SELFTEST_REGION_OFFSET;
+    let vram_end = vram_region.end;
+    let mut win = pramin.get_window()?;
+
+    test_byte_readwrite(dev, &mut win, base)?;
+    test_u32_as_bytes(dev, &mut win, base)?;
+    test_window_reposition(dev, &mut win, base)?;
+    test_invalid_offset(dev, &mut win, vram_end)?;
+    test_misaligned_access(dev, &mut win, base)?;
+
+    dev_info!(dev, "PRAMIN: All self-tests PASSED\n");
+    Ok(())
+}
-- 
2.34.1

