Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPTCGf25sGn0mQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD112259DA5
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 01:40:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAB0E10E799;
	Wed, 11 Mar 2026 00:40:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="BJzd89qp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH0PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11011011.outbound.protection.outlook.com [40.107.208.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 175D010E799;
 Wed, 11 Mar 2026 00:40:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HUt1B127AMweDzWULrgyTcfdBmOnW1T3Ex45A2Bz+QXGbCTaO9OnlTyWGfQAIxiO3P/fgQWdzUcs+0Jf7lHaIW8JoajM9GemgxZ40uo0Fn4srbHt6vwiR1lg5h479r+vppj87WDxV68yUrwSZ3lN7EjP7S9q/fX6CjhkGBMvKlY9K4DGENgD99jKABcLWfbyLZJ4etNPi2Ok23186glKYMPCHJm5Y4bU0gKiEeehmBjAUg3blj1liNZDYnY+2A3hrOV8QLI/uMgkVrQlvIUjrINECZ3dK0HMdUVSIWzwKsTUFg8PkfXBM8pY/8tevx+zFSMySCiolh69ilyqAfeB1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5krM3tMcj8I7E+Q1X0GSjeoEvIISm/ZcwuPYTuLTW2o=;
 b=YoMw9FOPv7LTrgwAPpV7LG2rztxXYoPjvls9Y9kx5WNgMp2Tyj2z/TytqNGMGAqJmsiL13ZYPXLQKROgX24csaN/R8lFN/H85fnssyAH8r4ITiQ3urQOoe9AmBhmVzxqT7vBtirWpEV15fe+fB0VBu5P4PpzKj5kazUF/vbDgCnRxWDE8kT1zDldZL6OTo5RLn8Ur+XUj1RPlrBLsgEMS/TRDMoVcmgCOjCCmPKFAsk+SClVU5d/XNgNnXTgpomDwKrNrMVxpTWMoM2QI4XBr6DhmmZgpFUvY9nHZsTcKln0P9qljtI4JLIHfwZEtwQ0AcL34gMGzOVS9cROEb6bHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5krM3tMcj8I7E+Q1X0GSjeoEvIISm/ZcwuPYTuLTW2o=;
 b=BJzd89qpyUUIL/JacLB2d+BEmoHXiAyOCsDrSIFIgI896Hl6T2Wik1rWlmNOPXQt0niPijP0nZ6rLBsG+cEWLYGjFktekDS4XTsaWeERTLGtEM43g83ylf3aZvUz49OVrf3kr5n6D9mCrLAoOUfnSVH5TwzqmUyvkLdxmRWo99vVLoX2SD+wlO5JhB8JeyK0S2s9wyIJ/nwroNdYjWibZEkI0mJ/AfiO51RTREbgRHvfikXAMLV4VjNRezcFVfzHlxVZSAWZnn8QDeeWYXDvAwSboutWYkDj7nFddqA24pK+brI9OlOqDPVIL5phTBnILKaU5wlPWmN6QFbsnGI+Vw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 BN7PPF62A0C9A68.namprd12.prod.outlook.com (2603:10b6:40f:fc02::6d2)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Wed, 11 Mar
 2026 00:40:19 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 00:40:19 +0000
From: Joel Fernandes <joelagnelf@nvidia.com>
To: linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>,
 =?UTF-8?q?Bj=C3=B6rn=20Roy=20Baron?= <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, rust-for-linux@vger.kernel.org,
 Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
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
Subject: [PATCH v9 00/23] gpu: nova-core: Add memory management support
Date: Tue, 10 Mar 2026 20:39:45 -0400
Message-Id: <20260311004008.2208806-1-joelagnelf@nvidia.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL1PR13CA0373.namprd13.prod.outlook.com
 (2603:10b6:208:2c0::18) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|BN7PPF62A0C9A68:EE_
