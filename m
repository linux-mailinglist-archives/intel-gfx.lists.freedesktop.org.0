Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAOlGpq0Hmr7JAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 12:46:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A089462CD78
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 12:46:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D5F110EEC4;
	Tue,  2 Jun 2026 10:46:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZvnvMWFZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A8C010EEC4;
 Tue,  2 Jun 2026 10:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780397207; x=1811933207;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=wC6p7rhHrIKNWivy8FWOi5T2J4MqWfDxjEMzBe0bbTo=;
 b=ZvnvMWFZqucdgwut26JwgelRP2dqh0gx5xU+JKuMHZIiJR8lEvoEEvPz
 VJi8rUjN+vsEt+xP6snRXh63D/VlMDN8a2pKY9ZAGElIjX9iFXolhmFcI
 8C6TBjh+oPL4AugJ8DHhdqA7l1kjUKt04eEPSWqYvGlZzs2c8PsN8geMG
 n44FLL6UfKm7eKaJqJCukMN7mUSt1xxfBQlGLcuDR317GPaz/o5vdNQO1
 9A1ucZRqxuqcUnly6UBFflglDT47K8vCpxLeI03cbgRTiZTqHbLFZ14wh
 dzIF/DfuAlqyaxwCNct8k2wIvaITUYfGJ20aQhI1pOpMlZEGhRrVmVOt3 Q==;
