Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2PUBOumQ5mlWyQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 22:47:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2A8433CEC
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 22:47:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BBA010EB5E;
	Mon, 20 Apr 2026 20:47:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rb+G+phM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24FF010EB4F;
 Mon, 20 Apr 2026 20:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776718054; x=1808254054;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NrgDvptQjwP0NocK+GxPRCWs+4qfXFZ2iiNheV/ib3s=;
 b=Rb+G+phM8+D6Xo6y7nCWBQ/EO0IxiuxQSQNK+7Luh9wu+MLDbZmGPat3
 CO8tKBDHGHWYtztl8kSw5pWcOVA8oaNHghXOV60rE2KxGEB5VHq1whjoO
 xfOMn495vnHRykVX2QEXasDZlIeZxJWCjO6MaXF2nJXqEKnS5UsCyjjKa
 H9rim7XYWkMbipJxf1o1k4eXONJ5F3tq6U2yb9CDS4w2UALQXCNTbDCyh
 p7VYLxpzdWoCFUXjp+PCUpXgvsrqZx5piHsgANxUtnA/cR+SJwylaXhLD
 YRFUTJHPLlZ7B97MZUrgb1uLANIxsMAeic57swDh3d3t8JaQLd31EWa5g Q==;
X-CSE-ConnectionGUID: 3LfpKFi2SkWhOyH8LPX8iw==
X-CSE-MsgGUID: l+CJFLrDSBG4qddpTbVA8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="95201197"
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="95201197"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 13:47:34 -0700
X-CSE-ConnectionGUID: sc5LPoLpQrCK0hNA4TQROw==
X-CSE-MsgGUID: uV+ZE3BQRQSSoCNxRbv2NA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="227187545"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 13:47:35 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 13:47:34 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 13:47:34 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.1) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 13:47:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MdYDuivtGpWso/xjh7be8THBYbNm9T9Dj443oLhB7+unowr3HkH9cRDgzoJ71b8myKlESvpWAI1SpKcj0DGqIuiMsQ4Rf/MUsconCU+5/alhzFBbF18kxMxXQW4Jh/aukfyQHQavXCswDvQPrlgZ9fdbnD9MPZWt+lfYHJPvkHgshiXN3Zv7AgbglDh7Im7cNuFtOaNWy6Q/1JHCWh3R8MYraetkP9y8qyhd2CUTFKt1oZkwa+mxzv6HKkad8AADrvoA+VLP54yIrk2QG3jFdpO9TLdue7JOYU96ULyK8FGknF6dxVoppqlteVtl8XqfusxQYaY4wsq9V0Aaknw15A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gc4fjLX8q1X9rfXstSi1viAHwLrx2KibCsCAbJte4/k=;
 b=NdZaGuLtI4E49uJ1oR/u0szGKespT5LTK2sHVnI/dUltbwH1hZtte5xkpQaHy+zMqCkIgilnHDRlusxUgts7MlvsxB/tigwqiY62yAd2N99sGbfar3CEdt01x7LovotlmEMW3/8bV415OvnhfBCyYGLLxMYvOU3oyIbQXuVSHoavL2+RsKMmfXhxUAkvbhoun3bJAlGG++P0I9XDRqwyqBCWETOegV7j6hth9DsRWwyBll5o8O8LEEk1reRNwYJbmvU8pA/LSjLTMFsWH3sWKvBVSrO3+We8lAPIVeK73luTe22AJx7fzrfT1iw8j3svybCm1vM+hOheUsT4UuZwTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by MW5PR11MB5930.namprd11.prod.outlook.com (2603:10b6:303:1a1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.16; Mon, 20 Apr
 2026 20:47:30 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9846.014; Mon, 20 Apr 2026
 20:47:30 +0000
Date: Mon, 20 Apr 2026 16:47:25 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Francesco Orro <ncesco@interstellar.eu>,
 <intel-gfx@lists.freedesktop.org>, Imre Deak <imre.deak@intel.com>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, Uma Shankar
 <uma.shankar@intel.com>
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, Mika Westerberg
 <mika.westerberg@linux.intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: DP routing from iGPU to discrete Barlow Ridge TB5 on HP ZBook
 Fury G1i
Message-ID: <aeaQ3Vlh6bp8-rwW@intel.com>
References: <pCmilDgt3Xijjdzu7H1d30dzm8IJbXFnle3yQ5nSR1Pj-snchn5xNpcq9Gb7hlh5bnsA3Efnm9cOR_VKi9RyxcRJxHlrqTW7WRPG36UgY5Q=@interstellar.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <pCmilDgt3Xijjdzu7H1d30dzm8IJbXFnle3yQ5nSR1Pj-snchn5xNpcq9Gb7hlh5bnsA3Efnm9cOR_VKi9RyxcRJxHlrqTW7WRPG36UgY5Q=@interstellar.eu>
X-ClientProxiedBy: SJ0PR03CA0050.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::25) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|MW5PR11MB5930:EE_
X-MS-Office365-Filtering-Correlation-Id: 761f13bf-db16-4cfa-00a5-08de9f1e0a08
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: UAfQA2+Bn+InO5si01Cv1bEklSjJg2RccOUyvF6Xv3iSzlx4h/fxIfTyErZpB6nZTxsNZfCP3rvrTPGpM7iBkn4rexsCClJewuDJHFtw+70XGVxj8sQX93MOPCXfPxY8cdz133KJHoAZpVUouzRzhCp/dYvz7smdtNdq6z5J0/EwNSCWF1FHkSCSIxsYvEHzFkMkBamKwOPQPXzkR9FAm2NeUt6mPCKWeP1zOIxkdkpKI+zxA+lSVlTdTrVlET+vDAsCv8jiQUPPGZ9P0ApaOqdwVeE+mEBsNg74pryPC2Tgnfc7va9ReVhCGprVMKuQWzc5PQpa/zEPyLL9PzFl+w1sAKAacAx1SznXPRBy2zHNZAZYsJFtRXQvt16I3AOvZQOo9qvivPZJmzkAZJamsCysMfTLAVU+qZ4xMO6TH2R1MJ3UQkj3r7YQqYBS/BBVRqKJh8ZBWuMsA0v3AfcXZLIvlqiTShQyG+Oc+5pD8YCidhuqfiuVtVvMqQmSSDRvtkgoZH8w5bxCvTcpwR/EJaSLF7CkVrp9dDR8A18a8Y+IwUmR//lu2cvQMXu+WEjX6bNm8XB0/Mg/TMGKbUhvnbX9wzTWahdkdg+W4wW7ibLic53w3facoP6b1OycIX7fYIQh33WFrEX7DqMoq4QSx8kEuUobzqtnXI5GwMy9V+ltERyyAP4e9jygfVQusNMEPbLh566mU7hzNIP0BX+Jr7GtI4Unr5NHJ1eVisSLa3s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZXI3vdMlExbOcwhK1amgFvcrCR5kBLeEY3R9Usx5qXgSt07GnJRLwbYR1q6V?=
 =?us-ascii?Q?rmM1mwQBliHiprd1r71rWCDq+DW+8I4LkCfv0eBNMKtkefHnqBqYz9rffsbL?=
 =?us-ascii?Q?8biknsO35ZiAhxjGGhCxuoHTkFIhr+llmEVGCmo7SkE2LtxZbo4XjQ8j//lH?=
 =?us-ascii?Q?epm5b9OZAKXElwfi8VNdZCvKGiSEYDDTAXcB8wDfNyuMpgh0VytTaI4soCtm?=
 =?us-ascii?Q?9vFr7+xEEkOOHNaWFss3ts68f8GRwLm8I3fAeJ1GrHKp/aMP3+O9WujA0+RQ?=
 =?us-ascii?Q?/oEcr8Oyf7t3xArQRinHPrJZDtE/wvWOjIsA5PShEXLQYDDgce0lLejSKX4k?=
 =?us-ascii?Q?8e8XamSyTsfpTLzWx+vfDdTKoDaOMnHaOuG2DgVpZn42QJpx8mMlCFTpdFs0?=
 =?us-ascii?Q?s0lNw157eW4ibHrZ4z9/nSasIg5geI7AJGg3m75978Wqn8EO7mjggz2exRwU?=
 =?us-ascii?Q?QH4Lv+h/EE7+rsta3I3Jk3h1jkIw9piSiH04LzLn1JGs61XMzzOXPxe+Eab9?=
 =?us-ascii?Q?JsH3gq7f31KVzza2CrR/Aagg7zbZQiF2mtdVRfau82WWxuW5bjEoKTv4xEq6?=
 =?us-ascii?Q?ESX5TocD3+Ezqn/sOxS2P63zAX8ipTfSt7Ht229qmFxxXHmSBhsU7WA/m2wS?=
 =?us-ascii?Q?52jcEre4opVLQjPR7DyuejxBZohAsKwtyo5EnakUW10JAJtITWqhJfl3PJnG?=
 =?us-ascii?Q?Iu2R9N4oOjHJK6LYmM/VCNXczR77PTN2nFjQnhDZjMOhF3/FtGcHiCinXVsa?=
 =?us-ascii?Q?b5c52myed6aTffoq2186/9dmOs5sGDV/eD00tHVGcknGAtt9C5L2v+Q2t6RU?=
 =?us-ascii?Q?omnbV/kZX7wgxE8FjuKsou+UmGpZ79aG1QbP8eijonyUHgdXsIiBwIn/LzFi?=
 =?us-ascii?Q?4iZT3KEfBRbG8Eagjx1KPN3E9cgnZBFWkkGk4Go989fhxhMuaYZ3nfvV8Gp1?=
 =?us-ascii?Q?GtjTCzDo+mXFdn1tWpcyAUe815GXBvX+chfSIMfPx4Csj+5UM1v10FccOcYz?=
 =?us-ascii?Q?TeY0Hpq83PykHVFlllVfJ77wr8bu9mchMAGn4CU1Wj7Z2rvKflKjt9DOiNxN?=
 =?us-ascii?Q?2G8/wNv92qfdKCMbAEhyu30UhLcm8KERPtkj+6i0iUZhcUR7htRHrHnyUrz2?=
 =?us-ascii?Q?TCU72mTbHfns62nCGcFVq8RHjNbUP+pnRlO6QVWfwMstRldncRgYNEE1SbDo?=
 =?us-ascii?Q?dZaInp+x5OHWQLxuHA+lCoSqRsE1hZfw3APtqiV/EYL7Wh1uS6mOwOrgz3no?=
 =?us-ascii?Q?bH/z6R6yKRBmqO1wD8TBbUkKPkLA3K0aB4whv/Qnej2oV84gIBiEI/tzbIWU?=
 =?us-ascii?Q?qPtIhfASXlybfLWZm4RtMcAwQDw0D7dz4S2xaxwRvGhpB4C6YoKBkKxbD7ug?=
 =?us-ascii?Q?9ajV8sY+EAjAJdhqzLyeyvt3OAo6+ZgzTNjJKAK0n3Aqd3h/Rgko1yW6xTgp?=
 =?us-ascii?Q?g2wa80qccJ0rT/Sk55q9gS4q3rK6Yxn5OCHhJoLt9FNI23qDRzSFdkrX6ZNd?=
 =?us-ascii?Q?5QIkpuzFb/AKSDu5cXU8zE59w6tWhTxEcoUiWwKM23cr9h0XJf0UI3AzKnEN?=
 =?us-ascii?Q?KdH5PEBnjntb53f+OKYNLsuj/IIALf6yOi6ivn+di8kbp/+on6e+wbB6M1dC?=
 =?us-ascii?Q?8xJrJG5CzUgXAYNyaZzhEsPChLcuUvrYjTrOwzBWBd+v97lxenw6oyjKPv79?=
 =?us-ascii?Q?pDr2i/bqoiFUoSpeIY8hZYTiUKMIwnPkai2ZvSoKMHBiQXXrDM1nlqAJue4v?=
 =?us-ascii?Q?DMCVnhLGdQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: X2V/KpISmewG5WrgMECGdV1/6GbkAwbvKZS/gc2Tb5FC+8U1H1RWbIwnyQbNzSIzWLEvNgwBNbiVkWF94hCsJNs0jZ8JXJl9iv5hRrxZO8pepkXOU6MsKvHVsaXvi7QxHxirPA1qIYboci/q7674teoLPWyzJAaLdngYvNZwzqSa60rrX6pLb/a4AF/0SdCj0/VTSyu++iRDVNBL8jV1gMYXw2u9+PPQiceopR7dH7fpIYW4A/Lav/Eqg50CevY15GunR6+ra0i7w3v3MM7aEcM/B+SK4GYYPR+eA4idtiX9WUYLaQmp6LBncphhmQJXG8A2BNxg9FO0Dt1V3c2u9w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 761f13bf-db16-4cfa-00a5-08de9f1e0a08
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2026 20:47:30.1191 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M1zp/451a7IL8bphhaQNw/768Jm2Vrs2WgsK1vnpSE4+K4y+UKSd6u+xUIR8G3gBIr0QFQbHeXnEtHbah2WXEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5930
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9B2A8433CEC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 20, 2026 at 04:04:02PM +0000, Francesco Orro wrote:
> Hi,
> 
> Setup:
>   HP ZBook Fury G1i 16 inch, BIOS X96 01.03.04
>   Intel Arrow Lake-HX + Nvidia RTX PRO 1000 Blackwell (hybrid graphics)
>   Kernel 6.19.13
> 
> The laptop exposes Thunderbolt 5 on both the integrated MTL iTBT (right
> USB-C, domain0, 00:0d.2) and a discrete Intel Barlow Ridge (left USB-C,
> domain1, 00:06.1 -> 05:00.0).
> 
> - Right port: i915 drives a DP tunnel over the iTBT host without issues.
> - Left port: no i915 connector ever sees the external monitor. The TB
>   driver allocates a DP tunnel on demand but DPRX reads time out, no DP
>   source is feeding the Barlow DP_IN adapter.
> - With nvidia-drm.modeset=1, a DP-MST connector on the Nvidia DRM device
>   sees the monitor via the left port (EDID readable, modes negotiated).
>   The path Nvidia -> Barlow DP_IN is functional.
> 
> Current hypothesis: on this board the discrete Barlow Ridge DP_IN is
> either hardwired to a Nvidia output or behind a firmware-programmed mux
> that BIOS latches to Nvidia at POST and is not exposed to the OS. i915
> would therefore have no path to drive the left ports, by design.

