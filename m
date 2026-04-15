Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBRpI+vz32mMawAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 22:24:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D974079BE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 22:24:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ECE410E1B9;
	Wed, 15 Apr 2026 20:24:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="oQ+FlXBZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY3PR05CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11013008.outbound.protection.outlook.com
 [40.93.201.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ABCC10E1A5;
 Wed, 15 Apr 2026 20:24:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yvKTiWxWvtN2GqpvOsMfdF9w6t6ll8MozRFfiF+9UsdQAQZIhcZgQXqFDyLvyslm+xBFgcvbT0G/6Of8Wgs1OfXL9PLxW8Ou4m9GDF8idXER0ZmudLGnPZwSXMT3BOOpU15i+DHlNSY1vhVyma6S/jX6LsRGR9k41CBR56dzqM+9q6u0k/FLSmGiJUfGLKdJu5Z8A2YmKMGS4NFfGcQWZ+kHpWs8qcfFITaW9h3bxf++Cz1Cucppzu7ncQ69oL3BUcOvMheC56ZNE/lDuh4ZDTWpYxLEkAyPI+vhgqNbRb2gcLrD98j9/s4uKnt4qwiGR3NJrDs5I4A4G/9YhsL5SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8je6p7zPaNHtFPeoTbEBQmkecXTx+FEXZTCvMp0In+E=;
 b=gK3sJS74tVWrwWPW0ZCpXLniC5lDLnCjvYARYCTErDqBmXfkC0g4kXXjCuBcLqu6LD3HKD0nc3+Z0c7K7Vo4C1lEp/5uYe54L3/EbpezsGxNfDYk/U2t3jxCQrYqpOIIYLuDqpkpiiNB7Lhd4OFdJQiFN4SkHU+cLSZBoHc84JN+xCLII/CYjLD301FYXOhkg7nCLfgM3ZWwkt29heADtGVPDDQoFlfmkeCS3gaISprPpZ/GH9YnA8xDSyL89ZlrCaDZ33bECF64cJ54ye1VQgUL37Aschne3LtxrGBGzRpaj21w+XtWqsLIa1ZkQBbJdrYRKcQCk6TNIsJwtpNy4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8je6p7zPaNHtFPeoTbEBQmkecXTx+FEXZTCvMp0In+E=;
 b=oQ+FlXBZXqyMviY1f7J6eKkvzO92rylaP9TXt3pKC9Z79iVFPjKpAw6K6QleVYW/Qz0ctNQjf7jGYa9XoLHRD0ko5wRNcedrokxyApae32m0fHmvokPh4P3f6pk93AIfUXzGH69LPeqD0lGt3TMaY2fG7TyV06aY7kAo2fXJomqUQv91EECYhfRE4hhB3ngxC8TjTj6WHoJ/Qa4R4MEL81SyC0jlZtAlcYkNeYiw6q1h0D+9tqMeuh7hgmjzT5+CCgQIXHuzrjv7btA0Yk0QeDrGWx1PussAqKBhqdJ6JEvkPGzFJ/PxCBzO/VD96X/k2u/6QcSODBlPMDzToUvcrw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 DM4PR12MB6208.namprd12.prod.outlook.com (2603:10b6:8:a5::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.20; Wed, 15 Apr 2026 20:23:48 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 20:23:48 +0000
Date: Wed, 15 Apr 2026 16:23:46 -0400
From: Joel Fernandes <joelagnelf@nvidia.com>
To: Eliot Courtney <ecourtney@nvidia.com>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
 Bjorn Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
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
 joel@joelfernandes.org, linux-doc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-fbdev@vger.kernel.org
Subject: Re: [PATCH v10 21/21] gpu: nova-core: Use runtime BAR1 size instead
 of hardcoded 256MB
Message-ID: <20260415202346.GA3214126@joelbox2>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-1-joelagnelf@nvidia.com>
 <20260331212048.2229260-22-joelagnelf@nvidia.com>
 <DHIFPXAGCWU7.300NRYPR06KDG@nvidia.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DHIFPXAGCWU7.300NRYPR06KDG@nvidia.com>
X-ClientProxiedBy: BL1P221CA0040.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:5b5::15) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|DM4PR12MB6208:EE_
X-MS-Office365-Filtering-Correlation-Id: 4672f9f8-80dc-4fe3-3425-08de9b2ce679
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: 5x9bbklJd3/twgRYQHWLqvno4KaVhdIgLQ7tfAxLSUnm2drlffx4F9g8O1LP6KYk4slAPKmddRT4obmggGbUEC0AUpPhBbIh5IUsDHq2MMpLR65ySeU5zzsi2bslr/kbN6t+kOpEhceHgUhgOznSxf+KT4y/GgYZlsMxIZVm48rYCG1pHW8ulgweXeMkX3V5BUnA9DV1gtm3y+7omolYe73QVJeoX0vsgUUr2TQcYcAH+SfosCJB1lEpBz/6kp1udOme2nKkFlXZkmhGLrzDHYS1uoXpAp5jY2O4eHFIEMw9lbn+msGm9kiIoiY6eXqkzxYZ/z4wBXeO6/PRM+SlI0yhEQbzwOdgWHXU0EuwSK31AI9qxuwbBLhhMhYiBLSzbBvwiGQVBsibgeL5jgZxDWCyJB+Lx1P98Rq4K3QTayxmEm67Ry/sZMea/L7nmdDIHRw9SAcKY5jDEkYsUtRwjn7GlNI4XbXO/rceSta4ntSd6QwsP7NEcK1FslKasC1eYfxcjNph/J3h82C7T1rZOqqm7haiA79E5sgBhajbNtxCwQ6lXiVzLt6gHfuPwZr8IbbpjdnPxa4GTbmBExIP3JX3PlsdEPRgZkZO8tC2e2kJ5x2e1yU8wmphv3kmFmPpXWizCAEKKlDw0F9ZtorCQ3tpNeY8VXtnrKbVIfKK2o+dnfmZeZY8X5scKFNeYuRZiIsPtYcJ9+tymPpnhRp5ukDmgr5iKWeUHnyyguSbKIM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DGLHDFlai46ojyuPllX5t2fDV1PdomIa5+XWMMl1LVd1lmfSK+pr7jQmK0H3?=
 =?us-ascii?Q?UMzvlYwDfobc7TaE3EqAEyUvoTc8erXThdCuPMlDpuCeyLU+gWHRAqnzjATT?=
 =?us-ascii?Q?/eBvtspmlCn6iVSFzgpQ7+B4bxrnSN1nziH5RvwokY/bwJ/So6GGwLrg/xOD?=
 =?us-ascii?Q?AQYyap0yQkdmkSjS7zkCaEgnfwc3GioLE39pnw3gM2juX2c/YZ1WTMrkQN3l?=
 =?us-ascii?Q?Gnqg8Ok+Gss7U8wVWBq8e3Zo6/IphzJA64KFYJxdLermSzxanUhn2FLDo9D5?=
 =?us-ascii?Q?SmlMmgR6Z3zW45Qf934/4xhiIN+oQtu/bw2kLSYhT/dBVf4Oaxb6cL8+gYoA?=
 =?us-ascii?Q?GrQ8yExvwo2UDWppt1Odf7zBfWtBZj6OFFihBNZT1SE9PFp23PDFvKgP6Csz?=
 =?us-ascii?Q?weXoj8WHSWDqNHH/b5Y76Jyah5jxn+rbHqbEI3wyd6XngJ5rNKN435x3HJe1?=
 =?us-ascii?Q?T9IvnJppg+8GtyQMKc+NC1fSPqQGy8hYJ+XJs3kq8/z5e0r+PEXlK3kCn4NZ?=
 =?us-ascii?Q?OtFAgLZBV1iOe92a5Yvd93c9RKQo+NeO4b2DY/Clynr6qFfdjc5Jpc6/aXTq?=
 =?us-ascii?Q?qh02sIEOd6XoWXnB6/f47lzVZGjZ2t7og+rrsHbW2/xJPsI8oVFuhlg7YpvV?=
 =?us-ascii?Q?WaOjGEw86bcfUSX8d7t34AqSzlbaFDrtTro/0USTW3iEAq8V+aUEOmqYwAm+?=
 =?us-ascii?Q?1lbQf2CKmgOj2kTozXkBJA5neNkPnlsj6VFBD1JZ+AXrX5KoR14MLZu5KZft?=
 =?us-ascii?Q?tosifDOSCay0hSsCkkXktrLWp9acbpb9HgFFL52hZc3KKDqo4b7Q+9X3UGTR?=
 =?us-ascii?Q?HbQSw0QXbIvwxqZsu+YbmfrEhEOMXDAD1q0owdKVnvonzmQ1vlj7wAczg+7J?=
 =?us-ascii?Q?IzMsRgcC1v8Ozt7GyHCwC5AnWVFRUFcNrz5HXPCVbxIAtcFflPYLddttKQJ0?=
 =?us-ascii?Q?7RtcQ2CaBUREOldAT1ysz5xjqSkn2YtpTyo6aoFAGmy9uEd9wRkMcrEdKakx?=
 =?us-ascii?Q?xLcqOpExom80d51wk82GVSe/yA6fzFpv6G+c7pI4eHh/QsgVT3pWCYsdRuXq?=
 =?us-ascii?Q?DujE6++hZPdEeiSoALLv32WKaM/lym6NeLe6Gdy2XlilyPReg1vgsTQgTHmm?=
 =?us-ascii?Q?T1inCzAoWIgpr/mnAtZfzxqWLEGHU+8klQISFLD++OSDAC+uboq/Tmdg1n+O?=
 =?us-ascii?Q?UIuBJYhQ7a1AITAkHa5xvTPHWALi0jb4mxoVkxIXuxwHDQvBkBW5gBR0zz8x?=
 =?us-ascii?Q?n9vhrojvzZbqxLLOKRN2m2m3wskDNfay6jz+ttg0bUn7LYnI/qqIOx/PwnBG?=
 =?us-ascii?Q?UhqUrd0yIGgoeRGG3LuOhT5vZWaCjDCqAyto0rWpiwV8q5Tz0GpbNTEea2kB?=
 =?us-ascii?Q?CmFT+k6oJ7PBuFqGNfNzc5/qY0451GkSTQurcQBXMWjG/wldAtP9Y1beQzGj?=
 =?us-ascii?Q?R+HL3w1/UW8PbIEMhNdpJdU/X6CqSpYdXLWBsWN4sEUeYF26JFVP0bosIITj?=
 =?us-ascii?Q?MWbD2bf+sMI9lfJtspBNrGj0+HdAD5Td1C59eY8s6ZVGsy/90Xt0mKiq96HG?=
 =?us-ascii?Q?tMfs9VTpoEEayXT8+Trr1WyBjFprERAj3XcvphPeRz73dogJv3QjOlhdmaU3?=
 =?us-ascii?Q?TB9Sm0sLeAzOcozhzsq/pfAUX4VLibM/n7tmbb5tDfsua/NlI/sYmSY/R4Pj?=
 =?us-ascii?Q?2uudgbwhHQ/dZcpmvA/PsF04olbuMm3ZNuGsKfxVDyYvZAtwDs7MOkmgIh/D?=
 =?us-ascii?Q?7gM9PkGXjg=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4672f9f8-80dc-4fe3-3425-08de9b2ce679
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 20:23:48.2578 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aaQ4m31TNf2AF3fHUzDDH83kVF+PFqHxyd1MQ0jH+pmYPaIlzusOBeYm5x3X5cn8uao5shPFFe4lLZcps7eXiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6208
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[55];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 24D974079BE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 02, 2026 at 02:54:30PM +0900, Eliot Courtney wrote:
> On Wed Apr 1, 2026 at 6:20 AM JST, Joel Fernandes wrote:
> > From: Zhi Wang <zhiw@nvidia.com>
> >
> > Remove the hardcoded BAR1_SIZE = SZ_256M constant. On GPUs like L40 the
> > BAR1 aperture is larger than 256MB; using a hardcoded size prevents large
> > BAR1 from working and mapping it would fail.
> >
> > Signed-off-by: Zhi Wang <zhiw@nvidia.com>
> > Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> > ---
> >  drivers/gpu/nova-core/driver.rs | 8 ++------
> >  drivers/gpu/nova-core/gpu.rs    | 7 +------
> >  2 files changed, 3 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/gpu/nova-core/driver.rs b/drivers/gpu/nova-core/driver.rs
> > index b1aafaff0cee..6f95f8672158 100644
> > --- a/drivers/gpu/nova-core/driver.rs
> > +++ b/drivers/gpu/nova-core/driver.rs
> > @@ -13,10 +13,7 @@
> >          Vendor, //
> >      },
> >      prelude::*,
> > -    sizes::{
> > -        SZ_16M,
> > -        SZ_256M, //
> > -    },
> > +    sizes::SZ_16M,
> >      sync::{
> >          atomic::{
> >              Atomic,
> > @@ -40,7 +37,6 @@ pub(crate) struct NovaCore {
> >  }
> >  
> >  const BAR0_SIZE: usize = SZ_16M;
> > -pub(crate) const BAR1_SIZE: usize = SZ_256M;
> >  
> >  // For now we only support Ampere which can use up to 47-bit DMA addresses.
> >  //
> > @@ -51,7 +47,7 @@ pub(crate) struct NovaCore {
> >  const GPU_DMA_BITS: u32 = 47;
> >  
> >  pub(crate) type Bar0 = pci::Bar<BAR0_SIZE>;
> > -pub(crate) type Bar1 = pci::Bar<BAR1_SIZE>;
> > +pub(crate) type Bar1 = pci::Bar;
> >  
> >  kernel::pci_device_table!(
> >      PCI_TABLE,
> > diff --git a/drivers/gpu/nova-core/gpu.rs b/drivers/gpu/nova-core/gpu.rs
> > index 8206ec015b26..ba6f1f6f0485 100644
> > --- a/drivers/gpu/nova-core/gpu.rs
> > +++ b/drivers/gpu/nova-core/gpu.rs
> > @@ -353,16 +353,11 @@ pub(crate) fn run_selftests(
> >  
> >      #[cfg(CONFIG_NOVA_MM_SELFTESTS)]
> >      fn run_mm_selftests(self: Pin<&mut Self>, pdev: &pci::Device<device::Bound>) -> Result {
> > -        use crate::driver::BAR1_SIZE;
> > -
> >          // PRAMIN aperture self-tests.
> >          crate::mm::pramin::run_self_test(pdev.as_ref(), self.mm.pramin(), self.spec.chipset)?;
> >  
> >          // BAR1 self-tests.
> > -        let bar1 = Arc::pin_init(
> > -            pdev.iomap_region_sized::<BAR1_SIZE>(1, c"nova-core/bar1"),
> > -            GFP_KERNEL,
> > -        )?;
> > +        let bar1 = Arc::pin_init(pdev.iomap_region(1, c"nova-core/bar1"), GFP_KERNEL)?;
> >          let bar1_access = bar1.access(pdev.as_ref())?;
> >  
> >          crate::mm::bar_user::run_self_test(
> 
> Can we move this directly after patch 17 which adds the fixed bar1? Or
> alternatively fold it in while preserving Zhi's attribution (I am not
> sure what the conventional method for this is).

Generally, squashing and attribution works. I will do that with attribution.
(Zhi did tell me he would be Ok with that as well in this instance).

thanks,

--
Joel Fernandes


