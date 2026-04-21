Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /PsENOmP52n69wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 16:55:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C92243C580
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 16:55:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B940A10E8CE;
	Tue, 21 Apr 2026 14:55:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="WXHwi7Hh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BL2PR02CU003.outbound.protection.outlook.com
 (mail-eastusazon11011062.outbound.protection.outlook.com [52.101.52.62])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FF8189135;
 Tue, 21 Apr 2026 14:55:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BT/4B1mpaiWr6mO/Yl4YEW5ToymEramNMI87Vy19HQUiSH9f67o3EmrC2QVKHEfWdcUggaYigZe7YNEa97SYQOOkZoopwjq/wsygIo3u80XIBq7JJuJthQqXg+yMhHzGbZYklVBb/hkf5zMGuP29eWZeAHtkM6+M0C9N4ZJNwSJkYrtJPwM+ZSBzI6ymFjl9HS3E6rWh+Hq/i1fWLXnnjS4/Vwq+f+xEyT8A2wi19h7dBfGmwcfkS9lPHqnH8kjKkNTASuz8S1euC8rQSO+VPqUxaXko7saYdOjuj0mBPUIUUVQnPvHmavujwbkTouyQzwQwkexHWk448NnuV5D95A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p183JymaxpjJcX0/clF7DkYJ+v2/MFXGwhWfTHeoMnQ=;
 b=G841LuM26Q1cwhhF5PAvWlZjAqSg20bKFteZ+WpVDrcv07xN09oIf/n5XjFomlr09E96wbNkJAXREJsK8VYlqkc5cDFXMcL2Pyuji67hJuIV8m1X8nwtYieS9Zo/Ws9FOsEiaOhBSadlTBuRhE30H4ayW3rsnWmUXQvevz9nScUpNqLMOfiNdvyOXNTj/kAqmnSjU8/Xl0TlYII3AvvXbE1DhsOUnBCjOy9wOxkMk5k9vc5rgex3QQZXFARJ77Ww5WcrX3nqjo1QFvY3K99nNSJLx/yNIreuPMYTZ2RTRE6i8GzW8q0eae5HOANDeV6TYYQp7EuxCeU7mKtxtpTuzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p183JymaxpjJcX0/clF7DkYJ+v2/MFXGwhWfTHeoMnQ=;
 b=WXHwi7Hhfp7bIEE2268jhZO5KJn9ipRPYWSHTpnTnhfTWVMUu/g0ymByrWRN28/8lkjnFW9r5sFJ2ONDCyf91dRAksNqFSgA9kdQ5ndteoPyxnVag9vG1MbBg9nqa3066P0tLQWsZXFeZ17omS4r3OLeCtl6heXfM4TM4pbjfBUvPd2E4ujwnatAG8IVoMNZV+w+nlq//p12svgy94VyctQwNPguw20vUnW7j5Ibmjomi2wcRUXwE+CuFNqkuAm+VNWSByEnOsCHxDZFG+kCC1Nwh4rgXfx7YtUEnv65pxvM2NrUFpcHrNCZP52WGHv376O6v87rdr03GukG3lu8hA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 PH7PR12MB6666.namprd12.prod.outlook.com (2603:10b6:510:1a8::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9846.16; Tue, 21 Apr 2026 14:55:23 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9846.016; Tue, 21 Apr 2026
 14:55:23 +0000
Date: Tue, 21 Apr 2026 10:55:21 -0400
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
Message-ID: <20260421145521.GA51176@joelbox2>
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
 <20260415210548.3776595-2-joelagnelf@nvidia.com>
 <b0c5267d-ea77-41c5-94d4-39c651761b3c@nvidia.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b0c5267d-ea77-41c5-94d4-39c651761b3c@nvidia.com>
