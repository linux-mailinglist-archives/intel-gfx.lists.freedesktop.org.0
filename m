Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cK+GHS8D/mlYmAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 17:37:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D16484F8D19
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 17:37:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 511D010F508;
	Fri,  8 May 2026 15:37:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KJGUNrqh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6572E10E345;
 Fri,  8 May 2026 15:37:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778254635; x=1809790635;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=Gi07hBWVjnDfdgbDT+O4IFBKQzR+iXDKoqihe+E7gV4=;
 b=KJGUNrqh4sXMHrry0934u5mGgBkZu/8hJUY1IAN676uqtfYYhObjKeLw
 ZEzSZn+scGRsIa8XSX6xaHDIUrZLABXlKRovzXD2VOrXUDTfBAyk7CmEf
 /uG3ol5CW+ZcXJJqt1Wvmotng6V7r61LzdoNh/07X834+w1HK6Dk7DtBi
 zq6kWzFJUdqHXFZ4ue3+jwLvC6r1hhw6kd/Rz8QmtbSlVLQLAEWA4jtEq
 qJhJR1ynXkGKcp6F/+CRUazK5jH3z5lbKochcH8lEcZ4wxqoAKwUfYI5W
 5oZ2P2n/xPYhFVDIclAbWvuPeBJJavcSjdR2maUUeMBBIm9CYQ6xMGXLs w==;
X-CSE-ConnectionGUID: hC5h6WOdQ4O3CkvWxXOMXQ==
X-CSE-MsgGUID: o94oxSmwTpGBYZsdh22FxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="90327100"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="90327100"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:37:14 -0700
X-CSE-ConnectionGUID: SRdeyV9mSC+qhRWcJGvPfA==
X-CSE-MsgGUID: 9TnZG5TMS7ymltFzmeNnBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="232455242"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:37:14 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:37:13 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 08:37:13 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.54) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:37:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fYhg0SWtdPcbkE4FvcG3+J4l53w9KaMkc+vlyhC3syuxML/R1t310Tp3r4W4q/P60PqFnI3PvMISyLDUOEYKhP3LwHxan4Gr8yFWsx9X4iVwatK/CZEs14QcSu8Dp7hn9rVtVqF3Iw30SGyzdWFsZZPmVjlFOYfZgZ0oprqntO8Lb94HDQvf5zUi+bBus1/4zKDp8pONF3rmdOSNYWIVW/IscTkR7hja/JNG+vE3NJostM80VljZGPig4cnfTFDHn2dmt/hqaSOCJQxfAzDSwu3+sCGNU6lJ2iZA8isl6z4oYTtW2Uh3EAmvlIx5FuPG+4l882Rg2CoPlE8eCg7srA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cuwiqC64xrMfC6CjcxZYBLG6RP9Fnf6PFvVi7PI0xjo=;
 b=LwjcJULDX7JEQbowWIoVg7YzuzIDJlpxuVnAxySO0l7GjJk+kI4Exh0oLSYOUQiiIIpBGZYkAFTKwC+KX2VGtVUFMRVj93pz2RwYIKcSHUdgTPzL8pekQ+MYxK9o5DtOHFmOVCqoAhK+VxwSwhIeJioJh8WApgxqXtQxWWTLvGz6MHcdWwcZoY6mAt+62f1Wh0fcytiJ7NBNyAIhF1HBMGHGYBRE8IAIWBm/o1RfC0djX/OWYIJ6/QGm9cny6CMPjcK1Rxtaob1OlvKmVsMc1HGcZu0hUlssZcGXmD5X3bEzwKwx6gTpADury9TmekPaOJRFbZLaQwpdLYbTH1010g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM4PR11MB7758.namprd11.prod.outlook.com (2603:10b6:8:101::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.17; Fri, 8 May
 2026 15:37:10 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 15:37:10 +0000
Date: Fri, 8 May 2026 18:37:03 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 019/108] drm/i915/dp_link_training: Track link recovery
 state with an enum
Message-ID: <af4DH5yc2u5-FRgY@ideak-desk.lan>
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-20-imre.deak@intel.com>
 <095667abc629744d0905655de1ce04988a7dc5f4@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <095667abc629744d0905655de1ce04988a7dc5f4@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0036.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:26f::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM4PR11MB7758:EE_
