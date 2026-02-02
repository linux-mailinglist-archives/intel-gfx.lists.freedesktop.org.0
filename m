Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MF8HN8c0gWlyEwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 00:35:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F728D2AE0
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 00:35:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E442210E4C4;
	Mon,  2 Feb 2026 23:35:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XDem9e0S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C221810E4C2;
 Mon,  2 Feb 2026 23:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770075333; x=1801611333;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZH7IhUpXyu4QgWL1rPA8AujnDT/L9p439CK6q6fvNY8=;
 b=XDem9e0SEHx0EybEUZ1ljzm7Z6xWUyT8h59spOu1RVeZhBBRk8kfL3+i
 UyoZAovTN6ZMSZk/Z55IIDImS65TwH47e+m9l3Cf3G9rNQVfHx8wS3NSo
 O3INK02pOU8jmyybC9VPiwRRbo/we/H2XLqLgCd2p1LFwCghoCtg5RybV
 DgVgFMQXeisaVZ0yMf9A6R/exbDOe3huqoaqzX8KBcJGeWZVkKZDGsQW3
 DkC9gKSMSTj1lX0/iHTjrjdDjshJ04VwO+eOSFZVShNp4/ItXmBxPO9x+
 hOaeTZ70K3RtYtExlYS3FWFPaxxSZHWcgcitqYMWvwBtuBwE1jeV6RRLL w==;
X-CSE-ConnectionGUID: jKZZyVmaQeaZ8r8ohA9Ujg==
X-CSE-MsgGUID: fBO8fAA1TJWjs/ygp+lP4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="71150225"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="71150225"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 15:35:32 -0800
X-CSE-ConnectionGUID: 8/VYb9HBQvK/6yocKqhXcQ==
X-CSE-MsgGUID: RrUJp2C/RFea4NiM+YDNHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="240721750"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 15:35:32 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 15:35:31 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 15:35:31 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.29)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 15:35:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D8U4/ImnA4S0UlrnPxLUsUwXahA+zV/4jyTEUwPi9qz6bPccsCypuBE4zqgi8xBPpQQOAcueNfAS8HpIWl1qxcLZcyXyOxd0gJKfuejDDKqwWO6xpfWihqveyEkmxxaxz0vHmSOaqJ3/9SF2nWVDBYrG73VoCY76RVUcjsIoPNKIkgI37HKrI48FgBcGRKZMWrQ/oLr0iZZoLDCLKZLl/ptg8HyPNkenhile+oz1hpIfhA5bDfwLpMAcKp+/pZsOxcDHI5E/9C4kmrylU+Pm7cyrH0XK6uqYs9GidlPmN6lLUrrr307Z5A0kUjHpihedxtsDNNmsWzJBJeXFLt07HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SxKPhUIDvDTnO0lgflbdHXb2tn60F0vIHRex1ionDuU=;
 b=Oh2A8E63/MdzxY1osfk8ISloxFgOtYMEKYVLsJh9YznoHl5BQtVRWeRqJuOl1vYiZsGt8gPD2VMwXfuz1Mtn/HRA/TqjLU1nnVMg0lwmFPdY0p+SwWnkj3XZaNod7JWWOkGef9AMY839SyxijmKF2Ct8+rerOXPSauLtE2/1TiDMOEMOii9RwTgc6bgCtzFDmfVvBrudkHjIBQxhgyANCnp7QVgRHx71uWGPHJ47fzmKCPXfRx9/JLs/8SJEfQiJrGZRmuIKZaHVAkNKbtHInxCPy0mKkKyi3gri6LSIlvlZbexoVlIfZhKylZVAZLIm9ZHWtSIzKPQ4rTKGUy1sIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS7PR11MB5992.namprd11.prod.outlook.com (2603:10b6:8:73::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 23:35:29 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 23:35:29 +0000
Date: Mon, 2 Feb 2026 15:35:27 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 12/16] drm/xe/xe3p_lpg: Enable multi-queue feature
Message-ID: <20260202233527.GN458797@mdroper-desk1.amr.corp.intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-12-653e4ff105dc@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260202-nvl-p-upstreaming-v1-12-653e4ff105dc@intel.com>
X-ClientProxiedBy: SJ0PR05CA0106.namprd05.prod.outlook.com
 (2603:10b6:a03:334::21) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS7PR11MB5992:EE_
