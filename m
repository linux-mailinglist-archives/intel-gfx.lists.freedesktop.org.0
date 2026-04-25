Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MFxMskq7WlugQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Apr 2026 22:57:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE276467AD0
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Apr 2026 22:57:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A7B410E47F;
	Sat, 25 Apr 2026 20:57:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="Ua6Jupsz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL2PR02CU003.outbound.protection.outlook.com
 (mail-eastusazon11011051.outbound.protection.outlook.com [52.101.52.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DB0F10E201;
 Sat, 25 Apr 2026 20:57:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ry1gRdP7CzFYht5dY+x976cA/2ygYOu+xsZGLkieqshyWpLJvb/8TD2L46CQJ9d1JR2mxHwnRlgjO+hVKi5Dm9EGTWIY2qiRnnm5Pl1osIyajN+7AG1QppfBfSWKeUEjdS6kIoNUQgyjscL24al+tgQN3MPRcLwOL5QgennfFFhzQ6bXnpnkDPWBcj+O0CFbf7+P0I3+Dpw5ZDGPw6t1Angb2jKDJ+sONYIVx1XgAoV/CNcUhyPyjRVrw8Mnc+l4tMHehXx5jIgwa+qRdkpV7JmEkwjOKjTvBdomiUZCq67qZAo5is3uWr2afww6oPgM9xDDOYq+LBFW9mvwkzsP7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3kCDLJrzbGvosey2wmX0bNeuDHlO0iCZmi+LRb4NG0A=;
 b=plWSg/E9atNmGXRR/hRT8kRgQ5Rg/JJnXck5GA4hLcVPQ4+f7i8fUE5gDEd8OumNVfsG0soPQJdbL1mxd+7t5YAKB3aXVaH4WHmxKYiAJ4m4PXdAKp8W1dFYbXtGEI/xICxQbF+6jbbAd9/vmprqpI6yHN7HmXvxBuyME1kPzsSmm1b0McVSIBRK4d3U+pEk8zRBPcK3C4bGK4Met2cZ6m+C6g/IOCNRz0bxnfnic65vvh7MELr404o/7Blsg/ke8zFWigvrjhuwyNt2fsio34HDsjZiDlCiekfeOJYoxotiJZXLz+3/xrOknZXNzg/5tdqYvVk7hyr7eSg+vtt6jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3kCDLJrzbGvosey2wmX0bNeuDHlO0iCZmi+LRb4NG0A=;
 b=Ua6JupszyxSBwYh4VD4Vfq5SL+c+cLN6v/e2pHwzyZvHq7WDCrI4cGluZDaCzbJB+1yLgMvU2WENqyiuGWu8aVzZu0wrU7mrx4UVmcg4fmebAssJmrlAI9U7U4iBRRbzxfiOojXduXsgdBPmo2zV9cIAzkZroLj3U8SKBFM0/ukKmyXGWawQ10fTwbh9ffCA7cRZOgNK/RfXwYJOli6b05fExZnignO/3RdoP3yPdVFEEhLLi6sinHUzAITwk0tOckws3B3io9KmBlgBcmpRWT/w34IfvfWdFRioYTAwFUnk0jnHVe1jcQrbmDgYy6VL3mFyUaMqinav2Og8ytD20A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 SA1PR12MB7344.namprd12.prod.outlook.com (2603:10b6:806:2b7::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.12; Sat, 25 Apr
 2026 20:57:33 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9870.012; Sat, 25 Apr 2026
 20:57:33 +0000
Date: Sat, 25 Apr 2026 16:57:30 -0400
From: Joel Fernandes <joelagnelf@nvidia.com>
To: John Hubbard <jhubbard@nvidia.com>
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
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Helge Deller <deller@gmx.de>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>,
 Alistair Popple <apopple@nvidia.com>, Timur Tabi <ttabi@nvidia.com>,
 Edwin Peer <epeer@nvidia.com>, Alexandre Courbot <acourbot@nvidia.com>,
 Andrea Righi <arighi@nvidia.com>, Andy Ritger <aritger@nvidia.com>,
 Zhi Wang <zhiw@nvidia.com>, Balbir Singh <balbirs@nvidia.com>,
 Philipp Stanner <phasta@kernel.org>,
 Elle Rhumsaa <elle@weathered-steel.dev>, alexeyi@nvidia.com,
 Eliot Courtney <ecourtney@nvidia.com>, joel@joelfernandes.org,
 linux-doc@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org
Subject: Re: [PATCH v11 02/20] gpu: nova-core: gsp: Extract usable FB region
 from GSP
Message-ID: <20260425205730.GA4071848@joelbox2>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
 <20260415210548.3776595-2-joelagnelf@nvidia.com>
 <b0c5267d-ea77-41c5-94d4-39c651761b3c@nvidia.com>
 <20260421145521.GA51176@joelbox2>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260421145521.GA51176@joelbox2>
X-ClientProxiedBy: CYXPR03CA0071.namprd03.prod.outlook.com
 (2603:10b6:930:d1::12) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|SA1PR12MB7344:EE_
X-MS-Office365-Filtering-Correlation-Id: a937c324-4312-4e7c-c0ab-08dea30d455e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: LEWcHncFqiY/x6lFwdxWNfy1v//L5jWb/OGcMV6QkaUlkJ0AiUdmh3zJ44h815t0QI5KTCQ2BDCdy88BMg6bfllo956hzHEt4RrNzo4ijlkrID6ymD3lKezah5dLh3YKr+1FFSQ8zg9yUCjgwo1B8Ig4byVZASMEKnXo0u7/HDKbufWYaR0fUSzTWJTyfTQH5nlbjgZ/J1sRNgZZ96VuU3L+QYzQZGwJuMLZhLBI3kz8DxjTceCqh+Kxk5auLfOWj70+KQ/HMiyqGf1NZk5PKTs8SnzvF/+JMnc9I63Zs3J+5NTgzcGymrs89BUlhf6ztcobxFFO9Pl6CgF6Hrnbk5XZXzD6tMiaof+0LmIIU0itZL4Q4ERlocEtQqGsgqf27nAr/pJDur/h59JLRsiWNAitWTJD7Ftq3i9dRJpjMTFOKY6aL+JYTea1Xpf5ZzsfmNQAipzcNVLxTEenGobwvfcronWDHy7472bITdhGvfpNw5ZXvWG5rGUX8Yt/uaFJqthzjHvuSZts/LJd3QjYTZlrqgQVohI7n4SBY73IK46IYb4lQhTA91PzP2PB56n3jNWpcd7npFQaDOHoNbvoOiQNVhEY+wjl4cQ+5GWRJFLVP60pcXnqvAdko/FJtKaOIwsL5nbj3SWmcrQXFEvFuIfcY3PiZAuDpCqvM0q+f7e/TgO1l7FRwEOTJxcG+mHLZ8kBctI2aN7BrpLjLe1DbAapnabFVqkEy7bBv6QqrMg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HG9niSUZoeUnhvlzIuT5wG4HcLvUCjgUaRxRc9eks47rx3sAE6TLFvwR64MP?=
 =?us-ascii?Q?6N0UZqyuG23n5Iti5+msZCDDpR4Poknpx+Tnc+a9GS6nNMTX6R+xYQhfrvMF?=
 =?us-ascii?Q?LI3inpvw39C/VLQORyfIhReMWCJOa+rGK0rKISkwMQ92+TIWRaW/2PkSchka?=
 =?us-ascii?Q?zo8jkiCD3WX8pFXsOYv+dzc38OVKIELJRPqqTaw9D8J8PMu1KYDFYE0o2gK+?=
 =?us-ascii?Q?ykzfMSA0/fWdPCNcXo9hz148UG/xE3DIvJyYsoRHQ3NhBxJFBTHR26wnEjHr?=
 =?us-ascii?Q?qDy0t8TGPiNPxpGgE3Uss/eL8dctDegZv2INmFc59Jhih/eZXudBK+79YTg3?=
 =?us-ascii?Q?fU88zmES0Vy64IzIa7O6KoDei2e6JbGG8nGIIuf2v9dgcDxl+x129jWPWh3D?=
 =?us-ascii?Q?bBNvJ2ZURyize/fxY23XC0ft+JQ03hN81bOlRp+ODh6rnkd4hGR/PbFX7VSi?=
 =?us-ascii?Q?IEMTewin98OtBenKbJqzc/dBTu8eaDtK82Y6Bqez5h1m3RtLhtSV3NCJ1CDn?=
 =?us-ascii?Q?pxryVMnWRALVoLSm/1eJAhW2lgvpKWUM5UjTS+C7ub7+2udGQaDvoWKTqKsy?=
 =?us-ascii?Q?7r++MC05YAiX+X5YtqnMQi5rqYvRjuhYm6WCEbkv7Wjfwg5SVK6x4KvS/fLL?=
 =?us-ascii?Q?5lL/Y1VIJXsc5sCMt+VItgOjRj+XdEB7W/7rVgZUtNp1tMryF6sp2xVIeWbK?=
 =?us-ascii?Q?+l8LqBai7V2qd0f117t4Zb20ZIkAURefqzC5fTeMobNT14OZ6IGys1gATFG6?=
 =?us-ascii?Q?smBgFgnz723PevbcGEjdlNocTuESh9mPWIKThDXrK4LMwui6tn6YhgZUj1LW?=
 =?us-ascii?Q?DyUGdPX/9tj71UvfzbdqY6SdnboYnC5CQyiLCdBhJkSV2Z/gbBpfLud+zesg?=
 =?us-ascii?Q?8pRcKIIO+qc2G9nT/NVMR5Y/4yTmuuvUvRIhwmF9hDjgrQCN4Ov1rTHmaeNX?=
 =?us-ascii?Q?3EoEyw1oNo4x/4qKpRImGClSzqmob7m6Wb7LmC0gCbXDheYtzW4NYlX0lL9z?=
 =?us-ascii?Q?8oMsxYRymz86yOpFmQl6veUvxOPE3MEqF+LkfQAXssST4REOBUCzURYLKCAB?=
 =?us-ascii?Q?rjYUbTSOK/qxU2DKpha7yrtopH8byaT0y6Ag3tLa/DdGPKgk1rHjfbF5792X?=
 =?us-ascii?Q?9pV3ySp9xgYKZqv+fBEbnc7tSX4MNH+EaFNTT9hi11oL50DpJmhWruqjLjcZ?=
 =?us-ascii?Q?BWjMwo+WS31mm0heoAOo0r9y4GaMGgl5jTWJDq8YX/0TPsQFi3ONAsYL1jBB?=
 =?us-ascii?Q?FPksODKLIaI80cD43XliIHDslA3/QGkIU2ewuD2Zf7Edo2RAE/5DOmJVvNTw?=
 =?us-ascii?Q?azdT8YaD8Y3PhXhVLXdIxSMP+UcSzIfBz6M4nD2kgP4/IaIZVxpscWgL3zwP?=
 =?us-ascii?Q?XPBWDmwBDeF5j2s8XYhgsEhgpvElYWIO0FrQo2CBSxjo7HFUJYUbq1ZRVeNi?=
 =?us-ascii?Q?wIsjShXpthohppvh3ynH9IgSMRry8kM4mmu5E/p5mzwYDh4gxGHGVVx8AdzO?=
 =?us-ascii?Q?zwus31ahrOFn83ZCrQTSUE7kFuz2JOepUHOo38BAgBOpdpwxRaXSyN4BUaAU?=
 =?us-ascii?Q?T5McmAeXJcQeilq/Ly+7aquOTZGPDTG4qAoMiV45p5xZCSnuXjLzVpOz5+4y?=
 =?us-ascii?Q?cvZmnUgjFYzD8lES/lbz+YpzeLJkVt7ouBENAxlbfHB+nzkUr/cdHGVPdLll?=
 =?us-ascii?Q?I5uAkKYjdrgZNyrV3wxUUV7kNyluhl+V9nQfplHBZ2G//tXAd3E3FoDEHRrz?=
 =?us-ascii?Q?hXH4qCWL4w=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a937c324-4312-4e7c-c0ab-08dea30d455e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2026 20:57:32.9350 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c4pA7PyLeqZjPZob0FqyAjR49KJPki19p6hn3YtfcT2+UJZgtNmeIgSAs/fNRY88QK3l9njK/JqybSh7bDBZuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB7344
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
X-Rspamd-Queue-Id: EE276467AD0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	RCPT_COUNT_GT_50(0.00)[54];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

On Tue, Apr 21, 2026 at 10:55:21AM -0400, Joel Fernandes wrote:
> On Thu, Apr 16, 2026 at 04:26:48PM -0700, John Hubbard wrote:
> > On 4/15/26 2:05 PM, Joel Fernandes wrote:
> > ...
> > 
> > Apologies, I found one more minor thing, while looking at a
> > subsequent patch in this series:
> > 
> > >  impl MessageFromGsp for GetGspStaticInfoReply {
> > >      const FUNCTION: MsgFunction = MsgFunction::GetGspStaticInfo;
> > >      type Message = GspStaticConfigInfo;
> > > -    type InitError = Infallible;
> > > +    type InitError = Error;
> > >  
> > >      fn read(
> > >          msg: &Self::Message,
> > > @@ -205,6 +209,7 @@ fn read(
> > >      ) -> Result<Self, Self::InitError> {
> > >          Ok(GetGspStaticInfoReply {
> > >              gpu_name: msg.gpu_name_str(),
> > > +            usable_fb_region: msg.first_usable_fb_region().ok_or(ENODEV)?,
> > 
> > OK, failing out is correct here. But in addition, we should also
> > log this at dev_err!() level. This is rare, surprising, and actionable,
> > so perfect for that level of logging.
> 
> Sure, that works for me. Will add it in for v12.

dev_err unfortunately requires passing dev into MessageFromGsp::read()
which it doesn't today. Doing so modifies all other implementations of read()
as well, not just GspStaticInfo. For v12 I will leave it as is, but lets
discuss for future versions.

Also, note that the error does not go undetected because it will result in
the following dev_err firing anyway, perhaps its sufficient?
  dev_err!(pdev, "Failed to obtain GSP static info ({:?})\n", e)

thanks,

--
Joel Fernandes

