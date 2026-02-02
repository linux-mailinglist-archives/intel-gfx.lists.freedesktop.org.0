Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFckGYMpgWkwEgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 23:47:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E2AD26F4
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 23:47:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B77E510E2A9;
	Mon,  2 Feb 2026 22:47:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bmsHLy7s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68FEB10E129;
 Mon,  2 Feb 2026 22:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770072447; x=1801608447;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=PuL5p/9cpwGd1zrI2foACyfbfZSjbnRXdkiXAAARvmM=;
 b=bmsHLy7sG6f106B0Lq2fkYHXy0DW+QorZnrIIwVtbpHH9X3P2BUhX+r0
 jdKQ5FpdZY5cF12R248t5hJ3zEEvru/AVLUABp75KIRskP490KR/O1k2H
 rR6pmxs3qwZJBg27MyZf6F+CiCg9mNxxzz+oqDOl9SD3wc9HrrMLfdGbr
 UcfpQXAZ7HLEcdIHalBxfwrSWQZJT2chkFlit+bHEucmbtnAkEk0dxS3q
 dyLhUWnInz5cF6qUU12t6ZEjpxqTQ3b8cxelWEjxBi5uSjKWAs1OuyIJN
 ZzkU4E+b3dJfm+OJX8DrczwLfv+47JpuvaJKwqDrQQt1txAjn9YakDCSI A==;