X-CSE-ConnectionGUID: o5L/Zo+oSaegkZnm0FUlxw==
X-CSE-MsgGUID: i/G5EzLPSB+8MT1HP5G90A==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="106624909"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="106624909"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 03:46:47 -0700
X-CSE-ConnectionGUID: W+7DlCUwT6aM8sZurr3Kwg==
X-CSE-MsgGUID: 1/6asexqQuiHOP8Nla1yzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="267517852"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 03:46:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 03:46:46 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 03:46:46 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.40) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 03:46:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lvR3ac5xr5FgX7elDXbZC8bmO00VxFGGUUXVG483Ho+vVlRnXdMrad2kaARDh360l77TRusdqNK1QiLFirSPnF7ZLt7aUUy17rIS/WSdCIRC33ChLTmAVHc2tlM0aw0z/fdZZ7vZoLrrPuXhD41Wq556SmixDcWaeC3j/InepZKwBGO6mqfpyYoPQKr+ZF6WXh7lBiIS3FQwr1I1rSAzzPGNPoIzVfUYn9+ByjkL7D2tOxdyIPIGNysvXTkpJmfJPzYF47ltin5gkcjuFgIi6A9HHBuyN0lM6WIy1fshoFs+4he/0uITis/rB65sN1SUfkZNQCXzuD4dtzwo4G+aPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dPeQYeu0fVtxOeH45839z1QISjpSYkL4aEvMy/CCvNI=;
 b=oOZfdMTJvdP+0EGtVX4FaV+J9XZhcTFXOalhZ+sbovQpfjNULK9AymvKqmrFmawHVkaCQdLUNyAo1OSaic4swhqKPnxWg1ecpVWkvi16TvfhbatxWUJfAJHdf5He2+ha/ffysH6uhiaWaozZUAgKAbzP/hJYFvbIp4ef1aSR53qqgTsVmGXxZvyYNSJRefYMyOgqQoVy0Qd2odks2DQ1EsssQWk4PxZhIc8KdrbQ5+ERtag0sBbTk9+CgILJv7qsqy9tFrRnthuE7o96amiBXp8z3ly2DrXMXDEdG/m8oed3fTmi1H1MGPFUajrpLpCrqb4F0Z33CJrJivSB6KWIjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by DS0PR11MB7459.namprd11.prod.outlook.com (2603:10b6:8:144::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Tue, 2 Jun 2026
 10:46:42 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Tue, 2 Jun 2026
 10:46:42 +0000
Date: Tue, 2 Jun 2026 13:46:36 +0300
From: Imre Deak <imre.deak@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Stephen Fuhry <fuhrysteve@gmail.com>
Subject: Re: [PATCH] drm/i915/display: Refcount for fec enable/disable
Message-ID: <ah60jJkzbbw25R-L@ideak-desk.lan>
References: <20260601142943.1481728-1-arun.r.murthy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260601142943.1481728-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF0001DBF2.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::30f) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|DS0PR11MB7459:EE_
X-MS-Office365-Filtering-Correlation-Id: 3788e775-88e2-4bb5-6585-08dec0943bc4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: nnC/A+jbi16De7Es4P8RJbOliF9AlpieuvaFET7huev1ASltaE33jSKcYAgst5mWswx/92PQ4tjCQ4kMA4wOa5VniiEXrxbaxol5hFqDs2LBsPY6vgx7bUPHkQK6WrQjFv1frttoPLE4R8Z4xIBOamLY3qSl4pnQWmLnrZFo2j408dwp9cpiOlweh4UAlsR9zkrG6nKVfYbHnBFRPQR0NYSuqzFZAmagDHd4LU2g4KcSCqVLqDlWzN2Kea+/cKuA4eJgripcdUzxkMH4uh5eHEhCYnoQS7MVEWy53efHqZav3hvGqXTfj8ixyRCIdS1Os7B9RFphye5UHSIfcLmiL7QMI3h5KZ5loU5ZEwCnuvmRDYq6VV3LBP9D9vbEvUnZOSun4MG93gJ/vaMIKts4glJnFJ+vlBi/alKqZzVB/p5HBZ3ecpojQjAj78rmW5UFjF62DuAJZkePqUAuybteTDD6QkNco0J9ia39rymN9sR23SQKUpEmnIaZfgD5ZtgH26DZmjOka0tKGjShBjWqc0y9K8XsxmvWirx2Ij5unE/6Qa1tHSD0GFZTREGjKVrktKErbS6UL6f9B7jK2bq918jM/wtSFN6eA2G/jEuu9OjE/wBWtc4EgFpg78u2/ZoeywH6tp5aG4c0U+8SQ6lNNw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?w3hGzgpU+N93EMZyRozL7JGjjNZqvjBAZwGYyJbkS9p7CMAFKIrgHnu7I4f8?=
 =?us-ascii?Q?8gGMaUyeKA4m/o9ExS94svGdvLeCLVarqnBFzRUk+TJX522JjkAO9rtkk9WD?=
 =?us-ascii?Q?i09R4oJsbyNQAa8687Dfau6vkPitItC92bYqCTCgDiflIxHreVl/xJZwMJXF?=
 =?us-ascii?Q?/1daAbAsMdTf/+qul4DPnE5TLMMEl24Npia9EtdG+BUyZ+9iL0vLTarwOsPn?=
 =?us-ascii?Q?kIGNyjmEwk/uzry/HipoYIpUgM1wa05Q+RCtMqF4rUZjhDs+GthH65qZzI7x?=
 =?us-ascii?Q?nVU1xSCYY3Kvj9+iLbSOISO6/kcGysN04bdfLLfV3FsDju+jj1/+IJIiMWXk?=
 =?us-ascii?Q?ah0TQ1GmPcHMh5UVAkb/soV/BzWVap7yGSNP36BTVyd6Bi96Qpdtn5qbF0Sn?=
 =?us-ascii?Q?WX76Jb6Am2tmBCtaPdnmzbQH9aUgHrXJKrECgHLCtFZOZ9DPykdpO3cLlnbV?=
 =?us-ascii?Q?WLA2bCAmmrr94QRbhKRl7JyWFKtt0+VKQtPIc7vPhIHVsclO+Ui0dA0a7tEP?=
 =?us-ascii?Q?6cpCZSBYEIOGgfXEPmOSb5JxBJx2WI5Zugr7AVpwuB4iHyM85J71NNcliB2b?=
 =?us-ascii?Q?l05x4eQXZcMA4nGbgQ9UPBtWO7gYtvW3NEBnkWSvEi5s4u7CSgddw3hhHmZq?=
 =?us-ascii?Q?5gHxZeDl23fjH3w9GT4cNRZ6tXBN1eRJhV01ArU23HQkPcc/IulVABTmEi0k?=
 =?us-ascii?Q?4yoDSbPnstR5sCzxwVoaCVioWrAQ8t9HRNBVr+xKJaZ5J/aMIwjDNy4Mb3SY?=
 =?us-ascii?Q?++aVKevutoyZUqaqYX5Wex9r4d8q8dS1koItHTcTJBrA21Giu+JjNQJ3GsOb?=
 =?us-ascii?Q?Qr0ywsdSgbLTlp2q/rG0jchUsndeivwQGn1CGzSqVcHjCoCIB5Y5YL7FXMcS?=
 =?us-ascii?Q?f+Vc+BsK87pMZwE1Q/ZP2pVK0wfczKRg5RM9YWMsZbzRSUk9M2e0HPU5HygQ?=
 =?us-ascii?Q?Tm/oOVfaUwBrqlP2qxfFACiyx1Ql0Mkd4OimfWGobM5UqYYzSP08bjGWy9M2?=
 =?us-ascii?Q?SyqtnhU9BJa9ZbQKQp/z77dw/NfE2BCOm3WpxJF0vn9Xq4lzNhQJcsYHG0zM?=
 =?us-ascii?Q?+hG2XErldIBpze5MYCcIkWZwRE6ToJ9rOUAfs53J5n2MAiuhSutoecoB5QEV?=
 =?us-ascii?Q?U8NtiLnxRl9BxqOnElP45XNME51uD/HG4z86Vwdvhcnzs78O228hXhxpU3H0?=
 =?us-ascii?Q?34nwot2jtbCdMJzgnN7SXL/0K27Kf3LjK+a9UzVYDs2CDUQH58Z+6O/8cHlV?=
 =?us-ascii?Q?1pG+4zqsqrQbx6Di+yp5TRuZtx5Hrh7D3EKmqrmcmPzKEGr13yspy0l3whyV?=
 =?us-ascii?Q?+MgrF/7P/5P+cyB2ZA2cUsYwmLo/1ZcJJtFgixcKAZwUaFbxk0iui/AS3o+i?=
 =?us-ascii?Q?0WM2Ztk4tUj4Eau3xHIjb0yPXqqsaz5ON9NjM6EqfIxL96LXJSoP0e2DHnlc?=
 =?us-ascii?Q?+n7QyQTJnfCcUe9BGf5RC4wk66BG2YaDpOeS1dZ2gy5xy/6TuX8vaWMuyARV?=
 =?us-ascii?Q?XvYN0chGFeS+JINcpDjamwML1LxskuA9s4fMi/yTb4gi4uXCpaQ6eSH5YRYi?=
 =?us-ascii?Q?r4KOjLcL8y+1ZN72XnK5IkGp3VIxwKuPgUzLFkE7x0IhszyyoBU6UpgdYmN+?=
 =?us-ascii?Q?PnX9TNYElNKVp7sZbNevV7BTsceY8GOoMOYJwfnWZmvO2/b28+2bg0wFka5d?=
 =?us-ascii?Q?dHMv9xwN4HFCgqStdfppuVR/kT8UnTqOLXW8qAe3mBMgG9ldBaLZkNUMrxLk?=
 =?us-ascii?Q?m6LOWawRPg=3D=3D?=