X-MS-Office365-Filtering-Correlation-Id: bc99f479-14d2-4af4-eb0c-08de7f06c552
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: x3UIsel9Gvms443CZPIdInj2T4RwQIuFdJb+L4VaTqrl7/VbA/Bey4euHSHiwZzxxPiTiGv8zZpzaySCpb4X2N3LSpHWLPRCeURCJq2FXN+Msz4ArQtfTBMTi5mpHuqxO+Kzxm7DDgdd3o9cJK0NUfUYNSpUV/S1PBYJTMccOrnfllJ7QTqK3xsIUq0c5kMvX97qvQcAI505mykmfe3kifu4W3iLUbp1CaIJvdjsDnJOVn3AqOTVFTVdk1MOJ4fdhn+bhHgtAtZBjsPIkJmPv4AvYKQ5h+swYGvRAnqz729F3q9A+JIKC9dow50YX7DlvVzh2FaF/dudR7IxeDngVerWeKnok9LXwIGUr9XOWyU7dHmZ6yq71M4mOo4bYyIzy1hsxWyUJaapzAMccy2fq6Q0Ts0RflbVIfVJ5JDPek6XrQ1RVGqw0jnrHNfhNNblaDGric7K3btITQeQvwi17ptD2kNIGOhS55+10NW7D2tM8fXFP7yFCscmEF/wlj5jJjo63CvXKKypfXfi8dSrQ+CIqAikT/K6OZHKlIjKverv51ioiZMYImY2rYSukefjtID1cGuyNtEJLbBp3YEu1e6j+g5B84AX+mwXQbf4EGnePSMUvZRCYJKjkhOBv9ve7lMEBGSmHtEPBH0+zV/MlVuNnvT5AsfPA2PhsRGGm6C/LD5jsbC0St9n+Jgbl4/lXBZ31iftwURBNzG/7YeVKA7o5UwrJjYmaiGhh1hxjsg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Q5uazTbkR806oA0cz+izpZ6Lt1njnE0x7SwS8EmKQ93hq1vDy32hvafVSRlc?=
 =?us-ascii?Q?kwrI1LzUVK30MeVJ7sBMNHA1cCw30tJVpW5qAiEFqE0qVfyS3lEZMkTBcla8?=
 =?us-ascii?Q?BIDS6WOixqv5olHqpRl4T/gR7lHaRjwxlbMC6r0QXXo0Y6eW4aeIGaFqdYMX?=
 =?us-ascii?Q?VA4ShLJzmm+EhY0dIXC4EyAwOrAePiQ5eMr04mj1MolYVIBJ4N7m9RUKchKi?=
 =?us-ascii?Q?X1luW/bUKQU5gYkFUCqfUnRTmIlASrMI6+M7J4/zzk5abvWDsFNxck0Qejkw?=
 =?us-ascii?Q?eV49ct80N2Ecx2GiO/BWZhBfAdXDZxGGyhdNeKEuMOQG8VqnN9xxnipdf9Bn?=
 =?us-ascii?Q?oo2E2f9n819doAdaLfpL31BETnTl7mJm3rIcmZRnCgO2H7HusYHiMvB64SXd?=
 =?us-ascii?Q?vgV5rOD6N7GVx8EJHK7HCDbyvPjq/mMyScHkP/oMRXLNkV9b4QUvnCr0eLyi?=
 =?us-ascii?Q?NvFRlXthREgHgwuEMfw9sVxGbRg6hJRoYA/hOKPaX1lcUa9ph6ZHsd5chlyV?=
 =?us-ascii?Q?1/kaBD+krREHNt1meP5RlK95naRuZv+l5ckestHgDC9QNYnCuP7SMJETdndi?=
 =?us-ascii?Q?AuMI0i8L/CoL2/Dt1sYlFekNMu/RO60/Fc0YVAHF+4phusb/fMSAyJhnGAwj?=
 =?us-ascii?Q?wot8Dojv9xHIXafAm/N37Ojl+fPhUyhAsBafug7ntoQxOTUQNebRxAD8oBY2?=
 =?us-ascii?Q?kFd6NmyZyLNRSukfsiWj8G38ZuyQ2iUV9KqITsGNzHDuDyijksmVJ95+nCtD?=
 =?us-ascii?Q?JzuDThPYF4UEUfgib8mgeSLmbb/JRufe5HpbBFhzIJ2SEjMqRJAWy08O0z0C?=
 =?us-ascii?Q?ovVoDFGmfD8umFtUs3R2TQ74of4AZp37pi7uvAppca835QqpmEfY3unWBdk1?=
 =?us-ascii?Q?jQN7pSuLwTQcgrUG2FlY4P2A/eTyzXjw821pY/eB3k8suxuiz3AR2BEsNYCk?=
 =?us-ascii?Q?UDSJiuLgPXfUTlCuPYjESu7NG8IZT60wQMV17qMyhkyL3Sko/NOjSVWOy3qU?=
 =?us-ascii?Q?RAVdnRSIs01iviEVVTSAinlllnQFZIxTDWG8IUC5mMKAccRv0h4q8gjkrTuJ?=
 =?us-ascii?Q?B0eF/mmppxCg5ZKFgoK4rBeWZK18eFkp9ii0jTnmLMB2567glaUt+4PKGSZi?=
 =?us-ascii?Q?dDhUhjS5MOlLRR6qZNYX7veJcrLjDIOW4Pw6EsGkdmh7A7BiKpvvayad7/iE?=
 =?us-ascii?Q?ZrrNxJmdLfCKWPkLfzDxRbmU54ZDkzwv5R7HP3FR9+p7Z4+9gS64yA37BAdA?=
 =?us-ascii?Q?/lJyPFVr6o21sXu18CvLnLhCeRLwz+XDI7UQd6WQ72fcCjiQ4l9tiyvj4ubw?=
 =?us-ascii?Q?6Vp+qOxN1w4TKkddeDalh4r8FvD2t2k/tvWVAThvS6jwnmp8NzOGPG3W2ge/?=
 =?us-ascii?Q?4xXl3Y/lVZ1abb2whJ9SeL3ZYtqbPItNHYir8NiQo/PPjLLoXUDkFG7fCpxz?=
 =?us-ascii?Q?WfmAKh0BRvC7p7VJKNrR/Fwcgxh6WlJMmG+uz5Bo4zx3R8IZ6oyk0mnYqnPo?=
 =?us-ascii?Q?2wnDiWmXE3gtAoBUPtcC7tcWk1NxUuLzdIRqp+0GfqXzlmkO8faBpivjY0Rk?=
 =?us-ascii?Q?RTuFjLBx7UvcbBr7cze/yf2W7kZmi0cmwhApNmjrqD6uzjhv4chMCOU+pWdh?=
 =?us-ascii?Q?SDzyQmNIyuDnBnqxwnFFi+bKH/M/PoO7YVDDSi0j7FOv694DI6igsH17XiMV?=
 =?us-ascii?Q?rd1O5auwCkeFPXIF3Uc0UF9cJNyg4mbI8ADUExPkRYchd31PSM3J9JSR3aUa?=
 =?us-ascii?Q?ujkNpHT31g=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc99f479-14d2-4af4-eb0c-08de7f06c552
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 00:40:19.2716 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OSBsgkj2J1XZkLPSfu/GabHxu0QQGQ9Of31xJ5IC3G7ESh9MmG5QmtnScF6eTZKrW2flvQMjlQnLsGn8bzkEyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PPF62A0C9A68
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
X-Rspamd-Queue-Id: BD112259DA5
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_GT_50(0.00)[57];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:mid,Nvidia.com:dkim]
X-Rspamd-Action: no action