X-CSE-ConnectionGUID: +6wQTe1STfWMrk4ajb7WFg==
X-CSE-MsgGUID: 3XOPq7PJRI2T5qJZeSoY0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="96695260"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="96695260"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 14:47:26 -0800
X-CSE-ConnectionGUID: q81IamWzRrqZAswVd75SSQ==
X-CSE-MsgGUID: bevNgclnQCqrkIsSASiaOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="209434220"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 14:47:26 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 14:47:26 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 14:47:26 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.59) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 14:47:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nWlsF82R9qefMfqxmCbhNfFYDcsrAyL7aVTwKOxhdALZkU/sDpgrSkJ5+3PL9cJDg8O4gBgYmfjCTkOck6urQLbqLEnF3HOxNBArvoDpZ5234hwy8IlPFGDnBgtRPFlXabg5A/nn5s1OyCnzOLQRh2Cw8nGjsBjf3R+cgpsaoDxMzJ3fmBgmFS3B+JBRY82IXOsrx0wkw1LNE+KHhCro2L4tf/Zto490sc2p4JH8c1JtUSS04SHO2hR7UMRpBmYJEa94DXiS+R2ppVnGVs5+LP8vVk0NUK7PsndruDA1Og7Oy4m0Znvu3MTD5etg3Qq/y0QN/ubfAFVlrJuT4XOYEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5VELAVW5KLWfOaAte4kA4FSr25E0e3vt7xY/MICxivc=;
 b=t5fhHIsoIV/gNFrBvWVLYa3tesPwbBvIgc97uDuyB9nhRn/tcKM98w6vqrY9NA5novo0C+frY6pRjhsiLl7TSnTm6oVvz39bXrBBmIHmJoDCoI8vyO88i1GbSl9pQye1Sn0gYxntULDjgHRq5sdb4JWvv88wUoP8ahQPnBPEFZC7lqrhWvpxs3ugaGSFmXGkyHhvZRgJ/48RyQW0JPF4cTENbAQVeNgIYxKIYnqsE+6iydRyWzZ8takl7a3WKAOW/KLK2K2s/2FlJ0cacNf9e9gc5q3Gy92p6FByQAyFhGAiOVZturN2RT2OAdVyXpe9KqSIOJEXRlOZBV2X5E/4oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by LV8PR11MB8723.namprd11.prod.outlook.com (2603:10b6:408:1f8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 22:47:23 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 22:47:23 +0000
Date: Mon, 2 Feb 2026 14:47:20 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>, Nitin Gote
 <nitin.r.gote@intel.com>, Tangudu Tilak Tirumalesh
 <tilak.tirumalesh.tangudu@intel.com>, Mallesh Koujalagi
 <mallesh.koujalagi@intel.com>
Subject: Re: [PATCH 02/16] drm/xe/xe3p_lpg: Add initial workarounds for
 graphics version 35.10
Message-ID: <20260202224720.GJ458797@mdroper-desk1.amr.corp.intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-2-653e4ff105dc@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260202-nvl-p-upstreaming-v1-2-653e4ff105dc@intel.com>
X-ClientProxiedBy: SJ0PR13CA0082.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::27) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|LV8PR11MB8723:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a11e603-9f5a-4a99-68d9-08de62ad07a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?so1mtnupOEqr/8BiT1/lr/WJuluZR1O+nJfOk/DmwVigY24MfbWgZUG0S8m7?=
 =?us-ascii?Q?Dj0mL0/oCl+aD+/pQJffFgX/t0DD8YHphwL2mVlxcypPFd45xYH+Ca7zB+KQ?=
 =?us-ascii?Q?k7y1/umfG0jW2rTYH9Fv7NOSAExFjcnORiBtFALPKwR+IHcb04Scu79nbJeN?=
 =?us-ascii?Q?JHiAeTtv06T52rQCqiD6/5ef/MykI7Z3pdavcx8sQoPUdHjY1eOtyet4FEX4?=
 =?us-ascii?Q?zeVZWO20DOxHIifePddthGFBrCjltVvWOBTFoZcnGJQZjdB759P+l0VX3Hdu?=
 =?us-ascii?Q?Rfff8vgnHBPpuGtzihHIejbx5EoAwnl0vCBeBPldchn3BYYzx6/SIENacSGi?=
 =?us-ascii?Q?8WCcJRXzmUxm5XWlJT07mYMcfqoglym0U1kyeIUdrEUJ6T6R38lmrRiN2//O?=
 =?us-ascii?Q?h7bh6a+qDkvJHBuZ9Gyt1QGaargHFuJi8oTsZN3Mt1qLE31H/dOKDWqo18eG?=
 =?us-ascii?Q?artimprOb8VQWxohgh62dCV08wlhK40AQhxl/9HXi9NVKOsN+DbAmNkcYPLL?=
 =?us-ascii?Q?UtOOAj8FfVR/6UsKMy/0Z5NntJMtWmi/E8dx7feba37F8S8D5vh09CoO1UMi?=
 =?us-ascii?Q?3GmYM4OF07xzxLon1L15pEtnhhNbxZsz3hA+07XdOeunYcZQgsqX4idjsLyn?=
 =?us-ascii?Q?nhhRsEPIe3YVa1TY4W57hszEwD13sGDx8SVNxa1cXQpcjYnxati7wHwqFxVv?=
 =?us-ascii?Q?g/FbcO1G0oY4kBzy6fI9gE2HWALv0/L/ubFCvHtMKgEhDcbAcsu8tbFZP1b/?=
 =?us-ascii?Q?o0ZJYbAIiF1tlYn8hAm0t/g11RsoRLF/yrOF1MBNrskC4grKDOvF3VC+geHI?=
 =?us-ascii?Q?HXxy7etk4THuqgY1y1Z6uREb52Am9+45pkgf8SkQugqLu/6URiNdm1XPOY7F?=
 =?us-ascii?Q?UCiSuynkizt7qAJTmcMjn6snPBJbirPe8ML6YDZOTbBZ+vzsD7cfb8JCga+b?=
 =?us-ascii?Q?HJEI4fZ187SqW/5TQzu014la9hRKHp+Z/Wklb5AowMWHXHbcEl8FB3l1x0n0?=
 =?us-ascii?Q?YNNIo5gbea3Bh2FXGbRbnxRZ38KHRSBcHednZMxbOCMKZ8Effqzyj+xGIUX/?=
 =?us-ascii?Q?zVtyUOzKGlBYMnM1aSjsWhB4ltwiqroj7DMUt0othuVqe3XmjzXQ93vLv7Lp?=
 =?us-ascii?Q?oR8bTbuinZA/QzuH5ZtbUlH/6yb0GpFDTfjrIDnP+emr6trr4C5ovuufSt6B?=
 =?us-ascii?Q?QtdiijG60LaUOjuvNAuGcp1udeGWImzmLRoycCK08Rti98z793P/1iJlArWn?=
 =?us-ascii?Q?CL7RnfpRegiDxcH2wuZg8/ARfSbn5B9E+/Q1UR2LgJB7ixQ0Cd2RlKHxJtBr?=
 =?us-ascii?Q?kr4iuyshlD8ax1jcP7o5Pw1kGI1/h2/f9OnSaImDWKAFMpeBSo9QVQvW51QP?=
 =?us-ascii?Q?kJFVYmOoxIn9+JzJMyTzJBY5jW03IJZI/cS9Q0p951rXWSM7XEec7yi+w+Qc?=
 =?us-ascii?Q?/ZuRhhkzbVlkZUduTNUBJUlFX0rRGe4rTxnfF+3zR0J7QV0vxMOKWDJDR/9z?=
 =?us-ascii?Q?ZGDdcbOcAu8eyUEsXwIwipFIDnbaR6ePBNg+bi8Z/66iyLTxieJ+3nUsX1lC?=
 =?us-ascii?Q?MOMA3MIRHM6Are+cXqM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?v2OIR1g5opGumU0UZvrcUkOkP7PjRbYgfLLA5CVYbaKn0wPWU0gNFN9lMYRH?=
 =?us-ascii?Q?+Tk/mVe+OzB1V6oG2NwgSMtnoJ89EMBO1VfvyRgGa9y2uzqM4k8DeA4e6dU2?=
 =?us-ascii?Q?GTwg6fFNpWEhvQ0r68szca3iD41/6fl272HU8OmyoN9eln8S03Ug7re2GuIb?=
 =?us-ascii?Q?6EEqLCczX1VpWqYwENMHw3IvrJxADnfH2x/M+01WVMitO4TJwQ1GY5FLogYl?=
 =?us-ascii?Q?enQtkUIR9HhC2ZMhTkHFPlTxMSLyDh0ucVqUIb3KOripafCYHEYZ+1cVZQsV?=
 =?us-ascii?Q?LbBy6Tvd8lhQJpX2PxNE/aMksu4Ex59f0+DlmqeZlplF+zYxkEH9hd31cyFv?=
 =?us-ascii?Q?5Wr+jmoZEwxuZsIVoFIB0nme85J/N1fow8LvRfnFHRE/kWJbiGdFWQoON6Vm?=
 =?us-ascii?Q?K/ZeSHwH9pEwRzKDTEffRsxomKC5z7AX8dGI7195SsF83ZXOYZGlO+1Zc9dL?=
 =?us-ascii?Q?oVwK++lrJLxGLvULJWnaQtO8sbwV4xFqS6f/4RzzAMKRE+bKL3EMKU6cunWB?=
 =?us-ascii?Q?pdgC9GvZFGH4HJSV0oEudZnmK8nQMpfIP4VkpU2/L+z7jyh698+UZK6NJb9S?=
 =?us-ascii?Q?lBzlz1e2d8CyDGd74icw1eUOaTrPSj8bz+LQqNPp9U2xq6SfrGqwoAB52KN2?=
 =?us-ascii?Q?ENhCmlKg7HbPDBOhMoVxsu31zE2iwwMVIyRXKqCjLsBLgKkKDycxLsDRkV7i?=
 =?us-ascii?Q?E1U/q/nwIxR45bOxf+6aszNuGMrhFVjTZoux7C60xjle/jAUVhz2SoCAZ9wc?=
 =?us-ascii?Q?dkywP7TeNkdjdS9tMijEYtzQucdyjk2ZoBLZhrAIL6paGsGz80zbxrSxonoD?=
 =?us-ascii?Q?WNGqfShmgkIjCJhsyHvWaJPkEoi4yRUW3OZZ7lW4hMlDqeX+BNl74yDEtW1t?=
 =?us-ascii?Q?ftidudGmGtCGeGj8MO16L3nLfiKULONNLvlqzx8fI6eyCTldtmGCyA6X0i9n?=
 =?us-ascii?Q?qSKSFB2s1KNS9kX3VZgFcDFz5oH9I9HWNntTq4/DrZGKX1C0SuKbhbcsnt3z?=
 =?us-ascii?Q?v77XKsgwWG8loKkb6Bq4pZKuDrKrZokJx9jveggukhfSQGEeIPg/JHYKtC8C?=
 =?us-ascii?Q?IhzrKICxDRRz8QD47E8p2EApaar4yTqQZ3xnabPZ+ieImkVY77SfjATBrer+?=
 =?us-ascii?Q?ZebUSupoLZvu+s3GadP1aldgQberPF5eCzCiCLMelIJUPiJO3lMCr2FU6IDs?=
 =?us-ascii?Q?J+/azH00ai3vvJwjHHbrE5wLTl0lMIjcR06o74d1S1ogjL+SooJAEDTuGyLF?=
 =?us-ascii?Q?grBc0Zw9DSv4EOmKcT/WuDEt01JCrWFd0H8UcWSir0nZJQqXOVQOADiyFSwY?=
 =?us-ascii?Q?8Iwx3hBIXxd5TE4AzeUxe1x+1QFjHmfvwiQFsE/E2zWRMRsg8rn4i7xUtDOu?=
 =?us-ascii?Q?0H2ovIS5qFHPPRVVTC1ja0n3DgvzX5cenINjNSgXcJ7lKXS2cjcUwHOhi6Ys?=
 =?us-ascii?Q?DIResd156BrDVFgSiEphAtQctXzhRu7oGRirxmZWwugPTbUWlwNfwAw1Pu7V?=
 =?us-ascii?Q?5YpXXs2GWbj/T+r04038a6rfcVJk5tIClkytA052Sxo9FXLKCbg3EFx8fGdj?=
 =?us-ascii?Q?bm/78NvrPh5ZIETiH1Rju1kYQkLbQp8sDpiu2XnYH90eYo1Mr83imY/sKQ1H?=
 =?us-ascii?Q?+F49RTGnAvERk2AXNT/5LEqJ137JCCL05Jak09wW0CnNWyHrvbYhD5OUWBEv?=
 =?us-ascii?Q?7Wjz0DFHi+TQsmxGE+x2BMi4tjnRnwiRbyMAlk8qBxZu6KjGo1CNIBwTgH/s?=
 =?us-ascii?Q?zFUonf4m4I5OHKDJ8vP4+0fM4UmgVSc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a11e603-9f5a-4a99-68d9-08de62ad07a4
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 22:47:23.1962 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oJdh6jaLoDzHs6djQK2QJJ+NiGSsf/yUwX4QnFkYs1x7Nsk/XuM0HOtrzXVv83s2THIXd++HB0JuAdp3dueTODgEq8X+VsvpR08U1+d0kMw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8723
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mdroper-desk1.amr.corp.intel.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C0E2AD26F4
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 06:43:08PM -0300, Gustavo Sousa wrote:
> From: Shekhar Chauhan <shekhar.chauhan@intel.com>
> 
> Add the initial set of workarounds for Xe3p_LPG graphics version 35.10.
> 
> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> Co-developed-by: Nitin Gote <nitin.r.gote@intel.com>
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> Co-developed-by: Tangudu Tilak Tirumalesh <tilak.tirumalesh.tangudu@intel.com>
> Signed-off-by: Tangudu Tilak Tirumalesh <tilak.tirumalesh.tangudu@intel.com>
> Co-developed-by: Mallesh Koujalagi <mallesh.koujalagi@intel.com>
> Signed-off-by: Mallesh Koujalagi <mallesh.koujalagi@intel.com>
> Co-developed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/xe/regs/xe_gt_regs.h  | 19 ++++++++++++++
>  drivers/gpu/drm/xe/xe_reg_whitelist.c |  8 ++++++
>  drivers/gpu/drm/xe/xe_wa.c            | 48 +++++++++++++++++++++++++++++++++++
>  3 files changed, 75 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/regs/xe_gt_regs.h b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> index 24fc64fc832e..b5a7cc45f13d 100644
> --- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> +++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> @@ -100,6 +100,9 @@
>  #define VE1_AUX_INV				XE_REG(0x42b8)
>  #define   AUX_INV				REG_BIT(0)
>  
> +#define GAMSTLB_CTRL2				XE_REG_MCR(0x4788)
> +#define   STLB_SINGLE_BANK_MODE			REG_BIT(11)
> +
>  #define XE2_LMEM_CFG				XE_REG(0x48b0)
>  
>  #define XE2_GAMWALK_CTRL			0x47e4
> @@ -107,12 +110,18 @@
>  #define XE2_GAMWALK_CTRL_3D			XE_REG_MCR(XE2_GAMWALK_CTRL)
>  #define   EN_CMP_1WCOH_GW			REG_BIT(14)
>  
> +#define MMIOATSREQLIMIT_GAM_WALK_3D             XE_REG_MCR(0x47f8)
> +#define   DIS_ATS_WRONLY_PG                     REG_BIT(18)
> +
>  #define XEHP_FLAT_CCS_BASE_ADDR			XE_REG_MCR(0x4910)
>  #define XEHP_FLAT_CCS_PTR			REG_GENMASK(31, 8)
>  
>  #define WM_CHICKEN3				XE_REG_MCR(0x5588, XE_REG_OPTION_MASKED)
>  #define   HIZ_PLANE_COMPRESSION_DIS		REG_BIT(10)
>  
> +#define TBIMR_MODE				XE_REG_MCR(0x6200, XE_REG_OPTION_MASKED)
> +#define   RXBAR_NO_UAV_DEC_SYNC			REG_BIT(12)
> +
>  #define CHICKEN_RASTER_1			XE_REG_MCR(0x6204, XE_REG_OPTION_MASKED)
>  #define   DIS_SF_ROUND_NEAREST_EVEN		REG_BIT(8)
>  #define   DIS_CLIP_NEGATIVE_BOUNDING_BOX	REG_BIT(6)
> @@ -210,6 +219,9 @@
>  
>  #define GSCPSMI_BASE				XE_REG(0x880c)
>  
> +#define CCCHKNREG2				XE_REG_MCR(0x881c)
> +#define  LOCALITYDIS				REG_BIT(7)

