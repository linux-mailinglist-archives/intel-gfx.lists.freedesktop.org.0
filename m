Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8ENzF764c2n/yAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 19:06:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CEC795B7
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 19:06:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23D0610EBAE;
	Fri, 23 Jan 2026 18:06:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fzP5oiKm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1B9110EBAE;
 Fri, 23 Jan 2026 18:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769191611; x=1800727611;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=b6TaYKpaEJjjI2cG7h/fLKAmSqHSqSOzJGfe0ly3GZY=;
 b=fzP5oiKmjfjtDoSS7Fs5xX5B+iD3dDkgkME2swHBrkrZEtjLalyiw0Fl
 AVDQPJyU2NreGTBmDt7IaUX99hEHha719ZE43HkLAqUQ3Dir9wGT9ZZkL
 /re7ry5EsUbs8aVXtoOjnNMEUTU5pTPirVLmcvpyf+45ri/xNEm4bH1An
 vF2l7TYB0tHkZMSvTapguyMyU1cdxCqlcS7Mbd1jY/N2nZ7t4sCgeOfHc
 chIH1fuAx2j4yaaBHG7Nb9x4zhtsx5veuFTB9mGhxjKseLPR+wGADN8Vv
 KW8D+Hlr5Px2JFdtP07wcKlNMY+T65OYcBtH35cITgwKhZaC1IT3HoBH+ w==;
X-CSE-ConnectionGUID: MsdOqYNgQd++YC44Vk+aBA==
X-CSE-MsgGUID: Yu4gpGrlSiSXwIaGFtrfGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="73037956"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="73037956"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 10:06:50 -0800
X-CSE-ConnectionGUID: 3mphNVhxSN2Dpc6KVTxMzQ==
X-CSE-MsgGUID: YnPaxuS2RY2N9DFWAdU8rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="211548194"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 10:06:50 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 10:06:50 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 10:06:49 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.30) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 10:06:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xhkpe6akjoKUBD41l5stQ72K9q9WmJN0yPKNdDo+pLbOW+99n+jIE/OT86fJ20+ZZrT2IskbrvMX33GSj+awSsspJjM3dtO8ziSDpeAhsARludD6bWWZ3bcVp5ghaqCh0Vdlc+FcfY4sTEfXFt+C5oPYpDpO1O04CAFUgxvXkuqFCkfadrEvBSbcvVPxpXuJ6yl8gxS3xGvaEHQsZu1ahRM04Vms0e6BrHJwYJw5SVTZfRgoKi4YBHtOrXr8WjrrRtJgh2JQhZj233urZUtZasMFBOspD82xtG4fZD2EJc9CIoS0l5KMDzJvGPmK/nQfOSJpwZ2+1VBJJy6Z9Sbxew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OB0WWRs4GG9l1kyLYYFc+223aEaxzs2XwRsjFmKldZA=;
 b=gAi8JG8p3f7NZlPI3+H2g0baicmsFu9/comG1VK4izfZdhwyIjxdxMZhWJCV86lxRQlTmkCwsjrKaPMrrlMa+EjDG9BMk4CIGZHu5pNFlCJ0vrOC/1NpWkOVrH4Rs14SAzu3EUAv+BmUigTd72h/tqwhzbqriVXTEzPuFkl9VfLKgPoJclk4ozv1fvzZ1aorzewB3601DeFB/v2560PeIR6P48U48ZY0zEKFd2yXS8v18h1iWRMxrKv0f7H2m28SgJO0AH78rrUXZ8seuPqUf9d4V0fYtOqlildvvMYgqauWzqUnzzWjtNxNbIu0R/GsETvnCX/grjF7QBrjL46xPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7273.namprd11.prod.outlook.com (2603:10b6:610:141::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 18:06:47 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Fri, 23 Jan 2026
 18:06:46 +0000
Date: Fri, 23 Jan 2026 20:06:40 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 01/14] drm/i915/dp: Early reject bad hdisplay in
 intel_dp_mode_valid