X-ClientProxiedBy: MN2PR11CA0009.namprd11.prod.outlook.com
 (2603:10b6:208:23b::14) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|PH7PR12MB6666:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d561f29-e738-443f-05ff-08de9fb603be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: YF0ovLmn59BOrQrZUOpHTCqmpyYX79efgMR2lL5oDAfD8n2/mDo9nZeQoEwzvSljzRTeXFGJe11n3vqOjabI2rmVgLoybFE2uvnHCzsrsS429XWOS62hoTqvvG1xKuoHz6aW493ImYi3rd5+W+OQbYxg7H/mRpRiRN9knZEWD4TcM1YwgYqyrX7JoyBiOR9NPQRARvYYL+Y5+eyzLBKgbiDfomVDmP47eJPUwJuIB9tyDxc0KC/uBIX01VURXBGgH5QZM9bxJWOPVEnYUI0VsYRxnCwbtcDvJv6lvCKh7A4gMn6G6eYP1lhQyygQuPjXC4ryJlFEJJlsLDW4o4a0XTIY58Oe4ip9OeesPgAKv4eFW36M3fK6PEt6fgRteoGeQ/0lawo+d58N96owRXpHkTKI4k8vnhXqU2W+CLUXkaJyCFlTmkcKhcd+vh/o3nuM0TVeQ29xpVnzOUMCiORQ9EDxeV5+N3iIhizWe4EaQpMdHeK0ROLeohJV+nQBR9+gIdtg93peX6Yb6a4TZMg/1BDd7xQI5Sv9YSTyYi9K3kYPIAuXDlVMMDQdou3MChyzBkBX19TXjRdmIqc1CeJIdFymT0NIfyeD0v1mVGfAStjQa49mbRxMHz0HNFrE290w6CHaNdmqwt5Ma5tEgf/drReDDQhPni/+YnElFG3Ku3iepubzI2n/74K+SZIdLmsoDuw52lO1syuUwoARL41sAnKyOe4GisBX3rkaJ50hi4s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2Fuv9QpYY6oPoyZbXD23coDJ2zrvlwkBK68KPi7Z/45UMLSnlEZKWLZDquKk?=
 =?us-ascii?Q?N+90kbf0EsfWes07rK1izTmSbqNXGVdGDukE3cUQ1GgZmmAsCHp1X3kA0Qkf?=
 =?us-ascii?Q?pMUcQk22HTmfDcVVtpTdpNeMZ7L1i1s90DOOOtLYIdE6eiPHffBTBKmbnA/w?=
 =?us-ascii?Q?T025mPPGPw5almf9+tcQ0lzyIkAcDsUdJVbwoUFbr9oO5zdMD17S9S/AgknO?=
 =?us-ascii?Q?y2O/8kqonNoAIK9XOW4kQ3lasf5L+aJv9Xiep7SbsXTA1Krzyz6LD0UswWeM?=
 =?us-ascii?Q?piJsdvI9pnN+zUf6RxQRCS0dkRt9idiYrCsZ5+v5o6CV6kmpJckkD4XkBbrC?=
 =?us-ascii?Q?Uht8Hg9HxkVu+iSzcGBHnF0owkd46tctBUQxjH0FB4GEtqap65309skeRazj?=
 =?us-ascii?Q?CjTie79ApcpfQ6o0IXNhpE+2WbM7yvYdKgm/2AAAzgio1cD3ztC2jnT6+nAc?=
 =?us-ascii?Q?2pzLnpwzcIdaok5YrZ6YzKSW8TCEhVl5SUVhKDZ1gz3BcVPyE44WMP76lv43?=
 =?us-ascii?Q?vcKZNUN9p6lFVHduwVLLsyD2Pg4LH9DFCxOicq2n51ZCcznnSq/Cp7TSmIWI?=
 =?us-ascii?Q?jc1xeKRB8U3N3EGz/5l6aAQr2Nf1tXPXSyspFbDni87O6oW0lstlAPrDUGBm?=
 =?us-ascii?Q?/BYNVdaL9ux0i0u2FC9DABDuaG4EnEVv4KpXZBvWlaJm9pW6jM6xLb48fydg?=
 =?us-ascii?Q?/ndkKwevMZnUzS044T5ViLhQmBCtmznydNixYUwszhO8Q0fNfHMZCEqjkOi6?=
 =?us-ascii?Q?Gtq25zMBFdkvLD2Dsg6zBOomwrPAVhvhTU91v6hlpagpf1pmjHJ1a3SDnEC6?=
 =?us-ascii?Q?RTXX7JdZu/5PMUSl26hlW20bK18y3GV5+17bdZoUWVbw6eO1kXgY0F7SRN1Z?=
 =?us-ascii?Q?eIr+focKFdP/2ZB0RmCMmyF1heDOnhBQY109+mMH0Q6erMTOV5csx0vMghqG?=
 =?us-ascii?Q?47f6sA5bP51ECdvxYwkkv7EdAeZFzDNAAejKUEdJzOciNJhh38SNF0NEGwFM?=
 =?us-ascii?Q?qoNqQMnC40N5RhKpYYjJhH3W3lWoSQ1LubKTU5ZRbnecnia0utmjY6a6rVvZ?=
 =?us-ascii?Q?VxTZqtiNFX8484MDoJ3ARRY6ajcPM1BKxcbbTrjquJPCnb53AeKPc+5/1x+p?=
 =?us-ascii?Q?vwMf8YZ9gsepM7GcqV96InF5oiX6e+Nslu3YUc6EzqxuoJLpDHmHD/PmvLOD?=
 =?us-ascii?Q?KAyVB1XNsS0znLDiiFfyjs4mmuNM2UVKQnqXQePQgmnheDdA3u7oVNJ/4Gl1?=
 =?us-ascii?Q?42DOq/+qSSVfyktPYX8MOfQUkKDIyhidikDmnv6lMWT89XUVXtkfSqUtyg/8?=
 =?us-ascii?Q?mCYbWSUZp7C0cxNVSUg2hz1UVVdHr8Rop3czZ2MwpTOroNFmPJYrSxbutUOj?=
 =?us-ascii?Q?Q4naeD8SskomrHx551FdVhFXr2ytLuKkQa7DX3yerxmMGIOtVTyGoG5ZTEU7?=
 =?us-ascii?Q?zwtulsTA13rPgTFK0LYT7ksNR2zS96pEurP5QH9RmLsTCcz8pOZn7+RXncDN?=
 =?us-ascii?Q?jd7KcOwyG+qL0IRIVzIBjXqCpfPyVWM5uKVzrIFrU3vtDpkPdtY3l5Gaifuk?=
 =?us-ascii?Q?zUI/Kj/Aj/jcBfIosybLHCqZTS62j+rFevgGC+LMpqefbgj5TJMUwoRobLcg?=
 =?us-ascii?Q?u6drkfVMCSOnE8pEkdyIJvBH1deoxpgo4U5USm2mlTAq4p7gtKfqDZ9+cZYn?=
 =?us-ascii?Q?o1hbCCrItbOWo1roq5XJ4kjn1t7D0fMxAwfczf7csAlzcJZrKdYGWu2+0Frr?=
 =?us-ascii?Q?EH390tyzog=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d561f29-e738-443f-05ff-08de9fb603be
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2026 14:55:23.0900 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mJR/hGlKXCfhAwlU6r2h6H4ZV0TUEYeQ6T0WFcwlP+aJXHBh36PabnoWAhK5JiCdOXadcoLoxQqFjDUx2PlkyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6666
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
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_GT_50(0.00)[54];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 3C92243C580
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 16, 2026 at 04:26:48PM -0700, John Hubbard wrote:
> On 4/15/26 2:05 PM, Joel Fernandes wrote:
> ...
> 
> Apologies, I found one more minor thing, while looking at a
> subsequent patch in this series:
> 
> >  impl MessageFromGsp for GetGspStaticInfoReply {
> >      const FUNCTION: MsgFunction = MsgFunction::GetGspStaticInfo;
> >      type Message = GspStaticConfigInfo;
> > -    type InitError = Infallible;
> > +    type InitError = Error;
> >  
> >      fn read(
> >          msg: &Self::Message,
> > @@ -205,6 +209,7 @@ fn read(
> >      ) -> Result<Self, Self::InitError> {
> >          Ok(GetGspStaticInfoReply {
> >              gpu_name: msg.gpu_name_str(),
> > +            usable_fb_region: msg.first_usable_fb_region().ok_or(ENODEV)?,
> 
> OK, failing out is correct here. But in addition, we should also
> log this at dev_err!() level. This is rare, surprising, and actionable,
> so perfect for that level of logging.

Sure, that works for me. Will add it in for v12.

thanks,

--
Joel Fernandes

