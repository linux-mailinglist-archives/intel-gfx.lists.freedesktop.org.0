Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD7EB1D843
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 14:51:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0824F10E83A;
	Thu,  7 Aug 2025 12:51:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FuiXPpf6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF6A910E3E9;
 Thu,  7 Aug 2025 12:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754571058; x=1786107058;
 h=date:from:to:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=d1WjKK6MJNqRZoDdQwYhamLqnJvbKDhHvbewBowjWFk=;
 b=FuiXPpf6IFmVyqYx7i3ugKqmeJe52xXetDcd+Dpzw5nMpXWXg9m5eFML
 7WhW69RQa7rAsj+OfwKhGagS5I6IBA6C6KisWWbv4TP47nR/FHoPizHOT
 XalUY5jZ+DzYD4kIwmb7ULZ2/4ogQfDxZ6u8e9T8iWMSDlWn07gCdpUbr
 P8atspAHK9bbHOt/scUAxVROOkdTCnbNiyBNgs6r9zjna3eEPDb/DjPF9
 eXR1gCocYuIqEnNQBc4JEaAogIdId7mciiFQnndvEVAeQ9FS1UzrZMZFq
 bmsogLb9etO2MdjAdvXCskk2eLRLRgz1hqVHpiszFW2HYe09gdQZl+pGl A==;
X-CSE-ConnectionGUID: p4i9jsjrTRWVP40PyXQcuA==
X-CSE-MsgGUID: XJBE4LUCRTK1fwarQLBrqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="68358120"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="68358120"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 05:50:51 -0700
X-CSE-ConnectionGUID: LVWyqTC4SoKOw3KZ3OS4/Q==
X-CSE-MsgGUID: D6gEQobiSZaBF4xf3dmumQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="164953919"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 05:50:48 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 05:50:48 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 05:50:48 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.81) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 05:50:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=USjRza1nUJnxkqrc1H/OkdMdzBjQ8cn3+v/2W4XJi2MBZyugLwkrPALqaTvLADtuXMI3i4A82M+NvP0WCKatAmCGlQpKsp39qT+UWu5YC8Ha6u8+pRXObsMuh3FEKe5IV8td1NBDXe7Jbtw6vfHWMyobWzV9wN/NqtUX37OUPjtK0XBuqOjrJetlFBuF252eKPfcxXJPeSKvpqpSJMdcLM3sFDjchPlcJI95238RH62/D+hUxxtZ8vDf2ug8D774aDNPH9/d4ugcw+aDKq1TOUIa6kQO1OS8KNjNrAUZ4NzZ736UmzUwxd36nPn31VtNc31hVb+G7aRrxio0dhi3jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JBiOPZeJhajKp8z0VymfosM6YQ9T+LkW3zSfI6Din7k=;
 b=wf8p2792+C/dkmIQladhGoRiA85zznkS7Na4ibnmlrTHufq/3p9/+/DgXMoyPbZchbIWgi2g2EpuQ5+mQNp7gxRPJdwSUliBomDYQLWbT6afK/d+gDjEWH3p90MJrD4lUoHtkbONLETA0aYWhw98sfT7H5paBCmXNBreIebfbHz16j3GchoI7w6AIT3h+EnsS7u3CHW7iKnmP/NfqLfjTZMC17TlP+rtKyqsKd/1Dtyty+NzzYxG6nWx3mqs/niAIwyKvVqMEo3PcwRz0bIZOL4tLrB1Mk7f7IVv9p2H4lAwdFc0JaAIFHVB8aCQabmzRJGURRmfxftYFOgQ1Rsgqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16)
 by MN2PR11MB4680.namprd11.prod.outlook.com (2603:10b6:208:26d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Thu, 7 Aug
 2025 12:50:45 +0000
Received: from PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd]) by PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd%5]) with mapi id 15.20.9009.017; Thu, 7 Aug 2025
 12:50:45 +0000
Date: Thu, 7 Aug 2025 15:50:15 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Luca Coelho <luca@coelho.fi>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <stable@vger.kernel.org>, Charlton Lin <charlton.lin@intel.com>, "Khaled
 Almahallawy" <khaled.almahallawy@intel.com>
Subject: Re: [PATCH 01/19] drm/i915/lnl+/tc: Fix handling of an
 enabled/disconnected dp-alt sink
