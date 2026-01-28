Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGR4F3VCemmr4wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 18:08:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C349BA68AF
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 18:08:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EB8410E73B;
	Wed, 28 Jan 2026 17:08:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nD0IDmud";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8BBA10E73B;
 Wed, 28 Jan 2026 17:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769620083; x=1801156083;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=Ib+3sgIOLu9TkfM6lu1poHENvvd75wBTXkb7mmvqETI=;
 b=nD0IDmud+PDIDuFa5OGB3iLaXIsRsz9nOc9NDmp1RocMhq9AuJzi6AYu
 YTd0ZZ8OHbanZX6T5c8v7FPXO8UXf71GJYBKvy3p2kw3Kj/KavqtZTmW2
 v+eRQVVTXkYzNmxiZ0KQckfkYQsKndC3rWSWJfFlUVAvIpPOGuT5t5jZx
 j4Rmftg4tM7ZM4PoriU+eUpBszKBdU9Zct7yCdncVU99atuMGso4Yow+Z
 QLXQe4lx1w4Ts6yA31FwRrmNdBut6dor2qPdVjwbe68vAYEbaPruk/ofY
 EiYpuf7fiu3q8j8nIrnclByxPhGmNd2hflj4L49WQ0ytNYiInaHMadlpa w==;
X-CSE-ConnectionGUID: /lmNld5FStO3JCwE2N7Q5Q==
X-CSE-MsgGUID: nkqqPbI1Q9SuCe72AH7zeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="81473575"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="81473575"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:08:02 -0800
X-CSE-ConnectionGUID: eFpKxDspRaC5XnfDbe31yQ==
X-CSE-MsgGUID: fp/YUxFgT6aE961hPQ/LFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="213291148"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:08:03 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:08:01 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:08:01 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.23) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:08:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WyleeT6sQUSdg1bAN45aOthjPJ50BdVPdyyWvwOyGfCdsZ9UK1FIj5oS1ejdzVukWsst1tCJy7VQJltUJRvoYN+j4l02ke/dVV/nHG8l9tp3UrMiimVAX0cncpsnFRw+HbFGGRrUoHXyCCo69txj79CRL5G8crvs9G5pJL3A6qYsZNAkoV3iVX4pWUJ421KA3CmXyWZrW0vt9POjeKJxAofftY3x45gijpPp2twPpAUfpiiWkZIzWvRkCRr7uc2iwJy63OTiVsvUf2csdHAAbLpZElMENjoCYZkbaPIOtTbbgxPUP8ywhwP5e8qe3+LhK2M1PwlzU9o39UwB6KvVYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H9QkrliZo/gR4tWm6h99R3rzp1CnTxbibP5V8ZbD7qI=;
 b=l6U4luexrngRpCPkJlGQ/OCcrMk++OQa1bAk138kpksIFcYP4V3rbaVerWbIqgX0CmrUn9/atD2axW26u7RXJ3fdYDxZg9x14NuVZLCJlW4YaeMz3UjnSFrjNeKEeDF48fEAqxi7Kqsck8NCCHbQ2ETC9sXCPaBuVTVwVGGUaTonaKTXT5hFJjmpsWZJU3FAEXUfb1z6I16vUDEsWzwiky4wOp21hfVC/9Z5FRJu3h3vnw1lEiyVHl2y5ykqMUoL9cwrGEJm1x6Ap6FMKUsa9qUSm71EJ7hpf9JCm6CC+yI/1bzrXCXQDqqIyQMacohjL6m//Nll2T6Snk4aF6435Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB7972.namprd11.prod.outlook.com (2603:10b6:8:124::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 17:07:59 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 28 Jan 2026
 17:07:59 +0000
Date: Wed, 28 Jan 2026 19:07:54 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 06/16] drm/i915/dp_mst: Move the check for dotclock at
 the end
Message-ID: <aXpCan2Kip_HHzuX@ideak-desk.lan>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
 <20260128140636.3527799-7-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260128140636.3527799-7-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF00002BC1.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:144:1:0:6:0:12) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB7972:EE_