Message-ID: <aXO4sK_uI55MW988@ideak-desk>
References: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
 <20260121035330.2793386-2-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260121035330.2793386-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: LO4P123CA0543.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:319::15) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7273:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f42ec07-ee45-432f-ab07-08de5aaa2c33
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8InEtg5hffKZdanx/JvmV2A8diT888EBtENF5VwfTmtY2YdN0GvvfyA6vj04?=
 =?us-ascii?Q?wZRYb6Ry6N/5fSgzAewy8GK2k0xT9cpLK0KqbZIaDqIf8oMIt2bn24Ddnx0T?=
 =?us-ascii?Q?1eHTO/r4kg6PP9p1B3dckYzLMkoXIlP4+v3nt4w6560PhrfWFbzSBT+RdViG?=
 =?us-ascii?Q?vEDE7zFsxHQUbqvBGdZHSmj44ODYgPAuEixnV3YwTyYmio+4dTLG7iprYiFK?=
 =?us-ascii?Q?+TKfY+HJSPXj0utd5cCpIuUOwDVpuFq1Ap+WsR7lDLLhekhxwU56UVi/sOZ9?=
 =?us-ascii?Q?fk08S5MSuiAadT2QQUwHMtvWa3EzP44GQncZkRnvBQPuAkc4Jtyp8Y5FEQ97?=
 =?us-ascii?Q?loMbeveeofYqhVmBYwvcL+oNpBhBeyH6+4DU9PW4xa/Am9xMxIZDME0SpqhU?=
 =?us-ascii?Q?JxZs30AL3Kl0PBqC/uMa23+1OOY5DVQJmmzPi13TFHQ+H39qj7OGoC70Js33?=
 =?us-ascii?Q?vZkuQp5AtkM0l35pbA5W5vahazBwucp2eb1rd5GNOUmFWw1JpSu9UPR2sSA2?=
 =?us-ascii?Q?6ONI+KLjlWjk+7TIGobg9mssb8t3SKmxhfoHGg5cwRLL517dqsl4v+a+oDHA?=
 =?us-ascii?Q?SpmonSZsH7wzgXYewrRc4ApuyOu1wOkywZYWEZd5lDWWa+5J5CUPfi86GcBo?=
 =?us-ascii?Q?R6miU1pSsrvQUlfXCdyZO7JTqlC/c/oB3Q7wp/v7ePQ1DYmx8WPl04fZi9bk?=
 =?us-ascii?Q?Gmx9VBNNj3a0D9no6sFp6rO+pqFxohQ7UA5fKXyXpJNNVPNnKTAWwtppxAgB?=
 =?us-ascii?Q?SLWI/ZS4vNvHNPRhHpOQfZ9OMqqUyKK3xZJNvJXBdA7Dzhb24MbMKclLEoDk?=
 =?us-ascii?Q?CmtorGXyCfDogK/0PCgRl8yzSi98BFLVgB7tvU8uwKD5d4j2+djcz9zf52hP?=
 =?us-ascii?Q?sCTx8EhuF8osomOJZGamm0OWH0ueAM0+UwQU3zbqV1jxvg4+CNTFws8tQ0k+?=
 =?us-ascii?Q?5CZlTZIKmqa83xfoDf3KpFdX6F2Tn22Yf9mdy3XUBacfdGj+OClE0dpNKP2q?=
 =?us-ascii?Q?tBTTtO5X2s1+F99McbnzXP/nGVaP5iLVwCzgCEp9aPHCm9AhoedkoS5NC7Zw?=
 =?us-ascii?Q?GDcfTXnuuZadJ+BTEq5Gt+nU7Eq7QrSP+N24KJFUYrrA/FcBO8ekK6Y/Bnqv?=
 =?us-ascii?Q?VPDi9Bh/VbNyIoTLrVUHw3ID2vkAVmW7PiSeRacObYcaKK+8l7dH4KX/Wd3l?=
 =?us-ascii?Q?rJYQdpGqZnuXPPtGJmcv1MvkUZl2eRem+0IKeeF/JqiJNPnBQozbU3YRfkHQ?=
 =?us-ascii?Q?SjdKksBdoognQ7tb8aLOJnZN7SdBkrapASNkvLguICrLaYegWHp/m6EAwj1z?=
 =?us-ascii?Q?brk1ZSMjz28ZpZxEDbI70X8894aSBXuNrGXO4C2/BX2tbX0ZYvtLQMc1i3yt?=
 =?us-ascii?Q?l9s+ps9g6JWQLJIeeMy6b/kHfKiQkEW/wKSc8YYcGz2UjkkUNnpm6VYJvii2?=
 =?us-ascii?Q?mYtSqZ7fUsBTuvFkYMHyAjZdh8PbWBY/QEpf8opS/kWWm83mBOoN28/AJX2l?=
 =?us-ascii?Q?eEeafM9WVnXcskTSc8vTr12FPo3azBuGWpZ86Ml8vlHXVTsnfXJ8y0OdzHxU?=
 =?us-ascii?Q?mUuDToImPkohiFH3ncU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ye43v1awjzLvOQKGZPhMc2ni+9Z8vZgzPUAs/oUkTAMrqMfTm4RyzeZSZHDv?=
 =?us-ascii?Q?7itGIqMQeCsIwqxU/gv8ljy0amlRV4+7RgZfWvgsOoLZ339bzH4LLaCdJ7+d?=
 =?us-ascii?Q?qyMMJ5lLc4jD7OGLkhRxdWaf7W6uigHH9IYWNxntmm9USCjEyo1Vw7ezxA7K?=
 =?us-ascii?Q?WCz+SIE+7/hKMv5ckANE1d7r5qXSDveeuOZ+jIv1+ajDZ5cVfql11Z8lMehc?=
 =?us-ascii?Q?NXwCp8T1/2bLAUo9JkBnxQq8IfYFDir37yQiukm0kK30jOmey1GGwT6yZ65k?=
 =?us-ascii?Q?+yi+nUZd/uGpMwM+dBcF5Ceou4m66xNToEwr0WEeLxTDYgYviC1QDx3xrM54?=
 =?us-ascii?Q?fDKAkBTWC05fDxcK2h9+a0S0cBnieq05KJF++v1S/sczi+psAbNCcEvPHqC8?=
 =?us-ascii?Q?od13vlZH9f9gJCpNO0jKzmkXVhokYT2IbMIiXK8jsHMQIIP7Y6sTBuRGgCXo?=
 =?us-ascii?Q?e7lrdxfRgEHLKhkVrwZlbTUV0YWo38lDR+9/rPBdCtPFbI0ZIRRThvlVwbZ/?=
 =?us-ascii?Q?DT7u7Anjh+BrPcXRa8TGTE6ktlMjwH3mEvGwC0STC3VZrOI4xaB3FiKDvZw9?=
 =?us-ascii?Q?s45PIPruD02oW4ezaA/p1dchgo4mOd47yGSIDmquFE80HIJwSszaTnwfEQ8K?=
 =?us-ascii?Q?KqVAKiyUiHQu8KsGmQRmLc2iugBT7hntdexrzF33qLuopGW6h3l5nSnOyZPJ?=
 =?us-ascii?Q?iSo2J8t+yPMPEuxD6iKQU9NsMwbLYyUqAVCLThuvRrbCl2bmJwapI9iz6GLN?=
 =?us-ascii?Q?W6/FMtkwe9s9dZW1VccqmqtBpKAEkC+v4iVQUP2fFSSj01aKae8IOdD9DLjr?=
 =?us-ascii?Q?lb+m6/vYiid8Ewc+I9gQXRt3sVe5MKpXuz0p5ZkKtZFf8uO9+GibvZNSI5/q?=
 =?us-ascii?Q?N6lKUPlVs1PpR7BM1KfQikhrpa8NuVLiyVAyHj+A7G1tVXVgisc3AoijFLAp?=
 =?us-ascii?Q?eBG7Ryv2kl07Dc5k2LeUaDSXXigvN9pA6/HxmnFT1lZMnUiqqv2EuBG34P59?=
 =?us-ascii?Q?wK4Xq8EElaP4APBMig3RrGk3bqz08jcXUL10aRs0xrfIVK4Q4kE76Jgv1tge?=
 =?us-ascii?Q?w1vv73Fc8iE6rL+QaI00Kz50WTIUzV+3wzgSTWm9mI9uBqT3cUdFBFuQM8jV?=
 =?us-ascii?Q?WWd1Jtf5na23iG7A3kLmtD++OArGLObn2uHSyiyi/8AWSBwYfFw7QcEFo36A?=
 =?us-ascii?Q?aihB/6e+Q0URBCmTu2FG1gIlkL9TTN7j8QvbgkeV3CGthWq35GcwgJmW4xje?=
 =?us-ascii?Q?QflXZExPewthjEopc7V0DdT6/yLkJRXbQZz1HPkIoqgS4/XTIGSMm0mFRK4D?=
 =?us-ascii?Q?Y47raxdAqyW4jnDtl1p6QZDz/85UsYColecIvHTaDehsFF4e4mAJ7RnBjUR+?=
 =?us-ascii?Q?kEORShCJWH6IP5Ddy4RUOllGg39DP6P8GeI03m5tnZwZfr2QpJmg/KRZKek+?=
 =?us-ascii?Q?GSQ6om4dwv/olgpibvu+nExItXnfpsoxJXpUHZu6VX5gl6qGcQhAPygl+Eq5?=
 =?us-ascii?Q?ez5UtpfYtV/Ykr6ZSnMauVIw6QPYr4zbDCTFU/zViK8HbySFAxtHnKChdSuu?=
 =?us-ascii?Q?lBfE3xgG+Gk/Dm/DKiUz+GAiQblocIKPaJbw14tWKGwiNOmo+oKoS7o0yerU?=
 =?us-ascii?Q?d/ot2mxRw58wQ6OpPPBbJ1y2l+t/mUS3UeU2P66joKj0oAwd+L7f/qbMn7s7?=
 =?us-ascii?Q?/9SlBFuqyCDAunBNa/l0izRytynCLza5AEj5+s9cpLu7MQb+PyW3v92LkKID?=
 =?us-ascii?Q?LYpSwcolBQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f42ec07-ee45-432f-ab07-08de5aaa2c33
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 18:06:46.8742 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ab663g+sw7aTc7m9OXO3L+8gU2tvjU+CNORLV52He7GfbgFTfcZY0Qkzp5KipiG0t8gtv2vrSCxn5Y/MCDiEaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7273
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
X-Spamd-Result: default: False [1.99 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:replyto,intel.com:email];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.961];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A5CEC795B7
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 09:23:17AM +0530, Ankit Nautiyal wrote:
> Move check for bad hdisplay early as it is independent on other checks.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 79fd3b8d8b25..126da297efc5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1460,6 +1460,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	if (mode->clock < 10000)
>  		return MODE_CLOCK_LOW;
>  
> +	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
> +		return MODE_H_ILLEGAL;
> +
>  	fixed_mode = intel_panel_fixed_mode(connector, mode);
>  	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>  		status = intel_panel_mode_valid(connector, mode);
> @@ -1483,9 +1486,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	if (target_clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;
>  
> -	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
> -		return MODE_H_ILLEGAL;
> -
>  	max_link_clock = intel_dp_max_link_rate(intel_dp);
>  	max_lanes = intel_dp_max_lane_count(intel_dp);
>  
> -- 
> 2.45.2
> 