Message-ID: <aJShB9ufOBH9AWLY@ideak-desk>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-2-imre.deak@intel.com>
 <95999d2602067f556dc2e5739758deef7c462e17.camel@coelho.fi>
 <aJSQKu72vVYmUd4Y@ideak-desk>
 <d8e9cabb243cd8bbe7ac942d117146bf7f68b631@intel.com>
 <aJSc9UaVwn132FqX@ideak-desk>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aJSc9UaVwn132FqX@ideak-desk>
X-ClientProxiedBy: DUZP191CA0072.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4fa::12) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4840:EE_|MN2PR11MB4680:EE_
X-MS-Office365-Filtering-Correlation-Id: 5924e32d-b173-4f3e-5ad4-08ddd5b0f9e9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?HgTMNGx9utkoyqayC8ri8tf83ZJaTfjRYRPsysbtsMHjLpYLXyHKdPbw6xMQ?=
 =?us-ascii?Q?vM+4QEvNEVYDMHL9wC0PAFAlDzdSjw/ScUHB6WtTZ4IxknBrd5PuzaNzVjni?=
 =?us-ascii?Q?0DhSxUbgM5AOfsyuVA5VZMymQKr/TG+J+AB6NnMLcIivjgvtrTcYuhZID8pZ?=
 =?us-ascii?Q?/wp30uzo6eH7bvTKUFrKVSUiC1PW80pcr0Dd8UzpK4ClOmPYCgioRYlnoQhV?=
 =?us-ascii?Q?VaMJ+nZagQj5wPcNWlAk9e5i4As0PknaCcdV1F+frll7GIspDDJnBg9X+Zhl?=
 =?us-ascii?Q?klPLNcPyICUGxdGDym7JEw1tCVY3U1gSgsQGElhX5Xyl7nvivsvJIUT+aXOK?=
 =?us-ascii?Q?eE7o2v5QVbrU2O3Qegt7I5NUx2MSuyBMYOxGwx0SEGeNu4vFYz6w4B0lB9nr?=
 =?us-ascii?Q?iUvVFWiDevvaB9/NyiWtpS4EuZCYFm2OfQqS0KgCoffLXPIi6LUDtjc18s+O?=
 =?us-ascii?Q?IK6xMnTx6cFv/IIiEM/PZ2ikRfzLU/ytDJXq/YQD04z/YA7pWqc/jRnQdV0C?=
 =?us-ascii?Q?fshNF0b90l4kZHAHO8sjXx9JFvRHqUouJOu9CjQmJGbc7HNIq+duUU5/kbDi?=
 =?us-ascii?Q?AMUe2CuhpcI8QaOI7qACpEtaNsybpXwKoCi47KLLKGyfTTDlWsLY73FpbjvE?=
 =?us-ascii?Q?xACT98N0k6FH67v3R7YPnniuNt1guba1eDYHEmqgjd+qhmy7Tw6qGdvrmkBg?=
 =?us-ascii?Q?mKq2CX+0hvz3VFjVIeDk50M5YxfOevTglFrSgm70ZT6NIRyJ2dLirDEVHZTr?=
 =?us-ascii?Q?W5yicJ6WWpZrc3cStONAOx94xuU1nWoENi7/jEAj8R5fHWo/1AvkiIiG1Eqa?=
 =?us-ascii?Q?kFWe7RMeaV9yBrTz+zfPVVeSGIKjUlrnRX/tenmXVXz1gIkF0f6eD4zxx5mr?=
 =?us-ascii?Q?2TZwv4Fn6V/9Mtn7ZN1F7gyK4Y0cSvrsQjyopUqcuFz+rD5c2cs8u6pCbVFF?=
 =?us-ascii?Q?ZnxtdIa9GEH9XzqfrARKAWQsjpHzxKZ2OcrnaS+koyhxSkQ3k812qcMifCwd?=
 =?us-ascii?Q?qvfqwjEAWSUDli/GQrlPZt3+icnZ05LU3z7VNPe+i+Z8Jt7Bf6by8b9vwrW+?=
 =?us-ascii?Q?YfZiarOrLjZ1ay5dLP1sEtIdQ54mYhj2GuQHKydWSMDqAD0xioeKjpUne7jn?=
 =?us-ascii?Q?G6jY9e9MWmbFl1W6YhZvgQBvox3rDnqGyMFaFMuGhllShaVh1GgV1rNE0xpI?=
 =?us-ascii?Q?NSOTLeYNaRgziV7T2ZxdP52zi1qDi4eWJUClTyN3VtH5gpxyHJBKvP3r/5TN?=
 =?us-ascii?Q?OnDdvQYKPFpYR//KCqxzEyDtD4V0PvCZYVHbVnjU88hkyZdvtdY459KbId8j?=
 =?us-ascii?Q?wLuwHgTTUxl/CFyyx86mZe7xfogPl3s3ROCO+TRKww1hTgrorYd0pTRUdf+O?=
 =?us-ascii?Q?+bMzPcNqaxk1VcIb2hWbqlgd8bi22EOFCnaZj8hMIanAxwnvKYLTAsF2fvNN?=
 =?us-ascii?Q?dW8yK+feSNs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4840.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?P51l6BDUIfTBySDgNbZjJGeAyTwXcKc1yRD9VVseDs8pnokq/DdncRUnoxr2?=
 =?us-ascii?Q?YDWAynaL7zQYNkUgKh8s9apS/Px+BKVwiEMP47G0Mf7l+aM2VEF46U7TglQs?=
 =?us-ascii?Q?bc+m95M4tpvzHgq+00KS3oW7hAMTeD3MRIsHhnuqCkz0Uq6bpDE/xGybr+Yc?=
 =?us-ascii?Q?rlCQDLOhAV4HWKCkOkC/LRngGQaIBeB79pUYu/lzdaYXF1s9o3qYRzYhBd5e?=
 =?us-ascii?Q?+lk2znTHbl/PnNgvIN+mVnjU2fbK1YgDpRPU8DKShbV8Qjxjb4etohHISrrr?=
 =?us-ascii?Q?mipRXp3Z/9563agW8PuOVrQXmqoRD+m0nGNXSVicbaIlkeSSrKVUaLbwFLoN?=
 =?us-ascii?Q?QmtNatmVh0haWshp3Df4eLIBx2RZxNR/MnjYYBEm97LFyAKhqP2axSKwiT+9?=
 =?us-ascii?Q?zcwTrna3z8OPN92qgRECElv1GzbdD5N2uwZgEtE1+1NsYEyDBTGhh8Cwsity?=
 =?us-ascii?Q?ZkmlW6oyHOISr+WKG6HJDgip803unW5wcTJrpk4FamCZ5EC9C+iojC+o7nYD?=
 =?us-ascii?Q?7dcKCH9rJBlrEqughsINmocy8htkavjeJWdmgBCOzWbFX+hA4nAeMWxNQ+fZ?=
 =?us-ascii?Q?Oe3krhrC1t4Y4skWBr4EOF91J1fJG3EOzeFc+RrTQ+o0T79G4qxI6J7COTkq?=
 =?us-ascii?Q?EAtlAhErQUs+jNtk7VA2THrHM3PDqfgm9geO7lvAWqyay7YnXtZ5ZZBKRzcD?=
 =?us-ascii?Q?NhcnpX8xYqBmFzR+n4hLOUODKGyfVDCQbfpV0q76E+fr12mSpCwVeVJCOv49?=
 =?us-ascii?Q?3UyvK1pJCfx5psK68XnR9Sdii2wq2NEQr158/gibkkkml1ZQPOBmeWQRvDik?=
 =?us-ascii?Q?WVXL3QKIcWcGQU0QDpd8Otf/I1JpwAmDIPkCq+55g20X6EB4DqiHyHlQi7NX?=
 =?us-ascii?Q?KPxZQQxxK2csXzRb3PtxawM6yP42j99FbdHFr8BC0tvA3p3O2/xaBf46k8AC?=
 =?us-ascii?Q?4aMmZcRRB2qj9gto2nhHUBfNpVR092LnqKXdiiVK9Hp2mH2MUIArQlyIm5cp?=
 =?us-ascii?Q?G4qPLbYQ3Dt6A03b6xgZI6BtguG+oAi4iy6ghacTC2XyRk5wPBbSN1Gwe1Ak?=
 =?us-ascii?Q?zUT9NDjELsCCgWU6tl6A5Zgx+ySVusikloNIV46uKH0Lp0VVp4lyZ88Q4vM6?=
 =?us-ascii?Q?n18V32HMMuRDL2vP2oKFkIjdUQaazuuBJp4h4k83eCtapR/ZeaqtNlmBZAN0?=
 =?us-ascii?Q?ldHhzJ5GOHgyPITd/ODYBcm2y/FLDgLw5rjniYPV7q9wgGB4FunszSE/frTW?=
 =?us-ascii?Q?QJm0whiMU5H4DOigB0Ij3RndYEB0yVGD6dmgijk5IfO0I9Hpkpm5PxjlZVmJ?=
 =?us-ascii?Q?3DtN2XdfBi9VO0pIcBDxmmCcwE+6lvXz6p8Di/2U1GHFGMOiwZA2x+z6QnsN?=
 =?us-ascii?Q?aio0vV3pAf715ahiLSGRfBZyNWr69Q9SsJnj9Vj/YaJDAoSkp3JER5dPrgfj?=
 =?us-ascii?Q?a5eefmt4b1T59ewGyAlS049YNlQ0ieRGqHhI7XJLCXKNO6DjeA/afU9IZhld?=
 =?us-ascii?Q?o2aW+QC1PL/j2Gzc2d2oUGfllFePCgPzfd0YclDNejIneG9LlHB59mbKy82/?=
 =?us-ascii?Q?KqE7jNOF4gNZSrNjv4UauCcTY+rjqF8exgj4cItyinljLoEdF/4QKLVE79Zm?=
 =?us-ascii?Q?tpV6Ri2rkqzGRWjrN9EiMKHsKZrny/UdeJpmo6eEAGxb?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5924e32d-b173-4f3e-5ad4-08ddd5b0f9e9
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 12:50:45.6230 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VUBeyCkDMJp6KwOBH1nRwJ1ItF/+B9I3qWYVOxpEzL5V3uAMmsgs/kRxWmy7wAOJe6Z1GN14cbLNoFSxTSKzRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4680
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

