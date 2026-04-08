Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IE1/GM2m1ml9GwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 21:04:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD63E3C2577
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 21:04:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10E9110E6CE;
	Wed,  8 Apr 2026 19:04:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="bo9zwBmH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com
 (mail-southcentralusazon11011019.outbound.protection.outlook.com
 [40.93.194.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B59E10E6CE;
 Wed,  8 Apr 2026 19:04:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rHROLuFnUazKifYmh7jfIetKhlRH+8HSQV52522A2c5y1DsjeMaoMzimlLl62VzV7kOIij74e/t0VFE77W39aFUEuAP8vcKuM2bE21UD4WEsPZSl47j6B50D5wrMDcGcuZRVfR+RSfU7OvvntzwQNxNlFFXrACXcDvcnD1zuyYIuzDqAPNdW9Lv/1JIBQveE6wdadj/xEz2jj0976S9CNGaVXbbAI+0NV0DDg8SrgH4LC0BIdpVoaaGdjt8dy/lH6tiDQHlHqdTMg6FtJwzjc9KtBshIFOSu4ZMpQtL7FZNSXgGWgbFgi+0RSe5QWfzgky5AGkVy7h4W/aypjpF5gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w/GT4yaCfl2Dh/5c97v9Vy/PdrGo/ioHpk2vPX9UE6A=;
 b=nIVQQGBw0hPROPy93YHNw0zSc1mgdLVnwXCbcMaG+pc1qbJqbybHsrvCpKf32p+OvzNSzftaBfUT8l0rrHH5b4gvcg0h+OVOg7/cKnN4fONQRJS2Df4EQRk5PNNeVd7cr202Yqmkkev32ERXkCQqujG2n29p4Ti8KGuOWv13MQT67WOa5L+4P3jHJ/1kO2sKm+X6zkFBFjVwFZc4ME5WzPrLmyPG1SjofhuqVLVM13KeYkAgXnkx7+b4X1ObvZTBVLjSHjYLVqWWjV57nH9+9ntjhuDjlOs6vELmoU0q4SWlNEE0dTS5M/A/2kCEFFh0J69b3KGYDc8ZXwAwZXdV3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w/GT4yaCfl2Dh/5c97v9Vy/PdrGo/ioHpk2vPX9UE6A=;
 b=bo9zwBmHRBnafjDSWMCM19FHMzMURWvYoDZN2kHpOqj0j0Re5oNBzbCSoCD1G/yJHn0zovm9Z3wYKhH7d7AF3yOpQpgCgHe37GW1NNrEzpGK3P2er22czLBAi7AlwQ0GLWBo4bBlEkWtuMIL9BXnmUYRzWEm+uQzG61QrN7TpBW2eRbGVOgLP3t4eKs1uk5E6PsIADs4h8u3g2BLhfdo7HrMqqztIJnd695aQG09JSVU0tJP0rpZLl4OAb1u1wgAJi3LGAUzK73J17lbzJu7lO59gfqffRsX6wfXaBOOx95sTxFy3hVDSr5GyhxYazJEo4kd0RmO33HMxmx/twaUQA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 IA4PR12MB9786.namprd12.prod.outlook.com (2603:10b6:208:5d3::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Wed, 8 Apr
 2026 19:04:38 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Wed, 8 Apr 2026
 19:04:38 +0000
Date: Wed, 8 Apr 2026 15:04:33 -0400
From: Joel Fernandes <joelagnelf@nvidia.com>
To: Danilo Krummrich <dakr@kernel.org>
Cc: Eliot Courtney <ecourtney@nvidia.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Gary Guo <gary@garyguo.net>, Bjorn Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>,
 dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org,
 Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, Alex Deucher <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Vivi Rodrigo <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Rui Huang <ray.huang@amd.com>,
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
 joel@joelfernandes.org, linux-doc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-fbdev@vger.kernel.org
Subject: Re: [PATCH v10 12/21] gpu: nova-core: mm: Add unified page table
 entry wrapper enums
Message-ID: <1775674889.3507.3490@nvidia.com>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <da8d03f8-0294-417b-b684-2c20d577f94a@nvidia.com>
 <DHNYXGAVLNVM.3TV1VDZ9YXA9U@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DHNYXGAVLNVM.3TV1VDZ9YXA9U@kernel.org>
X-ClientProxiedBy: CY5PR10CA0027.namprd10.prod.outlook.com
 (2603:10b6:930:1c::26) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|IA4PR12MB9786:EE_
X-MS-Office365-Filtering-Correlation-Id: 01239df5-b28c-4959-cab1-08de95a1ae75
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: pTOqwSSNf14MDm2BZfGRRsK21qahgD2icJN2UKt1+oJs+mEzlHc1nMSPUTgw777yDZBe1g/ixVt4UNvQU+qa3twt3Cipv7bwy+RQXjAGPAkb9sVI4osC+DVzfQay6BHuS7jfP6Osv0z7jjuX/ZwPK3HVMbtnpT8xz1tFuRsTXh66RGUiaJkhDEC5YJ5zmWTgrWrWtX+Irr+MxThHBAQNf4eNa5tMbKSWBTLYOl8KOjqRTQNTKl/h8Sbogcm3Bsrz9VFYJclYxAaC6QTxWyF9DZTYt98SNTxlK7wTsTqyJ2JbawjTWCEku4vsJDlVr0Xr+8+Gs3ulWCV1CVKWtLH1NM6x2n4QUnda8np0DYPIvNFSzs7gMwh2rsj56HVpLWCRpzt5y1+fuuVDXFzctTO+XPySjz2D8KH8IlBSmNIb9QPTm/mX9D8Wb3CcoacfFDfqSTwfl/ynKqxkhzISPzrMBiC+rLWJxpAEpBWk9I8p3qUglKQxuNyYc030vJ3CLQONOHVuf3GBp3OUMrGWIqoZNGWs4kL8/w1DEw8TVF1rFXYxjYHpjt9IyRO4ihBSxP/ulinjWHQMLJwybL97GS/g8FMvC6+KSFAoXzZZFMZr/KnSdDJTPj8UZ0HDqxZfJk1fQv6/3lariGJbHB52pXuKI2TMl5ss5z9FX70ELX9KmlhOgy8C1J7xyt//JtmOnqs0B4mMuAEtvnm/aevceR6i5QIGDkHIeclu3e+o/+o79G8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RXpOOElidG9uSURZaWttMDFvMzlEVWx2YTZnaHZPK2toenF5TlFiMXh5dzN0?=
 =?utf-8?B?UUtUd0JTOVlQZzlQNEtUb05mTkZFUUhJV3VFSHZSVDhCaUJQU29sZHZFYWxG?=
 =?utf-8?B?dUx5N2QvNjJHamphRzJwME11QVJnRU5nZlltMTFoSGlQWXZ5U0NXcVM3cHdn?=
 =?utf-8?B?a0xHampTZWplUERTWTlvbXdSWmRTTzlDcmdHNGVLZXFNRDRPZW4ycWtoU1gy?=
 =?utf-8?B?Qzg2WnhiLzBoV1lxbXNrditXWVdNRnJaazcrc0VrTDEyU2QxMStLT1Q3VTVC?=
 =?utf-8?B?MTVCcU52VVVoSDdaVVE2bnY5YTZUYU9DT2hTYXR4ZjlCSXZHSTRvMFp5ZHIx?=
 =?utf-8?B?S2hQbkRMak1VOGVIelpBN3ZvdDR3a0poTkZEK0c0aEFOT283UTlLS1lsdUkx?=
 =?utf-8?B?SCtvSTVBNmRDams2aVRhTUxyRmJWc3c5RTBCcnlUcCsyUDdoUENTT0JPRGtp?=
 =?utf-8?B?ekwwUFdpRHNjMzhmbmpaTFl2THh4bm9EaHQ3Ni95YXF0Vjl1aldlclZDTHd0?=
 =?utf-8?B?bnVRSWg0R1RJRk85WTRjVlhtUUU3cjJ5QjBiWDdYTUtiTkdLcEtLWXJIOTl0?=
 =?utf-8?B?cDU4Y2pjR1dhUW11ZHdrdFNzZFRjdjJUTjU5c00rZUc3dFhPbmViV3RJZkIw?=
 =?utf-8?B?QnlaYkdWSFZVYTFVdjRnNy90T0RZbTdEZ1ZDZ1ByWVZZK0x6TnowQmt5RDho?=
 =?utf-8?B?cko1VEsyY2ZUZllPcVZXbkNyU3FwRFVIRWh4YThmSWc5d2xFRlZOYnkvMXZs?=
 =?utf-8?B?RlpvZDBRUytWZkpzcjR0NEpaQjlJak9mYUlHNnhxY2JkdTU5bkNHYkJ3dnVM?=
 =?utf-8?B?SjJQdWNKT1hncDBwUUhLdG42WFJFUWQ3RlkwUlhKVkg5amx5dGhXcHRRb2Vq?=
 =?utf-8?B?RG5lOHRTTm1lNDFLNVlHUFdBSmpZYUhlNUdaYld1Um9la0VqSVFjWWc2MW84?=
 =?utf-8?B?R1owWnVYaFNHcEJKTStBOUs5NE5ORnV4MldZbUZVV3NSUDUxZm5NVW90Lyt0?=
 =?utf-8?B?WnJ0eDIvMGJyeTlYSFZKL0RnSk1zT3B2cld4Nm9HNUlwSk5qQlB6VmpwUktw?=
 =?utf-8?B?UFVMaHY3VjF2SkhVNUJwM1dRQnQzWlg0b3llNGxxM0U0bkp1OVZPL2UwWWw4?=
 =?utf-8?B?cGRlTWdsZFVudFFZZWZheGxxY1VqTzdmdTlyb3lmOHZxcVY3dXJOSDBRZ3BX?=
 =?utf-8?B?R25WUzVHQUhuN1E4UkkxZTB6ZU0vRHA2bU1KbWxVbjBSaEFzR3l6MGZqanhx?=
 =?utf-8?B?eTNRSXFxb3Y3WE9KSFJkUlFCOFQzMVJ1THpnTTRVajIwVkNhcmxVR1VqUjlJ?=
 =?utf-8?B?ZG5pbndVMmtiendyb202ek51RWc4UzZHQ3NXd2p6VXkyUFJVTklGOHZKTzJK?=
 =?utf-8?B?TzZGZXRhWlVhVjZteDBkVUp0Q1lmMm9oZFVTZHdrQnRWTU1yQjNWdGg1bUNu?=
 =?utf-8?B?SUdBV0swSHZyTTRCNmExdFQ5NktSLytXYVo3WU05QjNJd1N3cDYzMC8rLzZa?=
 =?utf-8?B?OGNIZDlBWXhJQXE4am54UmhHZjdydFlRazVMOE1VRjQ5NGxpRFNlVGo0dXNS?=
 =?utf-8?B?L3ljZURSa05XdjM1NUtKazc1VDF0Zi9OUXREVDNXUGlvYitqcE1kMGc0TVNZ?=
 =?utf-8?B?ZkJBTU1XenJMZXpGL2dweFRFQkZDYWdKV3lPcVppYVUyYUFudzMxSzBBVlBJ?=
 =?utf-8?B?SmRiMFZxOGlpUGtMUmRuUHVUNlAzcWRPZDBQVE5qNHNDWlhqczdBa2FFWXlG?=
 =?utf-8?B?VGllTUk5bWk0aFFhTm9HeXJBV05URkhYSFhrS0dPSUI3d0dwQWg2RHRQQTVB?=
 =?utf-8?B?VUhValZLSmFaRjduY0ZWK3lpNmJzbDZEekQrMXUvTGRBanIyajczckhLdlIw?=
 =?utf-8?B?ZkNaMm84NHJiSkZKMittVzBNd2Vmc3dXTE5UV3g3TnR6ZzIxazFNd0pVOTFZ?=
 =?utf-8?B?L3ZGRm5rNFd0N05PdTNrcW01Wm1ncS9tZGw4bWtRTWJwbW16ZVNSYnJBMkJ5?=
 =?utf-8?B?NmpzVHF0OGwyaVJoc0hxbnZyblczUWJUNkM0em5uU0tBYWRWTmpVcmNtUERi?=
 =?utf-8?B?aHN1QjkzUGxNUnI0Mm5HR3NLbmtEWldVMTBSZUh1am9peE5OSk5mVXExZHBh?=
 =?utf-8?B?b3o0ODc1OFNsQlFqdHZUSWc1V1YwK0hvSnNRWHY5RTdJTEpZTnFwRVlHMWxx?=
 =?utf-8?B?QS8zT0phTGc5NzJqN2tOZW94R29iWTdpa2hkZTJkelkzQldBdXhNdEwwZlBw?=
 =?utf-8?B?MTNyL2tmaEJ4Wkd6OW1wcFI5Nk1ITzZ0VWpDY0psTGR6WUg4M2EyVUhGUnpi?=
 =?utf-8?B?Uk14N0gxblIyRDdXSjVvclFzbWZKV0Y3UVJtakJNaUd2SkREbnhkdz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01239df5-b28c-4959-cab1-08de95a1ae75
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 19:04:38.4859 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nXqYRzOCaWYyczP1/ge994bNuaJID0ZUxz9OZ6nVfRKKc1hpwUkg487xJeV/08XuOTNfsRTPMHGPnNITBKtd5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR12MB9786
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
	FREEMAIL_CC(0.00)[nvidia.com,vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,nvidia.com:mid,Nvidia.com:dkim]
X-Rspamd-Queue-Id: BD63E3C2577
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 08, 2026 at 08:01:01PM +0200, Danilo Krummrich <dakr@kernel.org> wrote:
> On Wed Apr 8, 2026 at 6:58 PM CEST, Joel Fernandes wrote:
>> So you're making the code much much worse than before actually. We don't
>> new traits and types pointlessly.
>
> I had a look at both approaches and yes, the traits can be considered
> boilerplate. But, they are not complex and they just list method signatures that
> each version's types already implement functionality wise and they get us rid of
> a lot of dispatch sites. The implementation turns out cleaner as there is less
> parameter threading throughout call chains, etc. Overall, it seems more
> scalable.
>
> On the other hand, there are indeed more abstractions and type indirections to
> understand in Eliot's code. I.e. there are advantages and disadvantages to both
> approaches.
>
> That said, please engage with Eliot's proposal, it is not as off as your reply
> implies and dismissing it right away is not what I'd like to see in this
> situation.

No one is “dismissing it right away”. If you read all the threads, you will see
that I already came up with the same approach and have spent time coding
it up myself to learn its potential advantages and drawbacks. :-) I would never
dismiss anyone’s suggestion just for the sake of it, without evaluating. Hence
most of my morning went in collecting data with both approaches (more on that in
another upcoming reply).

Also yes of course we have to look at all the pros and cons and carefully make a
choice collectively, there are tradeoffs in both approaches.

thanks,

--
Joel Fernandes
