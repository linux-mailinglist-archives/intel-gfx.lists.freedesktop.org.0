Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Nt3CfEan2kzZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 16:53:21 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA1019A063
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 16:53:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61B9310E1D1;
	Wed, 25 Feb 2026 15:53:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S5+WPQ4e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A3F110E1D1;
 Wed, 25 Feb 2026 15:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772034798; x=1803570798;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=uN70uk5oZDOcVZUR+JHrrgs8xSaemnlpcSu4uroiNsc=;
 b=S5+WPQ4edXeFAboJStJHamV1XR9YtseXKeUFgS3Vuk1A16BVLxt0K5wP
 nLxIp0fPLI09kfpFiXW9Sa0dgC3xjfqI9oTGnqk7kloeB1B/MLYixhviI
 ZorKaGYVPOmG3DvQpzjek/MwBTjoc6OpDdjJYb38SsFhGUORF2kc4t5gh
 wTXrh7Of1w1aHqNSSY3Tq6uInCgJcTFEVSj4MRw6IKWCw6t+YENKF502+
 hwZVes9vVM2ni5Jal8DIA81H/7RszZxqDnOXWWnAUPZDhE+poVaPKWsS2
 VHhpANF5SaUdoEMooStzOeyzmJ+yny6Gd6ftFQOQEHbpB6XIsgftYSJ4o Q==;