On Thu, Aug 07, 2025 at 03:33:04PM +0300, Imre Deak wrote:
> On Thu, Aug 07, 2025 at 03:19:17PM +0300, Jani Nikula wrote:
> > On Thu, 07 Aug 2025, Imre Deak <imre.deak@intel.com> wrote:
> > > On Thu, Aug 07, 2025 at 01:59:21PM +0300, Luca Coelho wrote:
> > >> On Tue, 2025-08-05 at 10:36 +0300, Imre Deak wrote:
> > >> > The TypeC PHY HW readout during driver loading and system resume
> > >> > determines which TypeC mode the PHY is in (legacy/DP-alt/TBT-alt) and
> > >> > whether the PHY is connected, based on the PHY's Owned and Ready flags.
> > >> > For the PHY to be in DP-alt or legacy mode and for the PHY to be in the
> > >> > connected state in these modes, both the Owned (set by the BIOS/driver)
> > >> > and the Ready (set by the HW) flags should be set.
> > >> > 
> > >> > On ICL-MTL the HW kept the PHY's Ready flag set after the driver
> > >> > connected the PHY by acquiring the PHY ownership (by setting the Owned
> > >> > flag), until the driver disconnected the PHY by releasing the PHY
> > >> > ownership (by clearing the Owned flag). On LNL+ this has changed, in
> > >> > that the HW clears the Ready flag as soon as the sink gets disconnected,
> > >> > even if the PHY ownership was acquired already and hence the PHY is
> > >> > being used by the display.
> > >> > 
> > >> > When inheriting the HW state from BIOS for a PHY connected in DP-alt
> > >> > mode on which the sink got disconnected - i.e. in a case where the sink
> > >> > was connected while BIOS/GOP was running and so the sink got enabled
> > >> > connecting the PHY, but the user disconnected the sink by the time the
> > >> > driver loaded - the PHY Owned but not Ready state must be accounted for
> > >> > on LNL+ according to the above. Do that by assuming on LNL+ that the PHY
> > >> > is connected in DP-alt mode whenever the PHY Owned flag is set,
> > >> > regardless of the PHY Ready flag.
> > >> > 
> > >> > This fixes a problem on LNL+, where the PHY TypeC mode / connected state
> > >> > was detected incorrectly for a DP-alt sink, which got connected and then
> > >> > disconnected by the user in the above way.
> > >> > 
> > >> > Cc: stable@vger.kernel.org # v6.8+
> > >> > Reported-by: Charlton Lin <charlton.lin@intel.com>
> > >> > Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> > >> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > >> > ---
> > >> >  drivers/gpu/drm/i915/display/intel_tc.c | 16 ++++++++++------
> > >> >  1 file changed, 10 insertions(+), 6 deletions(-)
> > >> > 
> > >> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> > >> > index 3bc57579fe53e..73a08bd84a70a 100644
> > >> > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > >> > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > >> > @@ -1226,14 +1226,18 @@ static void tc_phy_get_hw_state(struct intel_tc_port *tc)
> > >> >  	tc->phy_ops->get_hw_state(tc);
> > >> >  }
> > >> >  
> > >> > -static bool tc_phy_is_ready_and_owned(struct intel_tc_port *tc,
> > >> > -				      bool phy_is_ready, bool phy_is_owned)
> > >> > +static bool tc_phy_in_legacy_or_dp_alt_mode(struct intel_tc_port *tc,
> > >> > +					    bool phy_is_ready, bool phy_is_owned)
> > >> 
> > >> Personally I don't like the "or" in the function name.  You're
> > >> returning a boolean which is true or false.  The return value is akin
> > >> to answering "Yes/No" to the question "Is it black or white".
> > >
> > > The question the function is meant to answer is "Is the PHY in legacy or
> > > DP-alt mode?". The return value is true (yes) if the PHY is in either
> > > legacy or DP-alt mode, false (no) if the PHY is neither in legacy or
> > > DP-alt mode. There are many other uses of "or" in function names in this
> > > sense, so not sure how else I'd name this one. Simply leaving out "or"
> > > would make it less clear that the legacy and DP-alt modes are two
> > > separate modes.
> > 
> > What's the opposite of "Is the PHY in legacy or DP-alt mode"?
> >
> > Would that lead to a simpler name, with the reversed return value?
> 
> The opposite is either TBT-alt or disconnected mode, so the reversal
> would result in the same function name format.

