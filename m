Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9/PcNdn7R2oTigAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 20:13:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 804E1704CC7
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 20:13:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=H2QsN1FK;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9586810E669;
	Fri,  3 Jul 2026 18:13:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E05F610E653;
 Fri,  3 Jul 2026 18:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783102419; x=1814638419;
 h=date:from:to:cc:subject:message-id:
 content-transfer-encoding:mime-version;
 bh=Vb0xAitWlbH5VaVTlxFhciixu7r/qISYhp9gvJJ+eKA=;
 b=H2QsN1FKB310xEVK5XTiAwum2eMbyOn+GiEI9nus6RidyvGKfx/vFjar
 gVS8Bu+CDDLq0Sh9rHiQ+Feg1KO0ZU1sQzzCHmG+naUrX/N+iQ7dBsF8k
 ngyrls+v8V5BBXQgY1IvbrUPzdOFVFrZ+ktOowwYg0EZ9Xe4kTUdD/IIj
 pgg8DlCYZR5yA+UUB1Uu4edG0WN2o2+mYFXBrWQQFKbLUGCGuFtTBSPNX
 jJECYAZGTFloeafd5tiCxogicuu8I+VOt/g+bFEKSshBzjz8aZidPfUTr
 SbFpv3x1RD2+w2nj3FbZ+VBQTqtysBvegjnreblqx4l7CiwaqIIK5WK2c Q==;