X-MS-Office365-Filtering-Correlation-Id: 41e8d21d-fb3e-476a-af69-08de62b3c00d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dkw5qFSFeR3pABJDHOQ5eEE2NJmsfD/ufPs4NGD4R1wlEmz9ccH+Axx/iu35?=
 =?us-ascii?Q?2VTztfSz4f5pYmGAk1cOZ8o0qR6OFcL5S7zuRWFxfhUHhU0bBJVTgsm8hp17?=
 =?us-ascii?Q?ieFyUk1OEs7Tx1EsLSBjIzyc/27VqTNJMBRgaTCZXfg27bUfK8SFBnlNyMC8?=
 =?us-ascii?Q?a9wH3WzVfYBTqTlfohPqVzOZo17VcUVsMDjux7y4yavxRlwiHQDMHr7Y+DG+?=
 =?us-ascii?Q?PfNbzIAM81doK2hEWddKaHpNmyCmkCqZBpnVjz6kKoK4m1ZhGPQbUvssxn4U?=
 =?us-ascii?Q?hP87aqhhBccgFrS/PSC5bDpoSSaqERxJBJJv3S3c9XJ6sVeMcn2DzQPZNUU6?=
 =?us-ascii?Q?wrXrjCTuxw3HVsCv9Y0zMIw+4kC3VVTzv9oNmTuC4lx72L+WH9B71kfwpj1k?=
 =?us-ascii?Q?9CrAnQt3K1x2ye6Gy3EJ+O5LPSKDQAdbqqAKwsBNs+dsIZASAO2K5Rl9TeNw?=
 =?us-ascii?Q?T55k6YEn8UIT1M8VIvVPPG69THMR1IG59kwlbhptPzW4xL6kbj5ekEtc224c?=
 =?us-ascii?Q?5TxFZepibUtz7/AhiAWHMo76hiD6mQM+sDjkTxc9yHE5vxdlbwbNJc2bbRJq?=
 =?us-ascii?Q?OubT053n2WM5uKiFu4CkS+aGhvjEsMlLuwr5IgOSudvPOr5cXOQmBRJdLwKm?=
 =?us-ascii?Q?mBH8rEUEdCwNd7vgr3O8TlIBU9uvJRqMH6mUrWv6uwhq01DF21UilhrULw+E?=
 =?us-ascii?Q?T+8whYkj47u5MNSpOJ3F4BXoFPp6Cq72KOkHYSZqzh0fGhstqQ5wqz3/5x5t?=
 =?us-ascii?Q?7TMrb3vuHC9yH3hj1Mm7VV7EHxFFYKyiUfsi2z3z+2HdBK+AresZjDwtji9P?=
 =?us-ascii?Q?plrW69NbGPRMbYaIQR/0W85k0lgteDqImyBBgSN481kI2Rkd5xBszhqzmIsP?=
 =?us-ascii?Q?DCQI3wXmz+ad9qdk/6Ew8UhRQlq2eLqMzuDTfWnxbJkve/LZlgZo0Wc8AiHg?=
 =?us-ascii?Q?RhoIDL6LVw1abo0TLds+rZ46h0MUDfSANeMStMMgG6qIUPEoDnWdRY2vf3gO?=
 =?us-ascii?Q?+lwM2YWyG4jmWtdjExPbOTn0EcztQg9rGL12kqCLWSjrrQogtlR0tG9EKFhv?=
 =?us-ascii?Q?aWdWAmF5QGHTNGhsGRjTbpMUyNAvaXgKdMwTvmTLYZgsgiQT5PhfCyqOGVf1?=
 =?us-ascii?Q?gzWYXZ2OdnNYfo66xHSguBT3G7bjb5NBXimDA59WtM/akqbTT6eU+JwEPitI?=
 =?us-ascii?Q?hRrV/d/PvWaSFkXLw7okGprO2nsdSWL+//k9JPYtbzxnRsOAZmF7Fd21dgYW?=
 =?us-ascii?Q?m6WhmPgHWaLppfDJ7IfuPxMenUO6HuWEP9vCJ6Yx3T/bU24RNOCkVsjmrwF7?=
 =?us-ascii?Q?snEhy+G23F5nYu5OjI6msEfO8y+7db31Y4vY1i+h76/06X7AsZgTq4YnbOKR?=
 =?us-ascii?Q?wq/Hr4onWj8TuzaFqPUJyKMc6MLpcEc35dK6o/jPehYZ9odeqGkkASrviivw?=
 =?us-ascii?Q?H46WoJPceDjUr2I2+DMOCKJ9Jztgb4X1VYO/lCRkhfU2FEeHIUaunWMSOKto?=
 =?us-ascii?Q?QdRr/MJ7g/jRoUJ8IhioteHiJnN07cYPyHHrVGzKh9P27m2nd7Yax2D0ULrc?=
 =?us-ascii?Q?tSqfXAyOvP9Qt4vuRvY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zAHBXlbrFLCpE7zjnma3yNuoFnlV7I2z8Beuy11PIh78lrtn3T/MH1pOdkm7?=
 =?us-ascii?Q?ezK37fB5zEAVL41CVXtCiiKnGek9H+dbDvSJ6HgjQipaInh/L/IWzfzFPzTB?=
 =?us-ascii?Q?mIEoxnzlhW9OGOD5/cEnKXUTK7vM8hNbEXYtOVo47aI8UZdlVhTN2kLka6rw?=
 =?us-ascii?Q?AZ9YeiUNrYPWp4qDLEGty0Jb3K2SWoc/Z39lJhr43lWYQh5c5KBq5iRdhyMS?=
 =?us-ascii?Q?fDWd4yMCw4lwgCluenxHd9h9dwQTc2ihcBS2nJmGrwicerbYoT5Qysudl5xi?=
 =?us-ascii?Q?su8tp1ZlC7DkeJmBiKY9j8tBo+h2QLj9yTe2924pGFYcYH2RtVyxb0o4RNRl?=
 =?us-ascii?Q?GFXfI+jwDLg5FIOnPvX2aYMSTXaNFor09FFSOUFKsAeRRHiKMG6iBQNCFPG7?=
 =?us-ascii?Q?VhXhCab1pjebH/KEAXnCcIwHS4KLjE4caRJbpOA4biY/F6nKyUapkj8EJu5R?=
 =?us-ascii?Q?WEFklX2Al557dOuXfbjSjUaPJz9FPCaRWPO27o3VGUSLPslu2fUcDWBrI4VT?=
 =?us-ascii?Q?lzC+EyS3Vsf+zLtXkzZBkHZ609YMA5VO1aZiwiglg+S/7YJCRPiqn/kaCQxJ?=
 =?us-ascii?Q?NMynDy3/twCw2BWhVEiM+lp9XnmDBvIfqSgExx4AOSWfM8dV/6bEGcdW1C+f?=
 =?us-ascii?Q?keL+NNI8L/oU/qVdJD0otB8tF6LHRQtV4BxLSKq0cnlE6Sx9aMlIOfPbWCNs?=
 =?us-ascii?Q?yMRwc4CkCCyyEgdP0HEkkWVlbY6foVAIHh5WJmUliRYl99F0D7Lvo/UTaawq?=
 =?us-ascii?Q?7nkwjTQRGmfuLS1WOimcat++6TxzHFC5Lc0LIlMuH+c06L4d2R9GDJ8iqDvw?=
 =?us-ascii?Q?1QUhLEa5N1lnU5XmLzfVUbOgTRFFUt+Q7IvnQgeT7r+FIAcdZZoVIhAsPu3r?=
 =?us-ascii?Q?KsX57rnOnn1yhk07IRUzDgzIoWWUfB5Zbr5VhA1Y8+YF5JbF/myCDpa5vf/8?=
 =?us-ascii?Q?Gpf/bi6jng0ut22xqLsjWL1R/uFrHKzNtmp93E3EKMs2uA+ohZn28ZaiOhzb?=
 =?us-ascii?Q?uvX1/Kw6fh0sYne6OcciC3he+kNW6k8jaQIFnS/gdZFHjX5G2X6pmEyML837?=
 =?us-ascii?Q?oj+YR027EVnvtWz24wxuPEVCMi/R0XI1lrYHkFq1IzkCXRY610PuguqLkmTZ?=
 =?us-ascii?Q?lPa3vFkJfn3AOp/5ts3oLevJ2z1MYZzAdQsB2Ix58IZHpSF2RR+T9ek2eRvv?=
 =?us-ascii?Q?D1m93SkFgdUcBjvdiC37exwiS9M546nN2W8uOjJ7ZSVgreyQF3SgLTIFr95M?=
 =?us-ascii?Q?DoPhUA1k87E/ZEBgseFSxwP0wxUi5TEiZgayR6bqKRx8c5q5k+pKTIpf/DOv?=
 =?us-ascii?Q?ylklfruNBeA7hXUUopVQ797wNqCjLsujF2xhYQ0cJwm8sO1YaZSgXTrjQjuX?=
 =?us-ascii?Q?Pal1ykz3lV1Vp65ueU5IjpQwgk4/HjmedTAtFCyXmbaeVcJFjZOqEzBRhvSJ?=
 =?us-ascii?Q?FDA3rwWWkD9qU8mJTx21Mmmqm8LNmHnODkkWugCSJNM0aDd9J4GXwizSoJdA?=
 =?us-ascii?Q?5+v1YKyzot5lzZfyJA4KRnbwV7tpYTB1ac5hKglhS4Jc5/IrfctxfCDvnR4Y?=
 =?us-ascii?Q?GOd+fAZiqq3PGKxHhwTIoYPDgG+lc3+sNZzkT6PFPzrFB4vWgHp9cG5qdkGz?=
 =?us-ascii?Q?FM4NcSbH05UXVVjXAtaHbLi+UdDsGSiGZT4xfAoWLkCPTjKRRSGh0tb2fvqA?=
 =?us-ascii?Q?a/Fyh/ouyn9cQSxHlo2NuVDm5T4mD8RXf9Bt65kb50rOqAegA15B3KVTRwpj?=
 =?us-ascii?Q?/HLPU4lS6xIybaSIggu3sUcu1vEi4OU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 41e8d21d-fb3e-476a-af69-08de62b3c00d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 23:35:29.4957 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3ERU+3RY6DZW5Q9RWd/2A17Z4K/BVuHYyLktgkO6H6gGvN5UUcmxvzLp4WcXfEpv4CrgpQSbZB8+T9iUh+fLCsMfQTa45sO13y+Uv28Ig4Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5992
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6F728D2AE0
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 06:43:18PM -0300, Gustavo Sousa wrote:
> Xe3p_LPG supports multi-queue on both CCS and BCS. Add the necessary
> multi_queue_engine_class_mask to enable that feature.
> 
> Bspec: 74110
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

As mentioned previously, I think we can just squash this into the
general IP definition; no real need to keep it as a separate patch.


Matt

> ---
>  drivers/gpu/drm/xe/xe_pci.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
> index edca562462fa..9bcf7c067479 100644
> --- a/drivers/gpu/drm/xe/xe_pci.c
> +++ b/drivers/gpu/drm/xe/xe_pci.c
> @@ -108,6 +108,7 @@ static const struct xe_graphics_desc graphics_xe2 = {
>  
>  static const struct xe_graphics_desc graphics_xe3p = {
>  	XE2_GFX_FEATURES,
> +	.multi_queue_engine_class_mask = BIT(XE_ENGINE_CLASS_COPY) | BIT(XE_ENGINE_CLASS_COMPUTE),
>  };
>  
>  static const struct xe_graphics_desc graphics_xe3p_xpc = {
> 
> -- 
> 2.52.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
