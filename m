Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGjPK8z3/WmFlQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:48:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A94604F812D
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:48:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40A5210F50D;
	Fri,  8 May 2026 14:48:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HeCJyQIK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3452C10F50D;
 Fri,  8 May 2026 14:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778251720; x=1809787720;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=+e9uN7F+kKotxdkHO+eg2dpNuGpKQdFkTINYA0ySgRY=;
 b=HeCJyQIKg8Kj+0a7Uw2uie+VMaKnf5dMZHHk5qn/8SjFKziXez/RuWnN
 YOKPqr6DMsLqPzUzxXynocAaV5lpECilsTajGRvVig0LEUILtTlkgMTJj
 pKdYIkKdNfxT4dhiDJTPbFKwazpp6LBlk3dLfHLte3X2wD0/SmJOEmkOB
 NQ2cRhBiWczrEOhqlIAI0wXYalupmOI91Yg4SoCiwZGg9sgsucOkBkuL4
 M2/m5w9M2O+qwkL2DbAfeONDCbJnjc1ypAcT+VhhMa1UVXhYbq2FBpb4E
 loXC4ZIM0WsFkQzYcn/nJ2mMMVH/ddlKR0uWFOkwO/pFs2t8BhKFv3idb w==;
X-CSE-ConnectionGUID: spjWLAiTSOOBecJUZk60SA==
X-CSE-MsgGUID: +4xg+DFwQMmKOgr/WQWcjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="96791824"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="96791824"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:48:40 -0700
X-CSE-ConnectionGUID: Kglm1RkaRuq3TAKqdTKFgg==
X-CSE-MsgGUID: hA2khyf1ReO5MpbiboWOeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="233727579"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:48:40 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 07:48:39 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 07:48:39 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.34) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 07:48:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nsLU8PScss+oYoUB+5Tq3+1MtgkmAbm6MGchU/cC1JA78R7ssXNN6u6DM04CPs40WMiH/FQzL/5+Yy/3rEpSHTlCtOIjxOw3DCfCCs3mBi89iHoJ6eoyU+1sz6MzVYLM2SCXWMU7ALusjdvS9cTiKTVcbOJ8rmdsxtY6k6U8xQuTQ4mCZt2IlpCUA5UnoxNhL02jxbLmpMMb8EZgn9ACOJnfBh+OsIlkpXJUiS2ssPTxlf7A40k3cwNI6g/y81wZ9iCq/XWNk6OkExldFNkslSgTX9+9dLN+LZkTJom6zQ80RD8eq9NJeXpjwwE4lpJSFm9pznXBoVM/gu0vjt9ryw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M+5dAdqY4e1Ep4v+qEvGO2hfMQJl8apfWiQE6zvKUd8=;
 b=C/j6VQ5NL37Oo8rmnYGFHBH3pf+CvEx8MWBsAZdhzA696TW7z4teZKB7rn4u3/oo605HHj8OHPMSrJr102b1qo4jD/R4knLzlPV/bAbI1Ysc7Wme+OIxAFD7ZbVefZiYMJGGdaS8rPj1SWgpVvwts+QGThHTADfAZQHXeAOj1BM71wOA4yZEdw6OinWm90rtUYhOmeAXWVWbYc72vq82780yCAqwFrtp9S82s3ZD5H262Hw0mFaTrZFBYN5DLiuh0j2uWpGa42AMl7VU25eeTmVyyZKVp6FxcpKdVeYgHTZkec9UL1PUUJBGAj59P1T1JmoMmD9f/TOe7BW5PVgf2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB5909.namprd11.prod.outlook.com (2603:10b6:303:168::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.20; Fri, 8 May
 2026 14:48:36 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 14:48:36 +0000
Date: Fri, 8 May 2026 17:48:30 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 016/108] drm/i915/dp_link_training: Add helper to query
 allowed autoretrain