X-MS-Office365-Filtering-Correlation-Id: 351d9d65-b67e-4e88-96eb-08de5e8fc966
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?LCZUwjpRUUe+QNDI+TafYrUEom6jaQSQJz643dkuzttF4/ofuHwkEGKeU5//?=
 =?us-ascii?Q?73iSqNQYImjuGB5jHFbvTA3RW1UXXgR70H8aBrdubxhAsHivqV+r6WvhbpNV?=
 =?us-ascii?Q?HS5Q8wkJ0eJBsEJLqwv1rFBR7R6gINiQWNBqjJB/CNV0fD2z0BOgXdYBxoW+?=
 =?us-ascii?Q?gK2Lgbrg88ScEqkuQbP4WneiEd7VJeWzhLYQ8atXWmO6CYm8aCI3Lnk2HSeA?=
 =?us-ascii?Q?SI2+yaBV2vJCudMqr9GHrOs8864PSa4SY0EGw3gqaXl4XdTkrQDqT7v8sp94?=
 =?us-ascii?Q?Tuw1IZjEPiH0X21bVh0avfM6FeRfhDIafyuimpJoAtQ+cEdTgCJdN9tkUX2n?=
 =?us-ascii?Q?asxtPgUR8t+FGe/YbGxAh51mUh75VbSeHnJZSe3BDhSQgKDHnnlxEaHlapTm?=
 =?us-ascii?Q?52uHW0yzK7NikpAtUTk6+NfMsLS+TK1MyKOHC1pZXNZ9K0dr4onYuIkeJo4T?=
 =?us-ascii?Q?e6khMbwr5BARX4spVoeNz9bS7I+simMRnO2zuFctF/rAtHokt+lJ7ByIVUGT?=
 =?us-ascii?Q?+KxVyGJy14m4Hm7DlAJTEHyPqbd4EJar2n87ezxMy1RwD+0v34Cx9hV33X+6?=
 =?us-ascii?Q?8Hr36WStRU20CVQth/Y8Nu+d/kTnmdBAIJc8px6BcYT/rHJ9TZs71w202EEP?=
 =?us-ascii?Q?ca4ND59FHeb5idGPiUhtNzZRAjbRzXsXHd5MxwoFbKFoZ8elQizN5OKPVJcl?=
 =?us-ascii?Q?WXkysfnk+l211Og8TA9pHxNP9h5TmjrhRr1+vFpd7kydmG4PF9MfoGh92tOU?=
 =?us-ascii?Q?B/PQdRGeaem5v/AEtCjyaTt2o8x+DUccJcH6rgp+/2Aky7/UL/7j84PZm255?=
 =?us-ascii?Q?2BJCDLyTUMX3KI/cV8g8ltS2l3FKzhw7IvUlkG9tzDz1wxONBsS7BaiBVk60?=
 =?us-ascii?Q?uAvfTht6sVxaqu5UxyM7veaiJzHmoRSOo6Z8OUszT02hP85SNqVLFqJmvNau?=
 =?us-ascii?Q?oErZ1c9h9Q3TfkMW1mr1pLNZGHMVDK8v7j9vYjccL8Y3nm9pGpY/DTKrUE4e?=
 =?us-ascii?Q?cnd5hzCFS4JgifZKYUGn4BfhR2QvywHdfzTuGdo61kGNC1un6UPpZ+MOkelL?=
 =?us-ascii?Q?SeVVkM6Y/Vn3VWykQaTgQf+sr7FnuaBhbNWy9MAqej+6ScY2mRRBTNlCgq0u?=
 =?us-ascii?Q?yM85OWyYTAPmxRvMOdzc/KMDlsOeTR0nm3MY5DLDXa7cDhliMUr/Qai6B67l?=
 =?us-ascii?Q?b5edWC+n/CHbr3nMYxf8l7RFBSunNkux4XjlwUOd54zXQtVWoUgmjJkcVcc0?=
 =?us-ascii?Q?6QImmRZxAHWx8gogkwiqyW8qn/1bNtaUODPhmbbeM3xTmqEQQP8rdlt8MLrR?=
 =?us-ascii?Q?4Ec3ErSi+WvnGCxZH0It3D6deWxvh7U64s/SmUvUlXTZCnJaX9Y8fVZtaOCg?=
 =?us-ascii?Q?YaQLbemtwG3nsNVt93/tLQazw6YNwXooNeGCcc0iiNNo70N5bWoXKR8Rp/Bx?=
 =?us-ascii?Q?2QI/SUkzqPdyjdc0gyBvlfm3RotJeBTHdfufjf5DUAbC2APew8TIfBmNObS+?=
 =?us-ascii?Q?qnTHfrfBBujjR/Lp8+QUXf/18J5Yek8OhMv7nP/uO3vp2cNuBgmBdzx9Sejl?=
 =?us-ascii?Q?yjDf5C7nM0XaBcMPoSI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ukB7ABtTj/9mapoXmx4nbSxYkfL5CSaFucxCsLTwV1sxixZlsjoXeyHgqbCV?=
 =?us-ascii?Q?vSbL5nFiT+/cM5TQwLKsfoJ3QhldylxWV5hW6ttR0AG5oJfqCsV7eXwOhfhz?=
 =?us-ascii?Q?szF5M+xwN09nEGrbGwamTADZ4sn3qZ/aH6gp8aNiiHdc5+JucMbhvI9TIkVn?=
 =?us-ascii?Q?BN820LlGd6lY7rc9P5JUWgK33Y1WERDJMaVcbTRPTU0Y1ArC1w/HuYYjFYK/?=
 =?us-ascii?Q?51lJRyyinVAM8JOudLDF6/hSryYGyZoYTFs2R/UiDkAuHULT9VWRfBbrbRCh?=
 =?us-ascii?Q?cuFEiuM1uKPXq09M3lHBMsSVvWBfLX2VsdvjulJYyS1tENK8Mk7GtUW75ViM?=
 =?us-ascii?Q?APJprbkOiwjE9chrFl/GqpqsHN+6qIXxC4tWtNkgWEI47Y7tZnZKsFfaNTZQ?=
 =?us-ascii?Q?ZQFjH5RQ6rR26H404KleM3bnT9DwdpY784jpuI9atgC6iSFFJlrjUJkTOn3z?=
 =?us-ascii?Q?kUgYVWvO9091pOpuzFOoCkL4fgE27qCIl5pLnVPCT440GJIEl7zoVrGZWZpj?=
 =?us-ascii?Q?G32jVKcnFT9PRRFyidziTDSUfaSdk9kR51QPE/zzKB4Y4MPFAioTX58OOxrr?=
 =?us-ascii?Q?Sef72byxTR7KzX8YcZU2sx2/8XlUiRi2RNzuV4Ekv1Ps8hz3wGkCfzm98i1f?=
 =?us-ascii?Q?YXc8v+vLBFfTR2cjl5DEQajM9LUoQxuAv3XSRbWVaTTwJyCkUApxcChNF6Se?=
 =?us-ascii?Q?jZzN7EIas4/Guec+dOETn8VCPud7JueowjlE8xaPdOSMmB1EdK+adrJul0SK?=
 =?us-ascii?Q?qsSdZQRpzqEL8xywCikaQNi9o/4jxgp57dDJEj6SWX24HrW/y0Q92NQv33Wv?=
 =?us-ascii?Q?efTVb5HYjcyPTrgamzomh1uIaSwb2T2jihDny0AY4xh9AB8TJIza/xDH7Y/U?=
 =?us-ascii?Q?JVbksKkhguzAMfCQbRYS0EL5OOsTSesnVatDtejDzOVBhMK3R5cCWM3PQgHA?=
 =?us-ascii?Q?lVUX1oz1rS61SE2/aKdOuiA5MyNBg64QIaXT7CwKMqFa46lXQ055HkoGHynW?=
 =?us-ascii?Q?Qist0zLY/sZa0O4S0iBbzt5zVRAfgCsHDwP5DpzbQ43VJBDRpsBT8jQgk9L/?=
 =?us-ascii?Q?YU3iCS38/s57VfLJsDU+V+dwQrhhjKWHB7TqitghlKoUmltdGWH2abZ6P5SE?=
 =?us-ascii?Q?05Ix6zE9ZISHouXU9Fp7SPdgnxY/zvCYVsw+ZTcVvB3neu3UsUnvtgX37I1R?=
 =?us-ascii?Q?rWK2DS5TTacktkupingp0K1ccJEI1hHVfxyRA1oIslxhgrZ08XsA9yhVfCaN?=
 =?us-ascii?Q?XZEHmBaIuZaMRiU0HYaAafxFxaKLgMNohTxYg1L+ebmDDnEGymMjwTeXluwZ?=
 =?us-ascii?Q?r3UfKZJVM3q8OY6MIUl9T0tqNC7WHSfOkews9RglJT7Nb/hIaE9jgpq++wqd?=
 =?us-ascii?Q?C308tidJMYiXIrApZgUNnxIKjlc5R6LSIrG3b1iC5KgoDHREZFCVDfaUCpyt?=
 =?us-ascii?Q?z4yCsJM3l/UsMvWu5oofCALup08T4M/oeSK0+YY4CNI+LdJK+FE5F8jdGTHc?=
 =?us-ascii?Q?x8xrPQxoN83o5aJvO2ZlzGG5aXM5SOOo41NKeag/6TbEIJ/l/IEZ80TWr1g2?=
 =?us-ascii?Q?jcOnA8cTrtgaCDlNZBS2V3nTzKdubl9oOrz5YH7juy4833253K0ZP0Wxt3aF?=
 =?us-ascii?Q?abYn4cH+gBkPwWxBWxO0JOzXIKLv6Zp5r7FK56xzB7p3gYyerm1CxQqpgqlV?=
 =?us-ascii?Q?7XYLWS3kPTvcwOhML3GNs2JRicsMYCZX6Z0nis177/y9wVFlTXqu7ASdN7ra?=
 =?us-ascii?Q?lN2v4+0jiA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 351d9d65-b67e-4e88-96eb-08de5e8fc966
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 17:07:58.9097 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5hlF1Qd5M1Ne+wfgS/fxrkphBuGLqj55UyNkTUI8cp9310t05b2GrKJAzW1HQmP2xS5c7GhxLpONB9Oo7b2aNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7972
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C349BA68AF
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 07:36:26PM +0530, Ankit Nautiyal wrote:
> Refactor the mode_valid to have all joiner dependent stuff together and
> place the check for dotclock limit at the very end.
> 
> This will help in the following refactor to iterate over the joiner
> candidates and find the best joiner candidate that satisfy all checks
> and limits.
> 
> v2: Update status to MODE_CLOCK_HIGH if max_dotclock check fails. (Imre)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 22 ++++++++++++++++-----
>  1 file changed, 17 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 24f8e60df9ac..24b0020acad0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1470,20 +1470,19 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  	 *   corresponding link capabilities of the sink) in case the
>  	 *   stream is uncompressed for it by the last branch device.
>  	 */
> -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> -						     mode->hdisplay, target_clock);
> -	max_dotclk *= num_joined_pipes;
> -
>  	ret = drm_modeset_lock(&mgr->base.lock, ctx);
>  	if (ret)
>  		return ret;
>  
> -	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> +	if (mode_rate > max_rate ||
>  	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
>  		*status = MODE_CLOCK_HIGH;
>  		return 0;
>  	}
>  
> +	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> +						     mode->hdisplay, target_clock);
> +
>  	if (intel_dp_has_dsc(connector) && drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
>  		/*
>  		 * TBD pass the connector BPC,
> @@ -1513,6 +1512,19 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  	}
>  
>  	*status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
> +
> +	if (*status != MODE_OK)
> +		return 0;
> +
> +	max_dotclk *= num_joined_pipes;
> +
> +	if (mode->clock > max_dotclk) {
> +		*status = MODE_CLOCK_HIGH;
> +		return 0;
> +	}
> +
> +	*status = MODE_OK;

*status is guaranteed to be MODE_OK at this point, so the above could be
dropped (along with the return 0; in the mode->clock > max_dotclk case).
In any case:

Reviewed-by: Imre Deak <imre.deak@intel.com>

> +
>  	return 0;
>  }
>  
> -- 
> 2.45.2
> 