yes, that is usually the case.

> 
> Tests done that did not surface an OS-visible lever:
> - i2cdetect across all SMBus/i801 busses: no DP mux/retimer at plausible
>   addresses (0x60-0x7F).
> - DSDT/SSDT dump (iasl -d): no Device/Method referring to DP routing,
>   DPMUX, retimer programming, or dock display source selection.
> - HP WMI + /sys/devices/virtual/firmware-attributes/hp-bioscfg attribute
>   enumeration: nothing switching dock display source. "Graphics"
>   attribute only offers Hybrid/Discrete.
> - PCI config dump of Barlow Ridge: standard USB4 NHI, no vendor-specific
>   capability hinting at source selection.
> - acpi.no_usb4_osc kernel param (locally patched) to opt out of OSC USB4
>   native support: no change in i915 visibility of the dock.
> 
> Is there any known way to route an Intel DDI output to a PCIe-attached
> Barlow Ridge DP_IN adapter, or is this strictly a design where the dGPU
> is the only valid DP source for the discrete TB controller on this class
> of HP workstations?

I believe this is physically connected or static mux without any way to
re-route this. But I might be wrong.

So, bringing some more folks to the discussion.

> 
> Happy to share the DSDT dump, lspci -vvv, full dmesg, or run any test.
> 
> Regards,
> Francesco Orro