Message-ID: <af33vh8v1UiFwalX@ideak-desk.lan>
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-17-imre.deak@intel.com>
 <3f5bd37a01f306d7fd72a6985776c299994ad2c9@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3f5bd37a01f306d7fd72a6985776c299994ad2c9@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F712.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::396) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB5909:EE_
X-MS-Office365-Filtering-Correlation-Id: cbd58e1d-29bd-427b-a8ef-08dead10e262
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: zFPLkjDHbDpwhsrsfythYsDuT4PWm9yQ6GGKWm9kylUwev97anfimKz9fPIVckpdtAoYNK/n/GMa27d5/zo47SJf0QyKXacVP3RZ5OI5a6OWOhizfKLgN329pL9LTBWFfhdkSRqiVqk7UsVDxSdoXPfwWDjCD+zdJRDxlG0vJ5uVW+pOV1dcITAHATJ4A5qpZCaGiU1bWnTTSydbFqAsC6UmfxIPyzZgJkOHUtoug9pvaTZDJk8A9Lang0OYcI6Prs7P/aoJWI3XbWAi9JTegYxc86UggTvojIgVQewa91iCFY4XB6pjVdAz6Cfm8ra++4pKv0wfslOrB46GE+apeUUf9J+yuWPdZqYFyCJu355LH0GvlCTEoh7R+L6kox3yIGhLhJPXtar9ODvH9F4XQQ+shMJJ5pKb0G5sOsre88E0BwCzBVGXnFIC6jYZILzh+v5N6QA9SMxL92XRHrEwUJlK3+bPSn+vL+1ErOLC4vFN4ZsME9BfJcZQQl7lhOhq9KzlXOMgzoTK0e2gJs+UNcvSetJQrf+0bDHM6hI8Ni44gKtbwGerregL6xIZSckok3Hv0ua8l1tscvm31Z/VLLEqrgNGElLVJz9VeJSEKJMZhovEmT0IjAWAnd06/AhBZT08q8tvU8Xf7nFKPa+FmryrL6VEIb1jXIqEczT1BLfDJi9LaS0rxyfgS5xDRjun
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?V34l8B1pKJHPda58/I+nyG+UZVIWvTgA7qhMl6SUo1X+SZxwoowah8LA36EN?=
 =?us-ascii?Q?+rrvL9SC9EpBYIv4DcJhBcCd88ZNToEvFEY2gwLaxR9e03zwIVze3BcG/szr?=
 =?us-ascii?Q?LQIH154ZJ8NwZFV/t5mkwnoTtO3vftoz70mbJWZWZI3k20QzpWY0Feo5riac?=
 =?us-ascii?Q?DzdRkIsFHSQXalTw7/7BxKcWQMliyTqV4h7Mz4Pm5OdstF8sQHsZIWh5xIMN?=
 =?us-ascii?Q?WpVO8xkYI1vSDArJH4fp811JcMNeODh316b0y9hEC6qrzhUcyOACGLDOc2zV?=
 =?us-ascii?Q?DJf6NuQj0ahN1SE13C0rcvGxQCBSPNIwVgSdTnxhGqO7/6jHF7YP6jgUx9CV?=
 =?us-ascii?Q?MgC4w8rwSjQiElK/xt9LLfO0gK91SMqOeJNn+iDZYqk7XL4ubzYqTUEPSy20?=
 =?us-ascii?Q?rCeMKjB1ED+OoXJjDhYe0a24rmxEM8T8erQIV3bCXmP1HbBbMQfhjJ39PHow?=
 =?us-ascii?Q?GNaQn9YdzzlKIAuzu9eaP3yI6nXXK+JBfjS0sUsXA77oMgyeeZQ4C4ndDVHZ?=
 =?us-ascii?Q?wV9iSlRgBCZE7NgdJDBO2/TxiCyF6VLMcD1UwWUggvuxvK/rVECEEIOySwy7?=
 =?us-ascii?Q?2xQzJXtDeWyXm5Ez3/EnrIYRkmnOZJcuwsznV8v7lfL9gP9h/HkkZS5bFdO/?=
 =?us-ascii?Q?dTEzLbWdFr7BjGiCn0myigSJ0HQbzi8J9I1WF12O07O4HPORiya9XV/T2XbE?=
 =?us-ascii?Q?Vgar0xAlSTSaZ7sVagbEpHAL4VmzMBP7SGpgxJ9smi5Md/qf1FweF6GOgvDH?=
 =?us-ascii?Q?YeqxXiCsaJXdYPBhEcghb0iw94Kr5IDQe3S4mHFT2ajkfp1mTh+MYFB5Xg+m?=
 =?us-ascii?Q?urwJMrPIB19WyNTSmCnDj69CsS/n1UiFZqGpXjVX5LxDZqYUErjRFQw4QhZe?=
 =?us-ascii?Q?yMn/nKcV+qYum1g9S/DbtHxYILkCIaWjdWQmUm74TcFMSqOPAYXIoKffWgWN?=
 =?us-ascii?Q?Nj++SR2Xxfs9/34x5B1fC/8cdQl7V9mUhapixbl6nhm1NLhlu9CmPAnaO2yN?=
 =?us-ascii?Q?+hXsXTxvZmyXQR/944gUkx0WFqWb03/qSXdwcodG6XTSGvV4CBH3kX7HJeRG?=
 =?us-ascii?Q?ri+TLRt4TPt31bdhNoEVNFDnC03womydNhhlq2ESQArunIbn4XB9ErESZ3mL?=
 =?us-ascii?Q?CglMmKQCiy9NoWaVS8QDCRIwvp3BSz6N5R1u2/W8Oh0OcEkS/Zt/9ymMs4qg?=
 =?us-ascii?Q?IgdX4e6LUXZBQlpC82HGx71/busslGN2AE1wdbiVEt+0vajeyfABDq7RD5pU?=
 =?us-ascii?Q?U4IDD1f9SFRJv8D3RZv1Fcw2dYraWcJ7AUhOu3wUbq6ux5NPZ7VTu4ujYB7o?=
 =?us-ascii?Q?p7A7UmdCfHWJbh3jEh4CsEgLuz3H8uwbdfyAjd7nq/kk1gvzLAFffB8WFGlG?=
 =?us-ascii?Q?OiPbr9zPqJmu4v/thJmUT4+oe0SXnpMOdeDKefaSFmunTtnaA4moIXKgHuN+?=
 =?us-ascii?Q?4icUJNprPjGhcVlislYaerGZPly2HQqSfFMddj4JxSxIXhkQPGGHFKKMRQCZ?=
 =?us-ascii?Q?92nWrfchof1CPhCKTM4EevJlAPTURMlfgPIGrbwrc9swS/SYwXijMJZDE100?=
 =?us-ascii?Q?GKiRj8JEGQYNLyoDeBU2+M3oepvX4MZS8dgXO59FdUVQd3I12LjVL1vxTvwk?=
 =?us-ascii?Q?/W0nr1Psx9/36dzT6HEMciJgRmjLZEqIU/LUamoSb5cdsjCNYCUEl/taW4u5?=
 =?us-ascii?Q?yfoe4X+vLDxFCG2O7v9mg9jofEYG10eUtID5+J24EObjCv0HH6uOPCzSdPQo?=
 =?us-ascii?Q?XxFIVQP0uw=3D=3D?=