X-MS-Office365-Filtering-Correlation-Id: d0920e0e-6053-49df-0662-08dead17ab60
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|3023799003|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: zNd5lycnalvGA8Y1Y5Q2I10q+pfImZWV0P96szKIhFjPY4InOCcAhsBnIvNr0nz12eNN56av5QKn225umfCkj/RtYHEoTftDW+xbM4VyN2887k1/1sOzoSEMvmm1VTKUCAwZ6SjbGzxHD1CIbnsaG4nTr3ZwpYxi96k4/oPSVpt6IjFeXJr8NSb2LdWDrm3xE/RgHWjkZ3R8l4ilN3uwYZ+zfEA+N5nH/AKHPdTnqNgCmX34xxBn+iNzioLdgBtrn4KaeRVtIh+cK0CGNruI0d9s2lf2kqZ4a5eQGiGtj6Nv1LhMwbee0Yh6Jzce4V9VL2qHxB5qcZVXxzSq79Q2KZHRZiubYHdxmQRtnWct5IWhmyrLL3kuq4ewaWw1Viq8FYXheUcXs5OP8CJEe01Q6s/AfMDPFwAvBvtP83x9JvtZLD55IMUZK0qGo5oNfKGlI+ArmVrI5ZbG2Fc06oR1UIPb8NJ/QUM9frP8JljWvyFby/F7KroyIlf+njVi8GO4AKKM56g8yghditBCJktYOXNVQFx2cIBVawoe1ZINGWJXBj+XIgKP15qJxw7Wx3M/fGodmWyEm83AIdt28G8lBsf6tEBGe2WKYUyrZ/vtN/in441PZIEr9D2tcOGOiYYNVTzs96kp5dppElJcJWN/NSyUBGhRY5IkP6gD+WpUy1a1SuKewIe0xbmiXGaaSnP2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(3023799003)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kRnBs9DrvrXjgfpzsdsQUGMCWU+9FhxLF8NFmsVUOOKEkg2R827ZFNjcOpOp?=
 =?us-ascii?Q?6cbLmiYnRjaAe05x6o8ohdcdj+qfPIzg3i373+jQmcnjsf3rpIYaa3iA8y18?=
 =?us-ascii?Q?tWX7Sjm0EKydV9KIlGYjK6wMkjIbHHZgeJtOqbhbl/qKiS6pWF8ty9FgVU97?=
 =?us-ascii?Q?n5HtOVZ/qQaifwZai/NS5Wv7PBMhELkgG/nAH5K+e/aAPn4VaK0U5cLYcntf?=
 =?us-ascii?Q?BJ9vDf6c37q0nWtuY6MTA2B4qP9i5v4xdJg9y8WEYsAvnf4AfEaFhwP3g/h7?=
 =?us-ascii?Q?dr12y5hTNsj3wHrKD6j+BGifQi9pjKn7Q3+4xSNmXTm/Buid65gPrSBHjFO4?=
 =?us-ascii?Q?CD9RncoO9YpRTL/2uaoZFRqtt8W4GlOC/o9A2s0RG/RAiKFF9j/hQSnZqt7v?=
 =?us-ascii?Q?v2mETeSsp5GwxPSr9bz0tCaUcDG8dOjprDrvpZgiZCa2fosailSMFVqOny8U?=
 =?us-ascii?Q?CCGNRGHHLdkCRXg0WQuxqDbP0Bek9Zey/BR9aI/+o5D9YMiePrHNAf+5HP0Y?=
 =?us-ascii?Q?cZimO/qcuLRr13w1CK0+lZ4YgBZpqIqCeJxVdh5iWtC63ZAJUuZ86O7FHS4m?=
 =?us-ascii?Q?qA6JFtoy7m49DRc2lIzmBj//MwSljQd31d+MEmSfsnmDBk79aHVlF3r+1V/I?=
 =?us-ascii?Q?8UC8Ke8koRdZUV2eFjjAyxrAYP/spvt9PyBCQaqSqZJrmCna1LjoajgPh/RM?=
 =?us-ascii?Q?7va+HohboscLVAHOJnk7kxWFd4DKXKDSYvbDYFdolDXfRBwwr67Zh3UCnNbb?=
 =?us-ascii?Q?N8ByZoO39/8BXLlS072H7pmuJv53Pc7/YaQRANOYT9OYZK4NSNOvujJzrWy9?=
 =?us-ascii?Q?I8t2TnDwiiQ5yS8GRf1789TTW96k7JMpHcN1uez0z6DgvlIutivAKGfw2pxW?=
 =?us-ascii?Q?ffn81Me9wqBBeqauQ23vL5/mLAgj/a1OeDEVx9kA7DTrXjZQ/h28iaQRIlOo?=
 =?us-ascii?Q?Qa5WWPxEqq/0voOJ/QpYmUULqhqDN6Yjh1YYeM/D9rFO9nAdqo4FZssmqTUr?=
 =?us-ascii?Q?3eOEbt8v9kR/0UZ8YbQlkh/BAmutgKvm41WU0Z8Xz67/fHQO3FP+P+PvAXxE?=
 =?us-ascii?Q?WHp0YXCH7/aH5a7P2E137U+fLN4POj3IN5Ylwtvk7ULn7E1F2kFwTr2J5xqz?=
 =?us-ascii?Q?TOLHa6G/Xddjx0+jL/QLx5sMn0XEDq1ztWHS3vRjy9PKHsHQtyeFIxDCWFRu?=
 =?us-ascii?Q?TcrmOIyRkQw9vXt4mz1Iica8nFflc4KaSe0mqYw6JL4yfyBMPUd/GrULAjX4?=
 =?us-ascii?Q?lrpkUNtjwzK2Qg6yO/db5I/TEF/onluhLpbftJtmbahsowivnD3chzi/rMD5?=
 =?us-ascii?Q?Y6AJJYdAzQZr54TVnCPTuzAlHqnE1FM1dMmpNUZEpKpbkk2YJCW08vJoFfIN?=
 =?us-ascii?Q?nplZpalKyX0rWHrMUVl1quvNpI5g5Q7KSeybja5WEFRqVWT1UmwzD/lxNTKn?=
 =?us-ascii?Q?yhFAp6k6dHtuYKMM7dHS87KsQNkFwsDX+cCEFE21IvIMEg+mtR0pIMBaU25F?=
 =?us-ascii?Q?121OX1SrRYwGGStSVbsFaAAu0EraXXy2yKhYxMziAb/kLlsnp4Ju5H4w/uDc?=
 =?us-ascii?Q?YhLPgjvWnrMnjwZTeXarIzovvxyLRxd2ge9iSoTX7j69exMuKUkcD+zfmk4u?=
 =?us-ascii?Q?VFP9wiFx/8UiPihA30lPiz/XO2CpEzTVnAh1eFFs2rxkCkwKNjXnrKlZe7BD?=
 =?us-ascii?Q?3UhkZsmorai/M+Oo24uaxgpWipgPNUB8M10kLsgtQHamhsmmIGo+kfJAEZih?=
 =?us-ascii?Q?E4SAGxXNBg=3D=3D?=