This series adds support for nova-core memory management, including VRAM
allocation, PRAMIN, VMM, page table walking, and BAR 1 read/writes.
These are critical for channel management, vGPU, and all other memory
management uses of nova-core.

It is based on linux -next and all patches, along with all the dependencies
(such as buddy bindings, CList), can be found at:
git://git.kernel.org/pub/scm/linux/kernel/git/jfern/linux.git (tag: nova-mm-v9-20260310)

Change log:

Changes from v8 to v9:
- Added fixes from Zhi Wang for bitfield position changes in virtual address
  and larger BAR1 size on some platforms. Tested and working for vGPU usecase!
- Refactored gsp: boot() to return only GspStaticInfo, removing FbLayout (Alex)
- bar1_pde_base and bar2_pde_base are now accessed via GspStaticInfo directly (Alex)
- Added new patch "gsp: Expose total physical VRAM end from FB region info"
  introducing total_fb_end() to expose VRAM extent. (Alex)
- Consolidated usable VRAM and BarUser setup; removed dedicated
  "fb: Add usable_vram field to FbLayout", "mm: Use usable VRAM region for
  buddy allocator", and "mm: Add BarUser to struct Gpu and create at boot".

Changes from v7 to v8:
- Incorporated "Select GPU_BUDDY for VRAM allocation" patch from the
  dependency series (Alex).
- Significant patch reordering for better logical flow (GSP/FB patches
  moved earlier, page table patches, Vmm, Bar1, tests) (Alex).
- Replaced several 'as' usages with into_safe_cast() (Danilo, Alex).
- Updated BAR 1 test cases to include exercising the block size API (Eliot, Danilo).

Changes from v6 to v7:
- Addressed DMA fence signalling usecase per Danilo's feedback.