X-Exchange-RoutingPolicyChecked: dz6+wgnwf70sRwfl0GdcOyoxshaH8Q8+wM88QhxY0t9fb03KyRSBEvonuU14u72vzQaSiwDm12cVgKfJ4GWdYv6mViMKIy8g6ojIgCg12KfKtzNqxtL7JzU0yHYYcRPmz1wocJny5B0KVbNwuw/2FrsVcmtJ79EsfLK8yWU/emOGp42gTp2ogTnXELZBfyrsTNcUs0hWOZl9icUQB67F4yz7bVl3N/nYq1M7nu3VEAsZ0KnSCQQVwiTbZDu086ju5/v7tPOqsvZq+KvVqa0wr7uGZ3seFaNWttfX2H9uJm4tNd6Pe3ib26VCM4IUduKdW8N3PqkF6pekvAA8+TT7+A==
X-MS-Exchange-CrossTenant-Network-Message-Id: cbd58e1d-29bd-427b-a8ef-08dead10e262
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 14:48:36.3744 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PWPQlxFwCsMMrg5QGa72yJcLeGtE/DgU7/arXeh+yrnSJXF94fiibY4IgOJUCfWE2IIeGSv9DD0pPaK2jt4wFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5909
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
X-Rspamd-Queue-Id: A94604F812D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 05:36:42PM +0300, Jani Nikula wrote:
> On Tue, 28 Apr 2026, Imre Deak <imre.deak@intel.com> wrote:
> > Add link_recovery_autoretrain_allowed() to make it clearer what the
> > condition is about at its callers: queuing work for and starting an
> > autoretrain is allowed.
> >
> > This also prepares for replacing the sequential link training failure
> > counter with an enum in a follow-up change.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_link_training.c | 22 +++++++++++++++----
> >  1 file changed, 18 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 77697a7619812..1c2cef7d61f37 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -1263,6 +1263,20 @@ link_recovery_autoretrain_pending(struct intel_dp_link_training *link_training)
> >  	return link_training->seq_train_failures == 1;
> >  }
> >  
> > +/**
> > + * link_recovery_autoretrain_allowed - check for an allowed automatic retraining
> > + * @link_training: link training state
> > + *
> > + * Return:
> > + * - %true  if automatic retraining is allowed.
> > + * - %false otherwise.
> > + */
> 
> But what does it mean that retraining is allowed? When is it forbidden?