X-Exchange-RoutingPolicyChecked: PWuV1glUjEtskymtdNaVeaKFUqF/yapQh7+dn9uq9ZL7Ih2nJ9aWraYyMn9v2iELxcOZ5WX4cKNyEr4Rm83GITegf5hlCt2DpJNXueofwwtKfM5H8rXaC38QqcyUolA3scd9XqmtQd5CtyBVLI0zUOhmtBsPCKHp42sGS5dqaB5+To/Tmj9w5x6TDS7tf07q65hGjTbFgqO8Ra+gEojpyL+eOB10PjWogBUH2jcYDDJctuYKWkaYqltnwCK0EzW3Ascm00s7YRVKS+Lo6cuG/+dFDLW1KHqc4qidQdLP4Mpi/PWUjFGn477uSVMX7PFKUmEkBUlnxcFhxHZDr2JGdQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: d0920e0e-6053-49df-0662-08dead17ab60
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 15:37:10.6966 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 05EMJ6njSq07tPmdYP2UT1TZDAdCg8n8/U8Pbcf1hHY9pua8X2MncDxLh3JjuEqQv7pGfsWqfMO1qpZDyLaWSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7758
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
X-Rspamd-Queue-Id: D16484F8D19
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:replyto,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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

On Fri, May 08, 2026 at 05:51:08PM +0300, Jani Nikula wrote:
> On Tue, 28 Apr 2026, Imre Deak <imre.deak@intel.com> wrote:
> > Replace the sequential link training failure counter with an explicit
> > link recovery state enum.
> >
> > This makes the recovery states and transitions clearer: idle, automatic
> > retraining pending, and automatic retraining disabled.
> >
> > A follow-up change will also move the retrain_disabled flag into this
> > enum.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_link_training.c | 55 ++++++++++++++++---
> >  1 file changed, 48 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 90bd1b0f1ab7d..c44416e0e328f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -61,14 +61,54 @@
> >  		lt_dbg(_intel_dp, _dp_phy, "Sink disconnected: " _format, ## __VA_ARGS__); \
> >  } while (0)
> >  
> > -#define MAX_SEQ_TRAIN_FAILURES 2
> > +/**
> > + * enum intel_dp_link_recovery_state - LT recovery state
> > + * @INTEL_DP_LINK_RECOVERY_IDLE:
> > + *   No link training failure is currently tracked and no recovery is
> > + *   in progress. This is the initial state after driver initialization,
> > + *   power state transitions, sink (re-)connection, or after a successful
> > + *   link training.
> > + *
> > + * @INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING:
> > + *   A first link training failure has been observed and an automatic
> > + *   retraining attempt with the same link parameters is pending. Exactly
> > + *   one such attempt is allowed before switching to userspace-driven
> > + *   recovery.
> > + *
> > + * @INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED:
> > + *   Automatic retraining is no longer possible. At this point, a
> > + *   fallback selection is made and userspace is notified to take over
> > + *   recovery, performing modesets with parameters it determines are
> > + *   required. The driver then selects a link configuration from the
> > + *   remaining fallback configuration set. Subsequent link training
> > + *   failures trigger further fallback selections and userspace
> > + *   notifications.
> > + *
> > + * Describes the link recovery state used by the Intel DP link recovery
> > + * logic.
> > + *
> > + * See also:
> > + *   - link_recovery_autoretrain_pending()
> > + *   - link_recovery_autoretrain_allowed()
> > + *   - link_recovery_mark_train_failure()
> > + *   - link_recovery_reset()
> > + */
> > +enum intel_dp_link_recovery_state {
> > +	/*
> > +	 * Keep the enum values ordered from least to most severe
> > +	 * recovery state; helper logic relies on that ordering.
> > +	 */
> > +	INTEL_DP_LINK_RECOVERY_IDLE,
> > +	INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING,
> > +	INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED,
> > +};
> >  
> >  struct intel_dp_link_training {
> >  	struct intel_dp *dp;
> >  
> > +	enum intel_dp_link_recovery_state recovery_state;
> > +
> >  	bool retrain_disabled;
> > -	/* Sequential link training failures after a passing LT */
> > -	int seq_train_failures;
> >  	int force_train_failure;
> >  	bool force_retrain;
> >  };
> > @@ -1260,7 +1300,7 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
> >  static bool
> >  link_recovery_autoretrain_pending(struct intel_dp_link_training *link_training)
> >  {
> > -	return link_training->seq_train_failures == 1;
> > +	return link_training->recovery_state == INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING;
> >  }
> >  
> >  /**
> > @@ -1274,7 +1314,7 @@ link_recovery_autoretrain_pending(struct intel_dp_link_training *link_training)
> >  static bool
> >  link_recovery_autoretrain_allowed(struct intel_dp_link_training *link_training)
> >  {
> > -	return link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES;
> > +	return link_training->recovery_state < INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED;
> 
> Dunno, if the state machine is tracked by an enum, it just might make
> sense to list the allowed cases instead of <.

The patch tries to keep it easy to prove the correctness of the change.
That's easier if the only change is using an enum instead of an int
(i.e. seq_train_failures -> recovery_state) and renaming the constant
being matched (i.e. MAX_SEQ_TRAIN_FAILURES ->
INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED), keeping the value for the
constant.

I tried to folow this in the whole patchset, changing only one thing in
a patch.

It may makes sense to check for each enum value explicitly, but I'd
prefer doing that as a follow-up.

> 
> >  }
> >  
> >  /**
> > @@ -1299,11 +1339,12 @@ link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
> >  {
> >  	if (link_recovery_autoretrain_allowed(link_training))
> >  		/* Move to autoretrain pending or autoretrain disabled state. */
> > -		link_training->seq_train_failures++;
> > +		link_training->recovery_state++;
> 
> Ditto.
> 
> >  
> >  	return link_recovery_autoretrain_allowed(link_training);
> >  }
> >  
> > +
> >  /**
> >   * link_recovery_reset - reset the link recovery state
> >   * @link_training: link training state
> > @@ -1313,7 +1354,7 @@ link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
> >   */
> >  static void link_recovery_reset(struct intel_dp_link_training *link_training)
> >  {
> > -	link_training->seq_train_failures = 0;
> > +	link_training->recovery_state = INTEL_DP_LINK_RECOVERY_IDLE;
> >  }
> >  
> >  /**
> 
> -- 
> Jani Nikula, Intel