X-CSE-ConnectionGUID: yw90X4f8Sm661YMdDIiBZg==
X-CSE-MsgGUID: G9UN3uaIQsy2eP3uGmrH9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="76685034"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="76685034"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 07:53:18 -0800
X-CSE-ConnectionGUID: 0BoD+jZ6TQq0rO/vxLHaVQ==
X-CSE-MsgGUID: lCsDViA7SWOsXp0wW51BVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="214371578"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 07:53:17 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 07:53:16 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 07:53:16 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.48) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 07:53:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qpVlucBUqNbw3QUUA5wtj3Pxel14jcCoiLvsMysXelx9rlupkc9QZsYEx5q89xWoPe3lzr4CRKmmSojJc/Z5vQ6vqAK0XEaRMeXsNFEnl/pq/Td9IcJwAzTS2AQoSstDTohh31R6HueM5g5cwsEq37U2iLsOQ97gsLJ/kMpyjTQEutg6CcFR7ilb6pWsi7f3voVQJB2jk2LVo25pVLV5/HNNkCNmJnk2zc3RXRhxyHkovSIascvZra1jtCqcJ+jeGE7sgQM7bAiLcxkCp4VsxIhy8/xnYytdfZTMu5m5143oWIQdvOZAVVLYtAJxeHAPiovi6/UJdJQDDyCl23Q8XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mh+mBG3Pt5xhi47SHmt8Jsv9b+AAw4y6++Bave9xeTE=;
 b=NpFnpW51xWPvYtNr7k64gxZyNjBrTKjyhiACfplvYsv8JNBxiLhQP9ZCyLiLnQ6tROz39KSCJGcI96GjCIl0+TbMLYZGK4an4Fbn3YQySmmPv7dnR0iq8Ui1aI+IY614Qv4HwyYZ9ixb9fxg1LWVNKoUlQlYVZ+oHlpDTUCizaMWFT5m9EttKLmM39g4Geqk2QYQ8J3oKcdKP3559Scot0e6hcxnFZkxP84sGdc7ge/1qAqcowaYR7AQLmOt0EFeCVVnjOYRIXvI/NgiSWh3MTJFQmJ29eUd6yFxL7PAS8eqFI8rd4yjSrKjSc7lp7MqNLcp2Cbz8NYuBrNV3qyuVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB7711.namprd11.prod.outlook.com (2603:10b6:510:291::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.17; Wed, 25 Feb
 2026 15:53:13 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 15:53:13 +0000
Date: Wed, 25 Feb 2026 17:53:05 +0200
From: Imre Deak <imre.deak@intel.com>
To: <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?= =?utf-8?Q?lure?= for
 drm/i915/dp_tunnel: Preparation for UHBR DP tunnels
Message-ID: <aZ8a4UGEsUGpoPiC@ideak-desk.lan>
References: <20260219182823.926702-1-imre.deak@intel.com>
 <177154955056.267888.13314629353167953994@a3b018990fe9>
 <aZ8DXCI2CA0KkWUM@ideak-desk.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aZ8DXCI2CA0KkWUM@ideak-desk.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3P280CA0068.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:a::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB7711:EE_
X-MS-Office365-Filtering-Correlation-Id: cd959bbe-4915-4b1c-bc31-08de7485fbb7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: IPFOHCVTqsS0dfHfeNdI5/Xs+OgA0IR1SdBXS5FPHIB2r91AC3ZGbIju4deMM+0zHQWVh2A+gjmNRmD3tBjIC8sLxOt240WKTltlE73SwutGHNYeRucosL4eXMgmESe4ZTnsCmoZqoEgNNpQcBnXyFUnzlzOljnriS7w3xu9+aXVk1aa9FvpFwWN7zzXRGOqPcAmE3bOWWePGw8bdSyiyBUi2eD7PXuG8zRgU+qiOtBMwBFmld5wStlCvihs+hPzUXWRA6LiPlNaCszNGPTS8VivvgRpQ4L8VL89vlNGeSco8ojGXCOgxAY1YrHrwwVdtlwuFJPYi7jz9s5PyblZk5cHV8DJu3XYkz/vrqK3hyl65H3lImtD1wK386xUb37b29s43QLhP2VrzYSpxU8b/rGOwZJeGL5YNjCxbNYWK9Pw07JeSwCwynavCK0bIHsId1dcm1Qp4lRDVaHp/C9I5dvrg1OT3CdOqZLIQlLxF/ufheXKqwsqi6vYbncAm1iEjmNsOIvoGDTsPg6hUQ4TVsNvEk9zbXb2OMkRgCOXFiwwcMB18XM0FNzevlAdJw3BT/44TiFFWeByirwnCK0+jVT65dpNm8+WuQ+TMRPbG0lGRE947gaq7JCxhYwuVLD4ebKIbH9cD2F0msHiwxm7xwAYb2PF2mh8fymERSE0cLzWErWdofD+aj19xLrrV7bo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KuM69Pg3O6fLlDXGzW9LNMPuDJrRCA4DVt/GrqnLjUcPVWa+ArcMfryvFqw1?=
 =?us-ascii?Q?01v3xdLaPq0nMFASXfBSfmjCLNcF6h38kMZgVv1hjZtLVFP6Ftaf0XtHxOJT?=
 =?us-ascii?Q?pNuAIDSS2i+kSOYMj53Dr7BaBJb2H5xpCpDFiqNJe/PUqR0A2g4j5N8y5xua?=
 =?us-ascii?Q?Ot9ldDYXZI1qFJUE7ZEOaiBeanK5VSEc10XamFd1rQAuZKtkMsaS2C2X+dpX?=
 =?us-ascii?Q?QTeL7wb7Hwpg2FZcqhjiP6R4BjxdmizTAlHsN6a52j9OPodu8HUxIYStSW8+?=
 =?us-ascii?Q?Plhl2Cmbwo59G04pwQ4/O6BBxhhHjaPv9q0A7Fe3WgzBQLC+lQajgC1cFL0R?=
 =?us-ascii?Q?eYai0pe2rM0Hlo3c5LfNJZQVeL9F9h8EE9bXCAK9nmzPqAf1rYQga72RW/Mh?=
 =?us-ascii?Q?ClkoAwkMmXYGtYnh8BuKxMUBXqA0MlomakwRDtb3sSLjVC7beplBCMZ71RFs?=
 =?us-ascii?Q?MGouHo/PojQplcf+fFrRewHK36HJjvQD20Eh6yG+NQZvN1ptIjye3zotX86Q?=
 =?us-ascii?Q?Nr++okLWeAsL/E27uakMUYFhLv+bYEsdWCR0y2url4r7zZ2BVTQ31uU5msGy?=
 =?us-ascii?Q?6iH497JyT47QsUrCadZw+gGZlKqoXHArOgygSCzEg2pQfUaX1zWvBDy7oWKX?=
 =?us-ascii?Q?dT6T5qPGqsXG5PFoXZhgRn8vEUPob403MRsLh2aLh/puPYvIzu3pDj+PYhnS?=
 =?us-ascii?Q?Eq2BIkL7fn9s8ZXpqBqHciJNdP4mck9OTozSLQcE64nuerlwt5rfmAmy/ITN?=
 =?us-ascii?Q?8E2zdTpvGqQOvJiyNkiTONd1sXo2P3psMveZ785qsRHzuyiCV7jZ5fDTrO2R?=
 =?us-ascii?Q?9DG8ZUJTLbfRJXrHjkCL3nP/Ut9BIUj3AOBusx3CGN61dkYQEhnydvh1WErV?=
 =?us-ascii?Q?frYfjjoNQSRkNtyXP0DicLpULbL1qUZkq2qa1AWjN+OsjOeIsQwv807jLKnq?=
 =?us-ascii?Q?0IFWlZTRslcrc6ZjNp7Lx14w80d7pIkcbqlIIadSgEyRIvpTSntjdOjx0HuN?=
 =?us-ascii?Q?bxyw47HGISedpUKJZgTZHRLJAz9TTKk3VlWdAsdEs0+a8DgjtNyBekShpH52?=
 =?us-ascii?Q?6FJcQbMiYD3e4YbST0DclAm5Md+C4lCpfWkYNiTNKpQPYETVUNdBvrp+3PNL?=
 =?us-ascii?Q?aG/DGdk2FxGm0hZia5JNdBo2yGl4QEVJtzWyTT6ZeYpTRaz8oNPoovSFHPbn?=
 =?us-ascii?Q?0+3nWLWw1VlV1RLimT8F8n2rOT1jSlrmeM3zWTt/TySy5lzRuY98IClZMrNr?=
 =?us-ascii?Q?KtctHQHgBZNSN77InD8L01vKLcubMX9FOvTNI1tunT6ZhD/z4y7J9QRPsQbX?=
 =?us-ascii?Q?o+ji0HGESIGIFK97h+HUNii5h6utqEArHowcg8E+4ftLP86yp+MiohvD5a+8?=
 =?us-ascii?Q?0IRDTcshnbQw6LzJ6djhW5z+yUlqsBLfaV7bnD8A2JTgRHpaXhwmPaZ5l+z8?=
 =?us-ascii?Q?dmIePdGIzCHk5ILuS591a3Ae8UkJzw2NQE0/X3GUFX+BzvSDSGtIe3XO7FV0?=
 =?us-ascii?Q?IGHqrWe54uuJzSZMlyEGrS7OG/TWtkySkOw4Nw+YlP/Ge2Qt7PoOvKwEhL4k?=
 =?us-ascii?Q?hyvgy0wWDZfVhKbJjG5GwyVsVm8j8ISEpW2tXEm7JP1gSNwLcIvYFDIuq2L0?=
 =?us-ascii?Q?hivCiopyUwI3pctuJzEgKe74KwQL24/Dv8TMf0nj3n+q+HX+RG+klYjyOeLJ?=
 =?us-ascii?Q?wXFYRJtHwxKpbtnQquxR0b3U6WRSSl72u6f1hDztleUzB95Y2J6ixf5FRZrG?=
 =?us-ascii?Q?M1aA/C5WAA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd959bbe-4915-4b1c-bc31-08de7485fbb7
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 15:53:13.6722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7jcH/x3wKfrJJ43uWNN7CbehTXPlvq+/Fac+TOnTCpBsy0Hko1IbbT3gGR90/vfNKJ4J3r3Gk7XBs1vKs9gq1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7711
X-OriginatorOrg: intel.com
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,kms_vblank:email,ideak-desk.lan:mid];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6CA1019A063
X-Rspamd-Action: no action