Pre v6:
- Simplified PRAMIN code (John Hubbard, Alex Courbot).
- Handled different MMU versions: ver2 versus ver3 (John Hubbard).
- Added BAR1 usecase so we have user of DRM Buddy / VMM (John Hubbard).
- Iterating over clist/buddy bindings.

Link to v8: https://lore.kernel.org/all/20260224225323.3312204-1-joelagnelf@nvidia.com/
Link to v7: https://lore.kernel.org/all/20260218212020.800836-1-joelagnelf@nvidia.com/

Joel Fernandes (24):
  gpu: nova-core: Select GPU_BUDDY for VRAM allocation
  gpu: nova-core: Kconfig: Sort select statements alphabetically
  gpu: nova-core: gsp: Return GspStaticInfo from boot()
  gpu: nova-core: gsp: Extract usable FB region from GSP
  gpu: nova-core: gsp: Expose total physical VRAM end from FB region
    info
  gpu: nova-core: mm: Add support to use PRAMIN windows to write to VRAM
  docs: gpu: nova-core: Document the PRAMIN aperture mechanism
  gpu: nova-core: mm: Add common memory management types
  gpu: nova-core: mm: Add TLB flush support
  gpu: nova-core: mm: Add GpuMm centralized memory manager
  gpu: nova-core: mm: Add common types for all page table formats
  gpu: nova-core: mm: Add MMU v2 page table types
  gpu: nova-core: mm: Add MMU v3 page table types
  gpu: nova-core: mm: Add unified page table entry wrapper enums
  gpu: nova-core: mm: Add page table walker for MMU v2/v3
  gpu: nova-core: mm: Add Virtual Memory Manager
  gpu: nova-core: mm: Add virtual address range tracking to VMM
  gpu: nova-core: mm: Add multi-page mapping API to VMM
  gpu: nova-core: Add BAR1 aperture type and size constant
  gpu: nova-core: mm: Add BAR1 user interface
  gpu: nova-core: mm: Add BAR1 memory management self-tests
  gpu: nova-core: mm: Add PRAMIN aperture self-tests

Zhi Wang (1):
  gpu: nova-core: Use runtime BAR1 size instead of hardcoded 256MB

 Documentation/gpu/nova/core/pramin.rst     | 125 +++++
 Documentation/gpu/nova/index.rst           |   1 +
 MAINTAINERS                                |  14 +-
 drivers/gpu/nova-core/Kconfig              |  13 +-
 drivers/gpu/nova-core/driver.rs            |   3 +
 drivers/gpu/nova-core/gpu.rs               |  90 ++-
 drivers/gpu/nova-core/gsp/boot.rs          |  12 +-
 drivers/gpu/nova-core/gsp/commands.rs      |  18 +-
 drivers/gpu/nova-core/gsp/fw/commands.rs   |  59 ++
 drivers/gpu/nova-core/mm.rs                | 235 ++++++++
 drivers/gpu/nova-core/mm/bar_user.rs       | 412 ++++++++++++++
 drivers/gpu/nova-core/mm/pagetable.rs      | 481 ++++++++++++++++
 drivers/gpu/nova-core/mm/pagetable/ver2.rs | 232 ++++++++
 drivers/gpu/nova-core/mm/pagetable/ver3.rs | 337 ++++++++++++
 drivers/gpu/nova-core/mm/pagetable/walk.rs | 218 ++++++++
 drivers/gpu/nova-core/mm/pramin.rs         | 502 +++++++++++++++++
 drivers/gpu/nova-core/mm/tlb.rs            |  90 +++
 drivers/gpu/nova-core/mm/vmm.rs            | 498 +++++++++++++++++
 drivers/gpu/nova-core/nova_core.rs         |   1 +
 drivers/gpu/nova-core/regs.rs              |  39 ++
 29 files changed, 4390 insertions(+), 10 deletions(-)
 create mode 100644 Documentation/gpu/nova/core/pramin.rst
 create mode 100644 drivers/gpu/nova-core/mm.rs
 create mode 100644 drivers/gpu/nova-core/mm/bar_user.rs
 create mode 100644 drivers/gpu/nova-core/mm/pagetable.rs
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/ver2.rs
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/ver3.rs
 create mode 100644 drivers/gpu/nova-core/mm/pagetable/walk.rs
 create mode 100644 drivers/gpu/nova-core/mm/pramin.rs
 create mode 100644 drivers/gpu/nova-core/mm/tlb.rs
 create mode 100644 drivers/gpu/nova-core/mm/vmm.rs

-- 
2.34.1