X-CSE-ConnectionGUID: wRdlMap7Sxejm8X8DL0RYg==
X-CSE-MsgGUID: yHgyzYgDTBuDLKzlNrHG3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11836"; a="84045858"
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="84045858"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2026 11:13:38 -0700
X-CSE-ConnectionGUID: ffMPh/LxQ1a2RsNR+SAzmg==
X-CSE-MsgGUID: XMLrjMmTRCuSSNf71QsHXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="250512705"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2026 11:13:37 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 3 Jul 2026 11:13:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Fri, 3 Jul 2026 11:13:37 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.65) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 3 Jul 2026 11:13:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E6uPEJ6lsMDtdn1yDPScVRQeD3iOKw8oFTvgQ7pSCgSeyxxv3HY/dOjeSt4tqFcmUCGM//NuEJe9TnKWI/cKtRE3fvDj+UueTG9lmQrVc/r3kgl6utzzrctBeVQnAFTNlOImgD2pOPxN1ejsF7zmHT490kbhvOiwRpDGORHBvEywAR5rTurDsO2E2sj954PH2W841phbKjf7ow0mvwpp3iuR9hfeISr/VWBnQCd+bcCJHrBqiPPocE+7Btn84Gv4iyqcL/Ax5Lxjt1fwaomRZyY4jnUM0jbHBm0t80lvEYCwtYSyII7cXk1mZ8iKs9A1t1ZzrX7v80iv30zB68jyRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VJh6POklRJwgEUEYNoZ9JHdCv9VV8UTawA5j5PBLMg4=;
 b=w1oRS9lPQCL3eps+MBy2EObBGsVXDp85xqiNR5DtR3Odsp4AgwUOvs1nK8b373ioUTpSzYNq4g1OJ2N/eLKWACXv6ajqIfqQcZV0XbVdipfDUWy5sYH6p/f8yqfXMlt0lWiLm1fcJR9NTrwreWTpGRQ/jEBBptVUurVWsTeky2T3093d9Gwog4wYz8VVdU9vx7FRdxAqLnMiSGH3oSSLjgF0cuw3lmQVxfUXNYggampI7OQPvcISEXIVrHTKqIJis0A9jfVjyo+iSctJNLGyBsfvdITgMYSX4evoGWCuOFcijj9j8dwQuuCB3MjuN/fariozKppd2IXdfpH9gN4b0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by DM4PR11MB8158.namprd11.prod.outlook.com (2603:10b6:8:18b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Fri, 3 Jul 2026
 18:13:32 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0181.010; Fri, 3 Jul 2026
 18:13:32 +0000
Date: Fri, 3 Jul 2026 14:13:26 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, "Oded
 Gabbay" <ogabbay@kernel.org>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dim-tools@lists.freedesktop.org>
Subject: [PULL] drm-xe-next
Message-ID: <akf7xr96MI4Rd6Qj@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0185.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::10) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|DM4PR11MB8158:EE_
X-MS-Office365-Filtering-Correlation-Id: fc4bc55c-e504-4bca-b872-08ded92eca5f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|7416014|11063799006|56012099006|6133799003|18002099003;
X-Microsoft-Antispam-Message-Info: YKt+2LRD+ck+whe0Aek1piMSL8SavjRmwxdt0ov75IaFTQTDwgh+/NQNX58SnYnu+zqUeKF+5efOPYcgeQWLbygF1uVT6y0nVXNDGQtSn7lET4k1qgdG7W3C5aRrdCkxmScSWpKHJKtWuvZINFH0LZkjT5XYGdehX/Wguv50Xe9vCsm9OZ4UnGvkwf9hvsnDpv6cYonyYXwDzrgkDqwXG9DInvf5syRaBC86GTnD+aKuj8an7oXRKCKPEhah9w73kFpJuQXrhpOiwIFiwSLxuKX7csJhQxV89+FNGiuej1CgY1PXwqdX1LNDAaxqMD/uZF6D+YiFa0cjGu9rjOnusp4ywzrST6kvrLPOrTASpFPPAk6l5JTSzxB1FU6YXyl8+hR34+lNKVMpuBuMAkJXLNYDyxIiB6A2YHzudkaW+/uANUEzI9vV5youFno2L0HmE59rSEY/qXmT07XrBPPFsKDNcN8ALkRIkPA0UYaH3zRfiL3e2QebhEiFzuYjrXDOzHYmOYRacAxEWdCW32rE8ftS+0kV49lEs+tZuRthJE+PXqXNuyp7z4bfAQ+7EnpmhXLF57AX369He0l7FyxfEIG4mP0SSIR2nhWP/rs7H4cBpGhPVM6/kAULk2mQmO9N
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(7416014)(11063799006)(56012099006)(6133799003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?AqU9pXgVCuDgGOaEaRIKPQx0O2xLFSFwl7ILf6Lbjl50rVsLDIoSxPICb9?=
 =?iso-8859-1?Q?qOQ4A70xY0eJeYkYc60t3uuEZnw6m7phwJDUQskLOYHGUVDlBsIWCttDVa?=
 =?iso-8859-1?Q?K80O942ZBk+Cc9lIBoHO9OoQxxTjtMJlNxHdYjA7lnREiA4cqVAvmbVG8N?=
 =?iso-8859-1?Q?5kwc/woCZW+ybjuraM9G9Aj560s5fXcwAcwbsNgJ2Rw2vPX0kwI0TFixuN?=
 =?iso-8859-1?Q?PjnVRAI2TVdonYra7MFGukLI/ShMIdmVqT6CZnIouZqXB7RIY67/Dzp/oN?=
 =?iso-8859-1?Q?3Ng9O2Nkyj1pvLTPjQGVANGl6G3wrKozCPMeGCgpxZYjmeouWDkBSsMbla?=
 =?iso-8859-1?Q?yaC7HlyrzG+rlWja+2cskpuvSDDjLI/DpZJkl92YqQ19DFMfpkN+NjqS5U?=
 =?iso-8859-1?Q?k95sji0gBsSYTROI7kuWWKKl9u7TxrMuKKnIWqKOteQMZnovWBLoBw66Pp?=
 =?iso-8859-1?Q?DJnlnAuM6UMe1aMNtsu+d+xJ3yovkW92yQq63HWewTfis0UjafT4H1djm8?=
 =?iso-8859-1?Q?itJF15F0xIUl3NijWtGplwhoYmsQDgknSThdT2horLgXI4qLYYnRYFSDND?=
 =?iso-8859-1?Q?0eAo5o/EFK/54O1nit9sREuoq2D1Um563V7dJdwrDZDXXgLnOHlbcNuD0b?=
 =?iso-8859-1?Q?CDLSFIUw4xFsJZxaQ1j99zZHaGp4fekhUAsnrmRXM5jdRHZu7tLACrIE0f?=
 =?iso-8859-1?Q?6kTI+OK5eX5o06zsgpIY3XvA0DP3SMDIPhWZBYdacS8rFWqWZ2F0KMscNw?=
 =?iso-8859-1?Q?9fWt16lLEnDfCMfM2K2Oy48J1amkVBgtk2ky2PIPa/OYdc4jeBmeanbhHe?=
 =?iso-8859-1?Q?I/KA+kB8Wx3gJFex8E6+tB3h4aYYOupKM1LfphUQpiLh1S760+K/JuMy3t?=
 =?iso-8859-1?Q?GXPuRMZ8YTu4YPs1BFGud16x7KAJksXXY5+x0s+4yjELYrPbG2my1YjcGX?=
 =?iso-8859-1?Q?tcGtMQCsiXP9gm3U1GpqT2C4bz5cyy+l04iCUT1h90bXofBgqbNeKIjfgF?=
 =?iso-8859-1?Q?0hh7kyw+4KO4QCtx4di7+qVwMyzjkYvlzsjx5i9zg8MOftRZjXy5XmLHLP?=
 =?iso-8859-1?Q?Och8qxImIosqcUejOfPK1zyvOk8skHpLRtOJDq1SerS3NwpR4SZHZ+3VBB?=
 =?iso-8859-1?Q?F6WF/WEbPcAFpYxETdCcwyRK2GBFjjjyBXAJ3VfQoEIF20uItsUpWvhxKY?=
 =?iso-8859-1?Q?J0QQQUmKemh563uQE5XVe7xM76exk4GjYTMyzMnJOKRlrGUj8OAfmHEICd?=
 =?iso-8859-1?Q?sM6ra58mAwo49PQioYPQcBVPOKXFdrFnlPdyWeR/1FuuiqlAWmJi8a3usK?=
 =?iso-8859-1?Q?SKLrXrASebS9K1gZbwRhEwMr1w/dViFPX5bPwuyvc/3Mai7Q/DvO2lvvzS?=
 =?iso-8859-1?Q?RFRv+cECqWlRsycv54k4aoYHgz6j5Kt+X393Sk7UJbedm4LxG9hfaLzQ/v?=
 =?iso-8859-1?Q?f7TvpRCjI21k4i9+ddu1uF/vDTAJmYEspqEw0ynOOK93HSJ917gZaSzxVG?=
 =?iso-8859-1?Q?sxZzwow7fdf9uBewcaB34aB5NnZ7P5CNU0ikUzNQitParKXuH/IPaAgZdm?=
 =?iso-8859-1?Q?F7v2uRipvR/0NMDYUMDGJumsbjkoqLbybDPhk5zSda/7EjszPOiGBwQDLf?=
 =?iso-8859-1?Q?/SfQqFtP7p28iRomTFDDw57xtpZdrLztCYjAHNhercrhu1/fXCOG4AwkNZ?=
 =?iso-8859-1?Q?EDqXg19KKAVbTfuwUsUqyMlCc7d5s5TQZDEEeF7m3vqRKastb/Ov+Xt67o?=
 =?iso-8859-1?Q?Tps5bbHC2eX76fKLdrZ9fzzTG95F1Svj0Bn+09tqog6oEPX8ZJyogxgpqr?=
 =?iso-8859-1?Q?y9kv99ZLXA=3D=3D?=
X-Exchange-RoutingPolicyChecked: tMvWtCDUqZ/RWbrTBXuaN+IQeQRV3pyVYw3dEylUxM5Qsmnj7qd40HQVuBDs/cKSxjaDaQbw7noQOdbToM+FO2WIPYajl6Y1uxpx8RZjwO7gBLSOSZtAEG8ikCV1lmSOGwD98qw91/5Y9dMYCMSt2xl6j4i/3Fu2bkExyo3eC0NGZhScYPMf/4sbfd5cuqB1E31fp+63yU3M4dK1uQ9ZM3SAhrMQtUcybD7b6M2P3j+nyFW+Z9E1VNiIisyds2xzmaKoXyiXvZwudpQeCgWcEXwq/Btf+e5Q1D/p/HW3PlS3YISWbHHUxReM7+m9kfuljdp5ept9eppAFV3NuVL7NA==
X-MS-Exchange-CrossTenant-Network-Message-Id: fc4bc55c-e504-4bca-b872-08ded92eca5f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2026 18:13:32.3700 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xIOKi5G/D+0huk8daB/zb/NuThUNoy9XL8bk0XHZyHzMcc8K8kdRM53JWaAkudtbQGv6QRz7TFR3GAJq6YrUFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8158
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 804E1704CC7

Hi Dave and Sima,

Here goes our first PR for v7.3.

The perf-events related patch got an Ack from Peter, although it isn't
recorded in the patch itself.

Beyond that, the pull request includes a few key NVL-S enablement pieces,
additional drm_ras improvements and fixes, and a broad set of Xe fixes and
cleanups covering RTP, TLB invalidation, page tables, error handling, PXP,
userptr, fdinfo, MCR/MMIO, GuC capture, and timeout recovery.

Thanks,
Rodrigo.

drm-xe-next-2026-07-03:
UAPI Changes:

- Add additional error components to xe drm_ras (Riana)
- Drop 'force_execlist' module parameter (Roper)

Cross-subsystem Changes:

- Perf events: Export perf_allow_{cpu,tracepoint} to be used by Xe (John)

Display Changes:

- Skip FORCE_WC and vm_bound check for external dma-bufs (Auld)

Driver Changes:

- Gate observation streams with perf_allow_cpu (John Hubbard)
- Documentation updates and fixes (Michal, Zhan)
- Remove unreleased NVL-S GuC (Daniele)
- Fix pcode init path (Michal)
- RTP fixes and improvements (Gustavo, Violet, Thomas, Roper)
- TLB invalidation fixes and improvements (Tilak)
- PXP detachment from HuC for newer platforms (Daniele)
- Multi-queue fix (Niranjana)
- Improve Kconfig.profile help (Rodrigo)
- Xe_drm_ras and hw_error updates and fixes (Raag, Riana)
- NVL-S updated PCI-IDs and W/a (Gustavo, Nitin)
- Fix dma_fence refcound (Wentao)
- Madvise: optimize invalidation path (Arvind)
- Fix a infinite gt-reset loop in the timeout recovery (Rodrigo)
- Fix wa_oob codegen recipe for external module builds (Thomas)
- Avoid global forcewake in cycle query path (Xin)
- Update TTM device benefical_order (Brost)
- Fix buffer overflow in guc capture (Tejas)
- Page-table fixes and improvements (Brian, Francois, Auld, Brost)
- Removing redundant check (Lu)
- General MCR and MMIO clean-up and improvements (Michal)
- Don't whitelist OA registers unconditionally (Ashutosh)
- SVM error return fix (Brost)
- Userptr fix and small related clean-ups (Shuicheng)
- Don't attempt to process FAST_REQ or EVENT relays on PF (Michal)
- Couple fdinfo improvements (Auld)
- Drop manual VF check on i2c (Raag)
- Probe info outside of xe_info_init functions (Gustavo)
The following changes since commit 527b3f2a4853f94a856815ee4e4f44d14df58182:

  Merge tag 'amd-drm-next-7.2-2026-06-03' of https://gitlab.freedesktop.org/agd5f/linux into drm-next (2026-06-04 12:12:49 +1000)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-next-2026-07-03

for you to fetch changes up to 820de07bba7b7c97e0f52e1d66bf6147a25ab67f:

  drm/xe: Add tile_count to xe_probed_info (2026-07-02 18:41:56 -0300)

----------------------------------------------------------------
UAPI Changes:

- Add additional error components to xe drm_ras (Riana)
- Drop 'force_execlist' module parameter (Roper)

Cross-subsystem Changes:

- Perf events: Export perf_allow_{cpu,tracepoint} to be used by Xe (John)

Display Changes:

- Skip FORCE_WC and vm_bound check for external dma-bufs (Auld)

Driver Changes:

- Gate observation streams with perf_allow_cpu (John Hubbard)
- Documentation updates and fixes (Michal, Zhan)
- Remove unreleased NVL-S GuC (Daniele)
- Fix pcode init path (Michal)
- RTP fixes and improvements (Gustavo, Violet, Thomas, Roper)
- TLB invalidation fixes and improvements (Tilak)
- PXP detachment from HuC for newer platforms (Daniele)
- Multi-queue fix (Niranjana)
- Improve Kconfig.profile help (Rodrigo)
- Xe_drm_ras and hw_error updates and fixes (Raag, Riana)
- NVL-S updated PCI-IDs and W/a (Gustavo, Nitin)
- Fix dma_fence refcound (Wentao)
- Madvise: optimize invalidation path (Arvind)
- Fix a infinite gt-reset loop in the timeout recovery (Rodrigo)
- Fix wa_oob codegen recipe for external module builds (Thomas)
- Avoid global forcewake in cycle query path (Xin)
- Update TTM device benefical_order (Brost)
- Fix buffer overflow in guc capture (Tejas)
- Page-table fixes and improvements (Brian, Francois, Auld, Brost)
- Removing redundant check (Lu)
- General MCR and MMIO clean-up and improvements (Michal)
- Don't whitelist OA registers unconditionally (Ashutosh)
- SVM error return fix (Brost)
- Userptr fix and small related clean-ups (Shuicheng)
- Don't attempt to process FAST_REQ or EVENT relays on PF (Michal)
- Couple fdinfo improvements (Auld)
- Drop manual VF check on i2c (Raag)
- Probe info outside of xe_info_init functions (Gustavo)

----------------------------------------------------------------
Arvind Yadav (1):
      drm/xe/madvise: Skip invalidation for purgeable state updates

Ashutosh Dixit (10):
      drm/xe/rtp: Add RING_FORCE_TO_NONPRIV_DENY to OA whitelists
      drm/xe/rtp: Maintain OA whitelists separately
      drm/xe/rtp: Keep track of non-OA nonpriv slots
      drm/xe/rtp: Generalize whitelist_apply_to_hwe
      drm/xe/rtp: Save OA nonpriv registers to register save/restore lists
      drm/xe/rtp: Toggle 'deny' bit to (de-)whitelist OA regs
      drm/xe/rtp: (De-)whitelist OA registers for all hwe's for a gt
      drm/xe/oa: (De-)whitelist OA registers on OA stream open/release
      drm/xe/rtp: Ensure locking/ref counting for OA whitelists
      drm/xe/oa: Fix offset alignment for MERT WHITELIST_OA_MERT_MMIO_TRG

Brian Nguyen (1):
      drm/xe: Add compact-PT and addr mask handling for page reclaim

Daniele Ceraolo Spurio (2):
      Revert "drm/xe/nvls: Define GuC firmware for NVL-S"
      drm/xe/pxp: PXP no longer requires HuC from media 35 onwards

Francois Dugast (1):
      drm/xe/pt: Fix NULL pointer dereference in xe_pt_zap_ptes_entry()

Gustavo Sousa (12):
      drm/xe/rtp: Add struct types for RTP tables
      drm/xe/nvls: Update PCI IDs
      drm/xe/xe3p_lpg: Add missing references to workarounds
      drm/xe: Add framework for info probing
      drm/xe/step: Pass xe_step_info to xe_step_*_get() functions
      drm/xe: Add devid and revid to xe_probed_info
      drm/xe/step: Make xe_step_platform_get() independent from xe->info
      drm/xe: Add platform-level step info to xe_probed_info
      drm/xe/tests: Set non-GMDID graphics step in xe_pci_fake_device_init()
      drm/xe: Add graphics/media IPs and their step info to xe_probed_info
      drm/xe: Don't initialize tile_count in xe_info_init_early()
      drm/xe: Add tile_count to xe_probed_info

John Hubbard (2):
      perf/core: out-of-line and export perf_allow_cpu/tracepoint()
      drm/xe: gate observation streams with perf_allow_cpu()

Lu Yao (1):
      drm/xe: Remove redundant exec_queue_suspended() check in submit_exec_queue()

Matt Roper (7):
      drm/xe: Reformat xe_rtp_types.h
      drm/xe/rtp: Add FIELD_SET_FUNC RTP action
      drm/xe: Move engines' LRC programming RTP table off the stack
      drm/xe: Move engines' non-LRC programming RTP table off the stack
      drm/xe/rtp: Add kunit tests to exercise FIELD_SET_FUNC action
      drm/xe/tests/rtp: Add kunit test for whitelist upper bounds
      drm/xe: Drop 'force_execlist' module parameter

Matthew Auld (4):
      drm/xe/display: skip FORCE_WC and vm_bound check for external dma-bufs
      drm/xe: fix NPD in bo_meminfo()
      drm/xe: account for dontneed in fdinfo purgeable
      drm/xe/pt: prevent invalid cursor access for purged BOs

Matthew Brost (3):
      drm/xe: Set TTM device beneficial_order to 9 (2M)
      drm/xe: Return error on non-migratable faults requiring devmem
      drm/xe: Fix PTE index in xe_vm_populate_pgtable() for chunked binds

Michal Wajdeczko (10):
      drm/xe/ggtt: Fix xe_ggtt documentation
      drm/xe/pcode: Don't ignore drmm_mutex_init failure
      drm/xe/mcr: Prefer GT-oriented WARN messages
      drm/xe/mmio: Verify MMIO is available
      drm/xe/mmio: Map MMIO BAR using managed version of pci_iomap
      drm/xe/mmio: Add check for minimal BAR size
      drm/xe/mmio: Drop tiles_fini action
      drm/xe/mmio: Check MMIO BAR size when initializing tiles
      drm/xe/mmio: Prefer tile-based WARN message
      drm/xe/pf: Don't attempt to process FAST_REQ or EVENT relays

Niranjana Vishwanathapura (1):
      drm/xe/multi_queue: skip submit when primary queue is suspended

Nitin Gote (1):
      drm/xe/xe3: Apply Wa_16029380221 to media

Raag Jadav (5):
      drm/xe/drm_ras: Make counter allocation drm managed
      drm/xe/drm_ras: Add per node cleanup action
      drm/xe/hw_error: Use HW_ERR prefix in log
      drm/xe/hw_error: Defeature hardware error handling with system controller
      drm/xe/i2c: Drop manual VF check

Riana Tauro (10):
      drm/xe/uapi: Add additional error components to xe drm_ras
      drm/xe/xe_ras: Add support to get error counter value
      drm/xe/xe_ras: Add support to clear error counter value
      drm/xe/xe_drm_ras: Wire get and clear counter callbacks
      drm/xe: Move xe drm_ras initialization
      drm/xe/xe_ras: Add drm_ras feature flag
      drm/xe/xe_pci_error: Implement PCI error recovery callbacks
      drm/xe/xe_pci_error: Group all devres to release them on PCIe slot reset
      drm/xe: Skip device access during PCI error recovery
      drm/xe/xe_ras: Initialize Uncorrectable AER Registers

Rodrigo Vivi (4):
      drm/xe: improve Kconfig.profile help text for scheduler timeouts
      drm/xe: fix job timeout recovery for unstarted jobs and kernel queues
      drm/xe/lrc: fix spurious warning when reading context timestamp
      drm/xe: wedge from the timeout handler only after releasing the queue

Shuicheng Lin (3):
      drm/xe/userptr: Hold notifier_lock for write on inject test path
      drm/xe/userptr: Drop bogus static from finish in force_invalidate
      drm/xe/hw_engine: Fix double-free of managed BO in error path

Tangudu Tilak Tirumalesh (5):
      Revert "drm/xe: Skip exec queue schedule toggle if queue is idle during suspend"
      drm/xe: Clear pending_disable before signaling suspend fence
      drm/xe: explicit TLB flush for context based tlb invalidation
      drm/xe: include all registered queues in TLB invalidation
      drm/xe: drop unused xe_exec_queue_ops::active callback

Tejas Upadhyay (1):
      drm/xe/guc: Fix buffer overflow in steered register list allocation

Thomas Hellström (3):
      Merge drm/drm-next into drm-xe-next
      drm/xe/rtp: Fix build error with clang < 21 and non-const initializers
      drm/xe: Fix wa_oob codegen recipe for external module builds

Violet Monti (3):
      drm/xe/rtp: Ensure gt_was doesn't evaluate rules with engine types
      drm/xe/rtp: Ensure oob_was does not evaluate engine type rules
      drm/xe/rtp: Ensure device_oob_was only evaluates correct rules

Wentao Liang (1):
      drm/xe: fix refcount leak in xe_range_fence_insert()

Xin Wang (1):
      drm/xe/query: Avoid global forcewake in cycle query path

Zhan Wei (1):
      drm/xe/hwmon: document DG2 fan speed reporting quirk

 .../ABI/testing/sysfs-driver-intel-xe-hwmon        |   7 +
 drivers/gpu/drm/xe/Kconfig.profile                 |  71 ++++--
 drivers/gpu/drm/xe/Makefile                        |   5 +-
 drivers/gpu/drm/xe/display/xe_display_bo.c         |   3 +-
 drivers/gpu/drm/xe/display/xe_fb_pin.c             |   3 +-
 drivers/gpu/drm/xe/regs/xe_gtt_defs.h              |   6 +-
 drivers/gpu/drm/xe/tests/Makefile                  |   1 +
 drivers/gpu/drm/xe/tests/xe_pci.c                  |  53 +++--
 drivers/gpu/drm/xe/tests/xe_rtp_tables_test.c      | 112 +++++++++
 drivers/gpu/drm/xe/tests/xe_rtp_test.c             | 155 +++++++-----
 drivers/gpu/drm/xe/tests/xe_wa_test.c              |   3 -
 drivers/gpu/drm/xe/xe_debugfs.c                    |   1 -
 drivers/gpu/drm/xe/xe_device.c                     |  33 ++-
 drivers/gpu/drm/xe/xe_device.h                     |  17 +-
 drivers/gpu/drm/xe/xe_device_types.h               |  10 +-
 drivers/gpu/drm/xe/xe_drm_client.c                 |  17 +-
 drivers/gpu/drm/xe/xe_drm_ras.c                    | 102 ++++----
 drivers/gpu/drm/xe/xe_eu_stall.c                   |   5 +-
 drivers/gpu/drm/xe/xe_exec_queue.h                 |  17 --
 drivers/gpu/drm/xe/xe_exec_queue_types.h           |   2 -
 drivers/gpu/drm/xe/xe_execlist.c                   |   7 -
 drivers/gpu/drm/xe/xe_ggtt.c                       |   8 +-
 drivers/gpu/drm/xe/xe_gt.c                         |  14 +-
 drivers/gpu/drm/xe/xe_gt_debugfs.c                 |   4 +-
 drivers/gpu/drm/xe/xe_gt_mcr.c                     |  19 +-
 drivers/gpu/drm/xe/xe_guc_capture.c                |  10 +-
 drivers/gpu/drm/xe/xe_guc_relay.c                  |  13 +-
 drivers/gpu/drm/xe/xe_guc_submit.c                 | 136 +++++------
 drivers/gpu/drm/xe/xe_guc_tlb_inval.c              |  13 +-
 drivers/gpu/drm/xe/xe_hw_engine.c                  | 230 +++++++++---------
 drivers/gpu/drm/xe/xe_hw_engine_group.c            |  10 +-
 drivers/gpu/drm/xe/xe_hw_engine_types.h            |   8 +
 drivers/gpu/drm/xe/xe_hw_error.c                   |  35 ++-
 drivers/gpu/drm/xe/xe_i2c.c                        |   3 -
 drivers/gpu/drm/xe/xe_lrc.c                        |   8 +-
 drivers/gpu/drm/xe/xe_mmio.c                       | 100 +++++---
 drivers/gpu/drm/xe/xe_module.c                     |   3 -
 drivers/gpu/drm/xe/xe_module.h                     |   1 -
 drivers/gpu/drm/xe/xe_oa.c                         |  32 ++-
 drivers/gpu/drm/xe/xe_oa_types.h                   |   3 +
 drivers/gpu/drm/xe/xe_observation.c                |  32 ++-
 drivers/gpu/drm/xe/xe_observation.h                |   3 +-
 drivers/gpu/drm/xe/xe_pci.c                        | 176 +++++++++-----
 drivers/gpu/drm/xe/xe_pci_error.c                  | 122 ++++++++++
 drivers/gpu/drm/xe/xe_pci_error.h                  |  13 ++
 drivers/gpu/drm/xe/xe_pci_types.h                  |   1 +
 drivers/gpu/drm/xe/xe_pcode.c                      |   8 +-
 drivers/gpu/drm/xe/xe_pcode.h                      |   2 +-
 drivers/gpu/drm/xe/xe_pt.c                         | 218 +++++++++++------
 drivers/gpu/drm/xe/xe_pxp.c                        |  35 ++-
 drivers/gpu/drm/xe/xe_query.c                      |   7 +-
 drivers/gpu/drm/xe/xe_range_fence.c                |   2 +
 drivers/gpu/drm/xe/xe_ras.c                        | 260 +++++++++++++++++++++
 drivers/gpu/drm/xe/xe_ras.h                        |   5 +
 drivers/gpu/drm/xe/xe_ras_types.h                  |  51 ++++
 drivers/gpu/drm/xe/xe_reg_whitelist.c              | 105 +++++++--
 drivers/gpu/drm/xe/xe_reg_whitelist.h              |   8 +
 drivers/gpu/drm/xe/xe_rtp.c                        |  41 ++--
 drivers/gpu/drm/xe/xe_rtp.h                        |  43 +++-
 drivers/gpu/drm/xe/xe_rtp_types.h                  |  43 +++-
 drivers/gpu/drm/xe/xe_step.c                       |  38 +--
 drivers/gpu/drm/xe/xe_step.h                       |   8 +-
 drivers/gpu/drm/xe/xe_svm.c                        |   6 +-
 drivers/gpu/drm/xe/xe_svm.h                        |  15 +-
 drivers/gpu/drm/xe/xe_sysctrl_mailbox.c            |  28 +++
 drivers/gpu/drm/xe/xe_sysctrl_mailbox.h            |   3 +
 drivers/gpu/drm/xe/xe_sysctrl_mailbox_types.h      |   4 +
 drivers/gpu/drm/xe/xe_tile.c                       |   4 +-
 drivers/gpu/drm/xe/xe_tuning.c                     |  46 ++--
 drivers/gpu/drm/xe/xe_tuning.h                     |   6 +
 drivers/gpu/drm/xe/xe_uc_fw.c                      |   1 -
 drivers/gpu/drm/xe/xe_userptr.c                    |   2 +-
 drivers/gpu/drm/xe/xe_vm_madvise.c                 |  19 +-
 drivers/gpu/drm/xe/xe_wa.c                         |  98 ++++----
 drivers/gpu/drm/xe/xe_wa.h                         |   7 +
 drivers/gpu/drm/xe/xe_wa_oob.rules                 |   1 +
 include/drm/intel/pciids.h                         |   5 +-
 include/linux/perf_event.h                         |  31 ++-
 include/uapi/drm/xe_drm.h                          |  11 +-
 kernel/events/core.c                               |  18 ++
 80 files changed, 1975 insertions(+), 831 deletions(-)
 create mode 100644 drivers/gpu/drm/xe/tests/xe_rtp_tables_test.c
 create mode 100644 drivers/gpu/drm/xe/xe_pci_error.c
 create mode 100644 drivers/gpu/drm/xe/xe_pci_error.h