CI team, please check one request below.

On Wed, Feb 25, 2026 at 04:12:44PM +0200, Imre Deak wrote:
> On Fri, Feb 20, 2026 at 01:05:50AM +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: drm/i915/dp_tunnel: Preparation for UHBR DP tunnels
> > URL   : https://patchwork.freedesktop.org/series/161849/
> > State : failure
> 
> Thanks for the review, the pachset is pushed to drm-intel-next.
> 
> The failures are unrelated, see below.
> 
> [...] 
> >   * igt@kms_vblank@ts-continuation-suspend:
> >     - shard-tglu:         [PASS][3] -> [ABORT][4] +1 other test abort
> >    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18007/shard-tglu-2/igt@kms_vblank@ts-continuation-suspend.html
> >    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161849v1/shard-tglu-2/igt@kms_vblank@ts-continuation-suspend.html
> 
> This is an issue in the Thunderbolt driver:
> <4> [279.105747] thunderbolt 0000:00:0d.3: RX ring 0 already stopped
> <4> [279.105751] WARNING: drivers/thunderbolt/nhi.c:780 at tb_ring_stop+0x9a/0x210 [thunderbolt], CPU#2: kworker/u32:12/2157
> ...
> <4> [279.105948] RIP: 0010:tb_ring_stop+0xa3/0x210 [thunderbolt]
> 
> but still unrelated to the changes, since it's a different driver and
> there's no DP tunnel sink on this host either.

After talking with Thunderbolt maintainers, TGL has still a firmware
based TBT Connection Manager implementation, contained in the BIOS/IFWI
image. The BIOS/IFWI version on the above host is rather old:

Intel(R) Client Systems NUC11TNHi5/NUC11TNBi5, BIOS TNTGL357.0042.2020.1221.1743 12/21/2020

So, could the CI team check if there is a new BIOS/IFWI available and
upgrade to it?

Thanks,
Imre
