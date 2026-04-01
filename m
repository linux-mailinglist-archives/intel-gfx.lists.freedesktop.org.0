Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EI73D+mozWmvfgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 01:23:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99612381A55
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 01:23:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B5F810EEAD;
	Wed,  1 Apr 2026 23:23:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="Z4TAopWQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from MW6PR02CU001.outbound.protection.outlook.com
 (mail-westus2azon11012043.outbound.protection.outlook.com [52.101.48.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6CA010EEA1;
 Wed,  1 Apr 2026 23:23:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gkztkta7/Z55Q1//A7vqDCP+MNQMG6qJIFxKdCuKWqStlxUYhywQJTSCgmEIvs9Xu6ZLCtv8qBKhDXQ71215toVj8lvKpnbxDrKPX+FRl92KSmGafaCEGzlg1vvkO+1PN5vAf53UevlUiyJg9szRvg71fHQF5XLxSIaZ1gbBRdL1bqepNqXTLr4zkf40Mfa4o7g75D0w2C5znOosYGqJEr1zqO18Bslc0zqvn82amsZRPecvRHoWrrq1IDG9eGo7/5NSCCORgoJVNeRFRT0SKOk02s6WOdDDVDHhB3zV/n3cr6Ur+QJEje6Rzc6MfAxrtS0/wTq8QN8rTRKeAN8erA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lsvZ8jJ0K/QhcqQMbwAG5tkKCRMqPrZm23OhozMTBjQ=;
 b=gU3KY1EREAaE0sKB/fIxatNduOkPYgp7g+I+31LB90DLp6MUN+0y4WdOWa9/P5UzZLM8IUKniax4kg1ExTS61GnPYaUemZlk9ijeld5cR07gkrmEh/Pabc/4XV56pC6vgCG4p9pDHdyLCPU2LU8Voxbzoy/+y8xD+vlPaaB2u7TwmiXexns1w9kUNalC7WhZc+rcHl6z4EU6AzGj04YrLl9Z7ZVxSm0TFnZomiwg6Kj6AizT0Xj3Lyr6eVp1BYBxEMDXt3X2v5hDOCvnnNfAIcg5bCRjyG9kv+rEgXU1MKeaHqFaBXN3i6zLxJ70Iah5+XRF7SpUPP2Fu4kgVO0vgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lsvZ8jJ0K/QhcqQMbwAG5tkKCRMqPrZm23OhozMTBjQ=;
 b=Z4TAopWQ6+2GPxwIDiuSJZdSVQbDyXZuP6s6+vVVGF68UNsMr7myyiTvN1IE0oXtZ0SmzhHLpeXRwpaOGGBdaOGQst3QhOIzxvEstPdLIM/zfIHt8KmscOetiZvEKq/WNKTFneFF5gKiVKHSY26rP1DesPnL0kXbUaX+S0YgurHZ17q7lD+shL3qUK5mZEkm0l9F0fpXilk27eHamKM7WZ7nf+kI+5tubTQDBdXNP405myZzOplcVMDmZhwuonJt8fz7Mjs4s1/Wf+FxusR8UPQHv1ITBQfYm7o1eVYfi4ktldFE4i7+HVLnwSvQPo3g2eJ/wYOi5MVs2mjde+Tnyg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS0PR12MB6486.namprd12.prod.outlook.com (2603:10b6:8:c5::21) by
 IA0PR12MB7530.namprd12.prod.outlook.com (2603:10b6:208:440::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.18; Wed, 1 Apr 2026 23:23:11 +0000
Received: from DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33]) by DS0PR12MB6486.namprd12.prod.outlook.com
 ([fe80::88a9:f314:c95f:8b33%4]) with mapi id 15.20.9769.014; Wed, 1 Apr 2026
 23:23:11 +0000
Date: Wed, 1 Apr 2026 19:23:08 -0400
From: Joel Fernandes <joelagnelf@nvidia.com>
To: Eliot Courtney <ecourtney@nvidia.com>
Cc: linux-kernel@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>,
 =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>, Dave Airlie <airlied@redhat.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Koen Koning <koen.koning@linux.intel.com>,
 dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 rust-for-linux@vger.kernel.org, Nikola Djukic <ndjukic@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>, Alex Deucher <alexander.deucher@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
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
 intel-xe@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 dri-devel <dri-devel-bounces@lists.freedesktop.org>
Subject: Re: [PATCH v9 04/23] gpu: nova-core: gsp: Extract usable FB region
 from GSP
Message-ID: <20260401232308.GA1557837@joelbox2>
References: <20260311004008.2208806-1-joelagnelf@nvidia.com>
 <20260311004008.2208806-5-joelagnelf@nvidia.com>
 <DH1GK30TUB4V.2GR6ANXIZDFFQ@nvidia.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DH1GK30TUB4V.2GR6ANXIZDFFQ@nvidia.com>
X-ClientProxiedBy: BLAP220CA0023.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:208:32c::28) To DS0PR12MB6486.namprd12.prod.outlook.com
 (2603:10b6:8:c5::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6486:EE_|IA0PR12MB7530:EE_
X-MS-Office365-Filtering-Correlation-Id: 822913e6-b60f-4243-d9c1-08de9045a37f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: nrPBq57/6XeufFQNdR605zlBCY5MjaMDUfBcffgPyMijdsdCO/89PFlXehHMDJcTqQLrZqWcxdphzLvkQSXKE8V7O5TAu5/hFv3jlq+uIWcRZSR+TUkczRyXUxB7gsHs0nz9PfZ1ZV2N9tE3dkxHWXvf13Fjmyu80lj0/BW+bFKWD/7AiP5wV0+7aO2Sh6A2LZ82Yg2hK9E6M4WXJac/dhgG8tZ6F8QfRRkghc2003eyAxr00oXY5m/A75L5WoICD42fSBAUTOj5y9GdkAdvoAhsESWrpZtQ8As6M/FeCBJCFmJN80lr6N1Wcp5f05/xgsllDkAbfy15TjsKwra1pMdE90u9Pya2QPkW6JmEAA8tLPfZM8Rvxuds286eSsrvbH9EnaMiENmESMyMuWB68bRCUjVDqZVKtR/20CdP84V42bDslcNY6fr5BtFp1dRiOJP1G6GZWkQDouHh3CdPgyhNOnOQJyO7cbyH1TVHFdpE6D9MXQu7z//2GJuIWHWYwlyCGGx+PaViIs9t9e33SrMR+argMmDdnWE87p0FyEu2bwTvmvT3hRwY+39m0Y0BoRpPAUQLZxdavELT0ocmFr0x3IwHqxTqjg28olYUg7XiflDqMujnZwGDP6VDVMoxPbVDfnfnBZJNdm+i70PDSXOZSEZzyXfc1wFXe2k1dWve+Cxp4TcLTEy9wFfYyYUJHKFtAoo1McxovwpgzLeYYOEjPyQV/girH1PdDLzNzeo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6486.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KbaUFYUAgF1pGpR0F7/KpfuqBFQvid5OalVa97jK8OgOs7b6hVYF46GRo+G+?=
 =?us-ascii?Q?PMombIWFTdxsJrWvXE1BVRCqgsix51AP+UcPa3cgyxwjPsoyGZPANQBTu38U?=
 =?us-ascii?Q?UwDfJjd2IEXg85tC++FgE54yxzfUAt8QpfVTADX55QXEfra/N4LPvVHTO3Kg?=
 =?us-ascii?Q?9Yf+oZ21IyacCJyF1em+T7+198dpISd0wq+qkBKIvMmPcvKPgiumvk/w/87+?=
 =?us-ascii?Q?gNLqhbdKCdHOPykulPA3DUb85MGzSCADBroFAg09x82o1XymPcfb3TLM/js6?=
 =?us-ascii?Q?yzujWDBt4k8nptZWzUL7Z9qjQrQnvVI72MNVC57xOhOwIYkWXjoQpfwN89t0?=
 =?us-ascii?Q?xqwFFhn72rEyzACX5QIH9LJ1mD08T2yAunykBMH7rvVPTbHHvMw/uJ6XMtg+?=
 =?us-ascii?Q?FZIQJNd9U9CeYn2JMvZqCOK9lGCX4xQsg/VQmNbAtnPzfpR4LyISrUBReECi?=
 =?us-ascii?Q?ZGG6ZIk3+LZ7Q4bnzn+KyK1hxBJtjp5IDT+SZo2FftNfiy8TiKeI/DSydnzE?=
 =?us-ascii?Q?lt0cSaOd+tlGE8eZCxtiDKuQT4JFjUshVcjg7YUXIUdkFdblGgweujueRU+y?=
 =?us-ascii?Q?C0VFSoUCPx59yWugBPJn/LY69MUDz2kPMEnF3I7EOC3mt/Mw9xGSx0zmDWzf?=
 =?us-ascii?Q?tH7iUx/HmGqoxDPsA7elHZuno92J8KH3HHx9uLOajVsk4mrPz5NgZvkjsihC?=
 =?us-ascii?Q?MPkveG1zl9I+pztxqkqnkdswO1la2kjIXFzgxEEEKhLRtc1rKcD40cWDkA95?=
 =?us-ascii?Q?DCpIU874yOy/V7jdxmzWG8BH97TUOe1zzAgbXgD03wB6WKf8eA5JPlYxUP/w?=
 =?us-ascii?Q?t28kBvsKgSxQU9kKYks2F1nI9ljNvclIR5uGigA0NHQgbkNcSp2bvikYdvWn?=
 =?us-ascii?Q?jv2qSRTFvnQiO5n2vHjUjBotd+N9auCKuXuhvPpIxyJq7VYUUGyIC5qV2EA0?=
 =?us-ascii?Q?b9XT+KNkoDLirLu7CcH65mYJHcrVf2FYDrVlMxRPW6jz6iBlDdnrZvBnItPu?=
 =?us-ascii?Q?nxvPdIdq4g1MzmnU1+wh5vV1fDvuX7enPYfU2MmtJrzGpmexKoyvs6U4Kqfs?=
 =?us-ascii?Q?sOqmxYqKEkotV2MwNPqVBDj5D2eQRYVedwJl29IpTxTRUOg6mlH2EYP5KINR?=
 =?us-ascii?Q?Bgu5I0GwNYnuXjtwPECaN+GvHM8txfrRQkMAsJhnjjJ6B2zPtFOCFhAa0Rek?=
 =?us-ascii?Q?fkIYOZX/f25nRNDFTUQLRCnXH4ZT913Y3CXzXQ/v7YtkSmU14ceQP5mPuRld?=
 =?us-ascii?Q?dl5ofhq8NO56B0lfd0dn9N7u7BZvMn9khGzsxlXG9g9Pll1bO6VXfERIV7Q5?=
 =?us-ascii?Q?YMpd8N8K8ERflmlQdsoGm5Wg3ZMTlC8Rf2atjUM71IG171+rcjOJFbVXsSRl?=
 =?us-ascii?Q?wZYLV7BINcZWd4W4MGnyuJTWdCJfYuy0eF377orNOGJFtC4Pn65KTFy0kzxD?=
 =?us-ascii?Q?+e1oH/zunx2+hcwSOLNUYJYxvq/VER3ZNB9fmSc+iIbblxOTVjyTUWJGF2Pa?=
 =?us-ascii?Q?puZcV3eiz8l3VT6idH+oPH6S/k26a63gjhThSwjucXTU87bnUIWPXL8FZ8y7?=
 =?us-ascii?Q?2vcBSPukbwskIOWobCIkdDINR7LpY896z+8B+EWepMZbUo4OWCZb6L4f+UBB?=
 =?us-ascii?Q?Nl/vEpJ3p4B+Gb/lC6zLNiehSOYhOGwhzfmSX8rYaq8An+DZUJMPWoCHxePX?=
 =?us-ascii?Q?PzXEAEBoWxwFfRWJ9PbM1rX4XmakStRPwPJ+eUU+hwsP7opdb0wTsozBOOmJ?=
 =?us-ascii?Q?AqfluQ4qtQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 822913e6-b60f-4243-d9c1-08de9045a37f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6486.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2026 23:23:10.8817 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ty3LHj7Usr7+rrUhfg4AXl8vEsr1xChC2Eiw0zADBsi6cVJjVMIy8gDmZVbKsUKCIoFHm7d8sZ8C4XYgH/adBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB7530
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
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,redhat.com,collabora.com,linux.intel.com,lists.freedesktop.org,nvidia.com,suse.de,gmail.com,ffwll.ch,lwn.net,amd.com,intel.com,ursulin.net,gmx.de,weathered-steel.dev,joelfernandes.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[57];
	FROM_NEQ_ENVFROM(0.00)[joelagnelf@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,nvidia.com:email,Nvidia.com:dkim]
X-Rspamd-Queue-Id: 99612381A55
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 03:58:35PM +0900, Eliot Courtney wrote:
> On Wed Mar 11, 2026 at 9:39 AM JST, Joel Fernandes wrote:
> > Add first_usable_fb_region() to GspStaticConfigInfo to extract the first
> > usable FB region from GSP's fbRegionInfoParams. Usable regions are those
> > that are not reserved or protected.
> >
> > The extracted region is stored in GetGspStaticInfoReply and exposed via
> > usable_fb_region() API for use by the memory subsystem.
> >
> > Cc: Nikola Djukic <ndjukic@nvidia.com>
> > Signed-off-by: Joel Fernandes <joelagnelf@nvidia.com>
> > ---
> >  drivers/gpu/nova-core/gsp/commands.rs    | 11 ++++++--
> >  drivers/gpu/nova-core/gsp/fw/commands.rs | 32 ++++++++++++++++++++++++
> >  2 files changed, 41 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/nova-core/gsp/commands.rs b/drivers/gpu/nova-core/gsp/commands.rs
> > index 8f270eca33be..8d5780d9cace 100644
> > --- a/drivers/gpu/nova-core/gsp/commands.rs
> > +++ b/drivers/gpu/nova-core/gsp/commands.rs
> > @@ -4,6 +4,7 @@
> >      array,
> >      convert::Infallible,
> >      ffi::FromBytesUntilNulError,
> > +    ops::Range,
> >      str::Utf8Error, //
> >  };
> >  
> > @@ -186,22 +187,28 @@ fn init(&self) -> impl Init<Self::Command, Self::InitError> {
> >      }
> >  }
> >  
> > -/// The reply from the GSP to the [`GetGspInfo`] command.
> > +/// The reply from the GSP to the [`GetGspStaticInfo`] command.
> >  pub(crate) struct GetGspStaticInfoReply {
> >      gpu_name: [u8; 64],
> > +    /// Usable FB (VRAM) region for driver memory allocation.
> > +    #[expect(dead_code)]
> > +    pub(crate) usable_fb_region: Range<u64>,
> >  }
> >  
> >  impl MessageFromGsp for GetGspStaticInfoReply {
> >      const FUNCTION: MsgFunction = MsgFunction::GetGspStaticInfo;
> >      type Message = GspStaticConfigInfo;
> > -    type InitError = Infallible;
> > +    type InitError = Error;
> >  
> >      fn read(
> >          msg: &Self::Message,
> >          _sbuffer: &mut SBufferIter<array::IntoIter<&[u8], 2>>,
> >      ) -> Result<Self, Self::InitError> {
> > +        let (base, size) = msg.first_usable_fb_region().ok_or(ENODEV)?;
> > +
> >          Ok(GetGspStaticInfoReply {
> >              gpu_name: msg.gpu_name_str(),
> > +            usable_fb_region: base..base.saturating_add(size),
> 
> We already return a Result here, so why not use checked_add?:
> `base..base.checked_add(size).ok_or(EOVERFLOW)?`

Hmm, I think I was trying to play it safe and handle any situation of a
corrupted size. But granted, it may be better to error out.

> 
> >          })
> >      }
> >  }
> > diff --git a/drivers/gpu/nova-core/gsp/fw/commands.rs b/drivers/gpu/nova-core/gsp/fw/commands.rs
> > index 67f44421fcc3..cef86cab8a12 100644
> > --- a/drivers/gpu/nova-core/gsp/fw/commands.rs
> > +++ b/drivers/gpu/nova-core/gsp/fw/commands.rs
> > @@ -5,6 +5,7 @@
> >  use kernel::{device, pci};
> >  
> >  use crate::gsp::GSP_PAGE_SIZE;
> > +use crate::num::IntoSafeCast;
> >  
> >  use super::bindings;
> >  
> > @@ -115,6 +116,37 @@ impl GspStaticConfigInfo {
> >      pub(crate) fn gpu_name_str(&self) -> [u8; 64] {
> >          self.0.gpuNameString
> >      }
> > +
> > +    /// Extract the first usable FB region from GSP firmware data.
> > +    ///
> > +    /// Returns the first region suitable for driver memory allocation as a `(base, size)` tuple.
> > +    /// Usable regions are those that:
> > +    /// - Are not reserved for firmware internal use.
> > +    /// - Are not protected (hardware-enforced access restrictions).
> > +    /// - Support compression (can use GPU memory compression for bandwidth).
> > +    /// - Support ISO (isochronous memory for display requiring guaranteed bandwidth).
> 
> Are the above conditions all required (AND) or any required (OR)?
> Might be worth clarifying in the doc.

I am not sure if any clarification is needed there but I will
reword to 'Usable regions are those that satisfy all of the following:'.

> 
> > +    pub(crate) fn first_usable_fb_region(&self) -> Option<(u64, u64)> {
> > +        let fb_info = &self.0.fbRegionInfoParams;
> > +        for i in 0..fb_info.numFBRegions.into_safe_cast() {
> > +            if let Some(reg) = fb_info.fbRegion.get(i) {
> > +                // Skip malformed regions where limit < base.
> 
> Is it normal that it returns a bunch of broken regions?

Not really. The aim was to make the code robust at a time when I was studying
the FB regions. I will change the comment, and/or drop the check. Thanks for
pointing it out.

> > +                if reg.limit < reg.base {
> > +                    continue;
> > +                }
> > +
> > +                // Filter: not reserved, not protected, supports compression and ISO.
> > +                if reg.reserved == 0
> > +                    && reg.bProtected == 0
> > +                    && reg.supportCompressed != 0
> > +                    && reg.supportISO != 0
> > +                {
> > +                    let size = reg.limit - reg.base + 1;
> > +                    return Some((reg.base, size));
> 
> This is identifying a range, so how about returning Option<Range<u64>>
> instead? It gets immediately converted into a range anyway.

Sure, that works.

--
Joel Fernandes