X-Exchange-RoutingPolicyChecked: RVcoQ7By4RzSxBwDppR4LbCAddPIWs3kjCRzs2y39537VNz/wfmB4aPDN+nBH1RhM+tR43d+RH5Shv2rD9lJwfZ87CWNRXfFdGxcn0gre2uZPbJ9I8dNICMrKTp8IgvvicaNWIBJveueZaeD+5hEcWlr9CW/0J5gEYuK61Fu/vsHO+6nTtnEmTao2SzEkoraicrtxhE7UcqjBBIbxR78cJocLj8Eh3qQ4ESkYp83jZzOFmD8bdR+bbwJWrcwWj82cy2xHKoZ3GgfDHfciOo61DOictbIBWLH8Uo98+htCtm8UhVnhEj9Gan1I7sKvTapUkLcyXrGR1x1eRGfVSELFA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3788e775-88e2-4bb5-6585-08dec0943bc4
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 10:46:42.6558 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YgYsBZmAbmmEzhHZZtIgcdI1cJSP6yBOOnLzWPSWtmLApI5hcVDNarFf3i9dGmYx0/tInrO+z6KACe+4TQ0R7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7459
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
X-Rspamd-Queue-Id: A089462CD78
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:replyto,gitlab.freedesktop.org:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,gmail.com];
	DKIM_TRACE(0.00)[intel.com:-];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Mon, Jun 01, 2026 at 07:59:43PM +0530, Arun R Murthy wrote:
> The FEC_ENABLE bit is per port basis and is enabled/disabled on ddi
> pre_enable and post_disable. This fec is shared across the mst streams
> and can be enabled per stream basis as well.
> So have a refcount to track the usage of FEC and then enable/disable
> accordingly.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16073
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> Tested-by: Stephen Fuhry <fuhrysteve@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 66 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_ddi.h      |  1 +
>  .../drm/i915/display/intel_display_types.h    | 12 ++++
>  .../drm/i915/display/intel_modeset_setup.c    |  6 ++
>  4 files changed, 85 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 86520848892e..e12a3d6d6a67 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2096,6 +2096,47 @@ void intel_ddi_disable_clock(struct intel_encoder *encoder)
>  		encoder->disable_clock(encoder);
>  }
>  
> +/**
> + * intel_ddi_seed_fec_refcounts - Seed per-port FEC refcounts from active CRTCs
> + * @display: display device
> + *
> + * intel_digital_port::fec_active_streams is the per-port refcount that gates
> + * programming of the shared DP_TP_CTL_FEC_ENABLE bit. After initial HW state
> + * readout (driver load, resume, GPU reset takeover), the persistent
> + * crtc_state->fec_enable values reflect what HW currently has; we need to
> + * align the refcount with that so the first paired disable doesn't underflow
> + * and the next enable doesn't incorrectly skip programming the HW bit.
> + *
> + * Must be called once after intel_modeset_readout_hw_state(), before any new
> + * modeset commit can run.
> + */
> +void intel_ddi_seed_fec_refcounts(struct intel_display *display)
> +{
> +	struct intel_crtc *crtc;
> +
> +	for_each_intel_crtc(display->drm, crtc) {
> +		const struct intel_crtc_state *crtc_state =
> +			to_intel_crtc_state(crtc->base.state);
> +		struct intel_encoder *encoder;
> +
> +		if (!crtc_state->hw.active || !crtc_state->fec_enable)
> +			continue;
> +
> +		for_each_intel_encoder(display->drm, encoder) {
> +			struct intel_digital_port *dig_port;
> +
> +			if (encoder->base.crtc != &crtc->base)
> +				continue;
> +			if (!intel_encoder_is_dig_port(encoder))
> +				continue;
> +
> +			dig_port = enc_to_dig_port(encoder);
> +			dig_port->fec_active_streams++;
> +			break;
> +		}
> +	}
> +}
> +
>  void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> @@ -2413,12 +2454,22 @@ static void intel_ddi_enable_fec(struct intel_encoder *encoder,
>  				 const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	int i;
>  	int ret;
>  
>  	if (!crtc_state->fec_enable)
>  		return;
>  
> +	/*
> +	 * FEC is link-wide: DP_TP_CTL_FEC_ENABLE is per-port while
> +	 * crtc_state->fec_enable is per-stream. For DP MST, several streams
> +	 * on this port share the bit. Only program HW on the first stream
> +	 * needing FEC; subsequent streams just bump the refcount.
> +	 */
> +	if (dig_port->fec_active_streams++ > 0)
> +		return;

This doesn't make sense to me. FEC is enabled for the MST link and if
it's enabled then fec_enabled is set in the crtc_state for all the
streams in the MST topology. intel_ddi_enable_fec() will be called only
for the first MST stream being enabled and intel_ddi_disable_fec() will
be called only for the last MST stream being disabled. So I don't see
why the above refcounting would be needed.

> +
>  	intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
>  		     0, DP_TP_CTL_FEC_ENABLE);
>  
> @@ -2454,10 +2505,25 @@ static void intel_ddi_disable_fec(struct intel_encoder *encoder,
>  				  const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  
>  	if (!crtc_state->fec_enable)
>  		return;
>  
> +	/*
> +	 * FEC is a link-wide property and DP_TP_CTL_FEC_ENABLE is a per-port
> +	 * register, but crtc_state->fec_enable is per-stream. For DP MST,
> +	 * multiple streams on the same port share this bit. Refcount the
> +	 * active FEC users on the port and only clear the HW bit when the
> +	 * last user goes away, otherwise tearing down one MST stream would
> +	 * disable FEC for sibling streams still using it.
> +	 */
> +	if (drm_WARN_ON(display->drm, dig_port->fec_active_streams <= 0))
> +		return;
> +
> +	if (--dig_port->fec_active_streams > 0)
> +		return;
> +
>  	intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
>  		     DP_TP_CTL_FEC_ENABLE, 0);
>  	intel_de_posting_read(display, dp_tp_ctl_reg(encoder, crtc_state));
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
> index 580ecb09b8b6..3678c28a0dc9 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> @@ -78,6 +78,7 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
>  			       enum transcoder cpu_transcoder,
>  			       bool enable, u32 hdcp_mask);
>  void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder);
> +void intel_ddi_seed_fec_refcounts(struct intel_display *display);
>  int intel_ddi_level(struct intel_encoder *encoder,
>  		    const struct intel_crtc_state *crtc_state,
>  		    int lane);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index f44be5c689ae..84bd0d993197 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1987,6 +1987,18 @@ struct intel_digital_port {
>  	struct ref_tracker *ddi_io_wakeref;
>  	struct ref_tracker *aux_wakeref;
>  
> +	/*
> +	 * Number of active streams on this port currently using FEC.
> +	 *
> +	 * DP_TP_CTL_FEC_ENABLE is a per-port (link-wide) HW bit, but
> +	 * crtc_state->fec_enable is per-stream. For DP MST several streams
> +	 * share the same port and therefore the same FEC enable bit. Track
> +	 * how many active streams want FEC so that the HW bit is only
> +	 * programmed on the first enable and only cleared on the last
> +	 * disable. Modified under the modeset locks.
> +	 */
> +	int fec_active_streams;
> +
>  	struct intel_tc_port *tc;
>  
>  	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index e88082c8caac..14f038b8ef81 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -950,6 +950,12 @@ void intel_modeset_setup_hw_state(struct intel_display *display,
>  
>  	intel_modeset_readout_hw_state(display);
>  
> +	/*
> +	 * Seed per-port FEC refcounts from the just-populated active
> +	 * crtc_states before anything can issue an enable/disable.
> +	 */
> +	intel_ddi_seed_fec_refcounts(display);
> +
>  	/* HW state is read out, now we need to sanitize this mess. */
>  	get_encoder_power_domains(display);
>  
> -- 
> 2.25.1
> 