It's allowed when an automatic retraining is possible. The conditions
for that are explained later in

[PATCH 026/108] drm/i915/dp_link_training: Document DP link recovery logic

I'll document here the part of that relevant to the function.

> Again, the kernel-doc explains the same thing that's already obvious
> from the function name, it provides no new information, but fails to
> explain the first question that pops to my mind.
> 
> > +static bool
> > +link_recovery_autoretrain_allowed(struct intel_dp_link_training *link_training)
> > +{
> > +	return link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES;
> > +}
> > +
> >  /**
> >   * intel_dp_stop_link_train - stop link training
> >   * @intel_dp: DP struct
> > @@ -1303,7 +1317,7 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
> >  	intel_hpd_unblock(encoder);
> >  
> >  	if (!display->hotplug.ignore_long_hpd &&
> > -	    link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES) {
> > +	    link_recovery_autoretrain_allowed(link_training)) {
> >  		int delay_ms = link_recovery_autoretrain_pending(link_training) ? 0 : 2000;
> >  
> >  		intel_encoder_link_check_queue_work(encoder, delay_ms);
> > @@ -1830,7 +1844,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
> >  		return;
> >  	}
> >  
> > -	if (link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES)
> > +	if (link_recovery_autoretrain_allowed(link_training))
> >  		link_training->seq_train_failures++;
> 
> This reads *really* funny now. As if the failure count can only increase
> if autoretrain is allowed. What?
> 
> >  
> >  	/*
> > @@ -1850,7 +1864,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
> >  		return;
> >  	}
> >  
> > -	if (link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES)
> > +	if (link_recovery_autoretrain_allowed(link_training))
> >  		return;
> >  
> >  	if (intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state))
> > @@ -2002,7 +2016,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
> >  					intel_dp->lane_count))
> >  		return false;
> >  
> > -	if (link_training->seq_train_failures >= MAX_SEQ_TRAIN_FAILURES)
> > +	if (!link_recovery_autoretrain_allowed(link_training))
> >  		return false;
> >  
> >  	if (link_recovery_autoretrain_pending(link_training))
> 
> -- 
> Jani Nikula, Intel