Would you be ok with

tc_phy_owned_by_display()

?

> 
> > BR,
> > Jani.
> > 
> > 
> > 
> > >
> > >> This is a nitpick, obviously, so I'll leave it up to you.
> > >> 
> > >> Regardless:
> > >> 
> > >> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
> > >> 
> > >> --
> > >> Cheers,
> > >> Luca.
> > >> 
> > >> >  {
> > >> >  	struct intel_display *display = to_intel_display(tc->dig_port);
> > >> >  
> > >> > -	drm_WARN_ON(display->drm, phy_is_owned && !phy_is_ready);
> > >> > +	if (DISPLAY_VER(display) < 20) {
> > >> > +		drm_WARN_ON(display->drm, phy_is_owned && !phy_is_ready);
> > >> >  
> > >> > -	return phy_is_ready && phy_is_owned;
> > >> > +		return phy_is_ready && phy_is_owned;
> > >> > +	} else {
> > >> > +		return phy_is_owned;
> > >> > +	}
> > >> >  }
> > >> >  
> > >> >  static bool tc_phy_is_connected(struct intel_tc_port *tc,
> > >> > @@ -1244,7 +1248,7 @@ static bool tc_phy_is_connected(struct intel_tc_port *tc,
> > >> >  	bool phy_is_owned = tc_phy_is_owned(tc);
> > >> >  	bool is_connected;
> > >> >  
> > >> > -	if (tc_phy_is_ready_and_owned(tc, phy_is_ready, phy_is_owned))
> > >> > +	if (tc_phy_in_legacy_or_dp_alt_mode(tc, phy_is_ready, phy_is_owned))
> > >> >  		is_connected = port_pll_type == ICL_PORT_DPLL_MG_PHY;
> > >> >  	else
> > >> >  		is_connected = port_pll_type == ICL_PORT_DPLL_DEFAULT;
> > >> > @@ -1352,7 +1356,7 @@ tc_phy_get_current_mode(struct intel_tc_port *tc)
> > >> >  	phy_is_ready = tc_phy_is_ready(tc);
> > >> >  	phy_is_owned = tc_phy_is_owned(tc);
> > >> >  
> > >> > -	if (!tc_phy_is_ready_and_owned(tc, phy_is_ready, phy_is_owned)) {
> > >> > +	if (!tc_phy_in_legacy_or_dp_alt_mode(tc, phy_is_ready, phy_is_owned)) {
> > >> >  		mode = get_tc_mode_in_phy_not_owned_state(tc, live_mode);
> > >> >  	} else {
> > >> >  		drm_WARN_ON(display->drm, live_mode == TC_PORT_TBT_ALT);
> > 
> > -- 
> > Jani Nikula, Intel