Nitpick: the formatting is slightly off here (the field name should be
spaced over one more column).

> +
>  #define CCCHKNREG1				XE_REG_MCR(0x8828)
>  #define   L3CMPCTRL				REG_BIT(23)
>  #define   ENCOMPPERFFIX				REG_BIT(18)
> @@ -420,6 +432,8 @@
>  #define   LSN_DIM_Z_WGT(value)			REG_FIELD_PREP(LSN_DIM_Z_WGT_MASK, value)
>  
>  #define L3SQCREG2				XE_REG_MCR(0xb104)
> +#define   L3_SQ_DISABLE_COAMA_2WAY_COH		REG_BIT(30)
> +#define   L3_SQ_DISABLE_COAMA			REG_BIT(22)
>  #define   COMPMEMRD256BOVRFETCHEN		REG_BIT(20)
>  
>  #define L3SQCREG3				XE_REG_MCR(0xb108)
> @@ -550,11 +564,16 @@
>  #define   UGM_FRAGMENT_THRESHOLD_TO_3		REG_BIT(58 - 32)
>  #define   DIS_CHAIN_2XSIMD8			REG_BIT(55 - 32)
>  #define   XE2_ALLOC_DPA_STARVE_FIX_DIS		REG_BIT(47 - 32)
> +#define   SAMPLER_LD_LSC_DISABLE                REG_BIT(45 - 32)
>  #define   ENABLE_SMP_LD_RENDER_SURFACE_CONTROL	REG_BIT(44 - 32)
>  #define   FORCE_SLM_FENCE_SCOPE_TO_TILE		REG_BIT(42 - 32)
>  #define   FORCE_UGM_FENCE_SCOPE_TO_TILE		REG_BIT(41 - 32)
>  #define   MAXREQS_PER_BANK			REG_GENMASK(39 - 32, 37 - 32)
>  #define   DISABLE_128B_EVICTION_COMMAND_UDW	REG_BIT(36 - 32)
> +#define   LSCFE_SAME_ADDRESS_ATOMICS_COALESCING_DISABLE	REG_BIT(35 - 32)
> +
> +#define ROW_CHICKEN5				XE_REG_MCR(0xe7f0)
> +#define   CPSS_AWARE_DIS			REG_BIT(3)
>  
>  #define SARB_CHICKEN1				XE_REG_MCR(0xe90c)
>  #define   COMP_CKN_IN				REG_GENMASK(30, 29)
> diff --git a/drivers/gpu/drm/xe/xe_reg_whitelist.c b/drivers/gpu/drm/xe/xe_reg_whitelist.c
> index 1d36c09681aa..9c513778d370 100644
> --- a/drivers/gpu/drm/xe/xe_reg_whitelist.c
> +++ b/drivers/gpu/drm/xe/xe_reg_whitelist.c
> @@ -81,6 +81,14 @@ static const struct xe_rtp_entry_sr register_whitelist[] = {
>  			 WHITELIST(VFLSKPD,
>  				   RING_FORCE_TO_NONPRIV_ACCESS_RW))
>  	},
> +	{ XE_RTP_NAME("14024997852"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0),
> +		       ENGINE_CLASS(RENDER)),
> +	  XE_RTP_ACTIONS(WHITELIST(FF_MODE,
> +				   RING_FORCE_TO_NONPRIV_ACCESS_RW),
> +			 WHITELIST(VFLSKPD,
> +				   RING_FORCE_TO_NONPRIV_ACCESS_RW))
> +	},
>  
>  #define WHITELIST_OA_MMIO_TRG(trg, status, head) \
>  	WHITELIST(trg, RING_FORCE_TO_NONPRIV_ACCESS_RW), \
> diff --git a/drivers/gpu/drm/xe/xe_wa.c b/drivers/gpu/drm/xe/xe_wa.c
> index a991ee2b8781..68a494743b34 100644
> --- a/drivers/gpu/drm/xe/xe_wa.c
> +++ b/drivers/gpu/drm/xe/xe_wa.c
> @@ -306,6 +306,31 @@ static const struct xe_rtp_entry_sr gt_was[] = {
>  	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(3000, 3005)),
>  	  XE_RTP_ACTIONS(SET(GUC_INTR_CHICKEN, DISABLE_SIGNALING_ENGINES))
>  	},
> +
> +	/* Xe3P_LPG */
> +
> +	{ XE_RTP_NAME("14025160223"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
> +	  XE_RTP_ACTIONS(SET(MMIOATSREQLIMIT_GAM_WALK_3D,
> +			     DIS_ATS_WRONLY_PG))
> +	},
> +	{ XE_RTP_NAME("16028780921"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
> +	  XE_RTP_ACTIONS(SET(CCCHKNREG2, LOCALITYDIS))
> +	},
> +	{ XE_RTP_NAME("14026144927"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
> +	  XE_RTP_ACTIONS(SET(L3SQCREG2, L3_SQ_DISABLE_COAMA_2WAY_COH |
> +			     L3_SQ_DISABLE_COAMA))
> +	},
> +	{ XE_RTP_NAME("14025635424"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
> +	  XE_RTP_ACTIONS(SET(GAMSTLB_CTRL2, STLB_SINGLE_BANK_MODE))
> +	},
> +	{ XE_RTP_NAME("16028005424"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
> +	  XE_RTP_ACTIONS(SET(GUC_INTR_CHICKEN, DISABLE_SIGNALING_ENGINES))
> +	},
>  };
>  
>  static const struct xe_rtp_entry_sr engine_was[] = {
> @@ -680,6 +705,24 @@ static const struct xe_rtp_entry_sr engine_was[] = {
>  		       FUNC(xe_rtp_match_gt_has_discontiguous_dss_groups)),
>  	  XE_RTP_ACTIONS(SET(TDL_CHICKEN, EUSTALL_PERF_SAMPLING_DISABLE))
>  	},
> +
> +	/* Xe3p_LPG*/
> +
> +	{ XE_RTP_NAME("22021149932"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0),
> +		       FUNC(xe_rtp_match_first_render_or_compute)),
> +	  XE_RTP_ACTIONS(SET(LSC_CHICKEN_BIT_0_UDW, SAMPLER_LD_LSC_DISABLE))
> +	},
> +	{ XE_RTP_NAME("14025676848"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0),
> +		       FUNC(xe_rtp_match_first_render_or_compute)),
> +	  XE_RTP_ACTIONS(SET(LSC_CHICKEN_BIT_0_UDW, LSCFE_SAME_ADDRESS_ATOMICS_COALESCING_DISABLE))
> +	},
> +	{ XE_RTP_NAME("16028951944"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0),
> +		       FUNC(xe_rtp_match_first_render_or_compute)),
> +	  XE_RTP_ACTIONS(SET(ROW_CHICKEN5, CPSS_AWARE_DIS))
> +	},
>  };
>  
>  static const struct xe_rtp_entry_sr lrc_was[] = {
> @@ -879,6 +922,11 @@ static const struct xe_rtp_entry_sr lrc_was[] = {
>  		       ENGINE_CLASS(RENDER)),
>  	  XE_RTP_ACTIONS(SET(CHICKEN_RASTER_1, DIS_CLIP_NEGATIVE_BOUNDING_BOX))
>  	},
> +	{ XE_RTP_NAME("14025780377"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0),
> +		       ENGINE_CLASS(RENDER)),
> +	  XE_RTP_ACTIONS(SET(TBIMR_MODE, RXBAR_NO_UAV_DEC_SYNC))

I'm not sure if this one is actually needed.  Originally the workaround
ticket just said "program 0x6200[12]" but it's since been updated to an
"if (por) no workaround needed, else if (non-POR thing) program the
register and add a stalling flush."  There are also comments in the
ticket itself that indicate it shouldn't actually be relevant to this
specific platform due to other characteristics of the platform; it's
just something that they'll need to fix or workaround in the future so
that it doesn't impact future derivative platforms.


Matt

> +	},
>  };
>  
>  static __maybe_unused const struct xe_rtp_entry oob_was[] = {
> 
> -- 
> 2.52.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
