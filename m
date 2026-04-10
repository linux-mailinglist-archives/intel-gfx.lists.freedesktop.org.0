Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wORVN4802WmjnQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 19:34:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4549D3DB16E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 19:34:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7902C10E9A4;
	Fri, 10 Apr 2026 17:34:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jSZWNXPm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1998710E9A4
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2026 17:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775842443; x=1807378443;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Q8BZoJbvCIrLKzUFBXjrYP1/UyX34RUFDIv+HpKwXWI=;
 b=jSZWNXPmJOwVPptUC3kL5gEphsn4/omXMN3ZeVZ1vF+G9DCbg75GlGkc
 uIhqxljuc83YKdEe99n/8zjJocgbYUCsHC/da9pMOF92ZOv9ZKpE8DU8x
 xAmEbD/pWMuUeGjK1lLybkTjuITLv8snJanhz2lCOoekirG+CG4f5PJQa
 Yr8s5g2vBdJW7J+bShTM/V+lTJldNR6gTmajhmYkFQvve9xuBBDN+Tz76
 orHU4nw/w0koTuCULpimZ8a4ZM9VIDkE1h7Bryiw3ob0tl0fSkAyAN59I
 zvYpDg3ty2EEQ1inzh6U5Sxc8SGmtuY70mwc61qFfr4NEkkkjLbwCo2on g==;
X-CSE-ConnectionGUID: QbUKXXtyT6qm1h++UPCbOQ==
X-CSE-MsgGUID: PizCSNjORKeg9+50MvAmyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="102327473"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="102327473"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 10:34:02 -0700
X-CSE-ConnectionGUID: qT31epB7RE6Zg8diQAh++A==
X-CSE-MsgGUID: FOcNGCDaTwKSjNm3HcvBbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="259608017"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 10:34:02 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 10:34:01 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 10 Apr 2026 10:34:01 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.46) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 10:34:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KQa2OV7pEIrJlVyJMOLsdX9+NCcrm4XznpnkadCmdf5eM8+OHkkSVpLLZyn3kzNHtNVJtfCc5gHCoNcAoGXKluuKescKJ4ji+RtySudHga9arDw7/Rad75sTzDRJ4xMoLHbspFjXIxA7kHjoTDIs1gm9W/wnVPkZZ1Pub9JnerCq9F3ejt4BnY+KCqM+0lJo07mX36Ki5HBWoTZrNzgBSD8ri1+ikBo1ra6kiEMkq9MFTW7qDHXGpo1vWuoy0DsDxz31GgCgr6AFMULfT3UxlvC7H7lgLmKnImM4mcVjxW6nGhEgNxkvanrMolLZr5M616sM9guSDk1hDJHP5U2JJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2948A4hC4AlW5WSj6fQVgBG+BhRIeokZVFQ3fXVeRfQ=;
 b=E83eMCJVr9zc1AKkGzZNmNk6SehfAF7kEuhohl9GqnfO0o6QoE65lQ1a/7LIlgUezzvsnQFdFXubmVJ7FbU9a1HUckVIwOXO1lfq1B0KHTZKU6GfrEE/wnv/5rnyyrShNddPKb81pdGceXU1M6qGsu0OlQ3WIbg4EPU6A4+FVpRVoYxfBUPejeoH9az9M9sEIbhUZvjXttSZU/0eW3EooVfYOQzFIcBzlXerPEb5aW5rP8N6xosJFUN2LPsBHXhozW80BGkDb2Cr9kf61Qlidj2x2JaRvMG0iyRAjQrb4+NMo2L3JgyqHR5ig/YN1TsrUTMkCL/OzSGvcEp+Er3jFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB8092.namprd11.prod.outlook.com (2603:10b6:8:184::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.44; Fri, 10 Apr
 2026 17:33:57 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9769.041; Fri, 10 Apr 2026
 17:33:57 +0000
Date: Fri, 10 Apr 2026 10:33:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/4] drm/i915/bw: Extract platform-specific parameters
Message-ID: <20260410173355.GE6301@mdroper-desk1.amr.corp.intel.com>
References: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
 <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-1-23c53afa7db0@intel.com>
 <5a2fefe3f3d7ee92d3cc1bca1ffe88370d54c822@intel.com>
 <20260409231256.GB6301@mdroper-desk1.amr.corp.intel.com>
 <87ik9yx4kx.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87ik9yx4kx.fsf@intel.com>
X-ClientProxiedBy: BY1P220CA0004.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:59d::15) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB8092:EE_
X-MS-Office365-Filtering-Correlation-Id: fc3546b6-d759-4ccd-d0aa-08de97275832
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: fgggR/27VT+V+9RmCFNLrOWbtFuDISMPdDdypvKWBmZPx9P9IYeE8/g5IDQd8JXKcL6RG4TjgvlgHlq5o3u1527r/wjrPaS/RYuGUFZ8MOmouIHzwDEkAjzhZeEKlcwnrIju6VsGXFdls2m/vZzDu1ebnQ+xbk68Zy9ulnT8cdz20gkllDU0B42fRjNp6I3afVajZBuzruFk4GnX+Oe418JQYiLDRkL3BbfMMViPztOahMN0SglCNPunQsgHWRX0VtCbjLQ1Mgsx7TlSkrLSrRyRA8pT3L1McErKJIFO1z31jdQA+rYpF3Mz66iVSc1bgDKowHA2JPQmgtSOP4OCqP/dekjh9Oc28Aa/OclsnBcOGOc2eQy/8BD9fKhHAe0evwhM9f4vZaZyOLsTq1YKiUWIfDaIblhsAzqD4sJpybkRouKson7Bu/IESwL+fzmcAp0njQYwVlF2FD9pnPTorflQ3y2h1AwvTJgGZjhmzmg5RAs96Lu8F7DM8Lfkm3LIGybY1o5aEAkWE9bqHDR4MkrJadEFz87DgD+Tm/R2Lrjuo+TqNloh5lXD+Pwn1OR7LHzGUbq3woIZi9Uyw/YShEJrcrw5D1nZegMimAH797sJTdwx9k1ifqdq5BojD42wjdq7l5t4fkkJmB4g/zvfmntHmkkaIShdse57ITNhZwE+BHcuQdduIftsyrAS+6t2u5+xOlAPn/BwwS7+zxDb4s61/Oh5KHAkdvex6Zni7l0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mRiIkwnIV7tbpwlF2DenEQVDvmuoSC3/sII7vIUpkJ0AeLF2mA5+d3JTdRIW?=
 =?us-ascii?Q?uzHMv0vTbw2kO341Zf7WTp7UId2AV9JLFEqCbesyM7qGLJMbaR6ytwU8I0hx?=
 =?us-ascii?Q?XczJMM9GAt0yN8ytfdXIzjFOZ5D91TpqVS4obfobqDl8P/MbIMfCUTxlsW8l?=
 =?us-ascii?Q?bOhdRBFUn4/VrNxR62ZzQkAuLYEibHsYwTsiJq/CY2LHSAPXZ59te0Y2QLID?=
 =?us-ascii?Q?zWdyCGDj0H4PKr8UdbDei3ej32mkTapB4QpiC/9PlyHvhSvPKvvuHr4qnNMv?=
 =?us-ascii?Q?Zkg+OQUVdLBnUIcOVJ+JAhddDyhE9q+LRILX6iwVBzxuSwcUOjgF0OG5t4ey?=
 =?us-ascii?Q?AJP0eDf2KqOlBekf2pxy/qhqiD7ztzj5lkP3M56ah3DfqwQzDK8coXd/30sq?=
 =?us-ascii?Q?MxSFhZpjqJd21JAvd2hzTqpFFE/5JY47wiHLyfXd7FBstqohBR+fdE0GLFCE?=
 =?us-ascii?Q?eq/lMRAMQUWP/1x8C7Nb8VRKFnijLml7nuWFPE6D+jNpu/7k2AKArDq7AeTn?=
 =?us-ascii?Q?YEAraBHaTpiUKQ7QqgS8BARmD5YIP4GhqknDMVvdAEjgIh1F0X8AIzKu9UKa?=
 =?us-ascii?Q?LcbcY6PzUCOYJQ+/cETWLFqr6nEARzSXRJnEqw2SyQccz0l055MvJk5/yIqK?=
 =?us-ascii?Q?fBLsdDk9Di3o/nCKlBGIdrGqlg4qxh8XEKybDYY5x+zDBX5kH5uxQDW3+oQM?=
 =?us-ascii?Q?BVwpOmn0AcHWttwHz8bAR3GCgxvu+xUa17fNf74rmsfXXyhfOKb0D0HXtaYq?=
 =?us-ascii?Q?tIHYNr04vk0RL7ruH+ZykqoXWeF59nvniEFq8//GWTxmr5YXj2Gh88k8toG2?=
 =?us-ascii?Q?kUApQQmLI9XJa3TDTHtiPIcXiNxcfTEKGZYBb9PrbrB5swJhcDSapV62fI2S?=
 =?us-ascii?Q?mSO0gOaLGtwllLWbpZhUJtafj6JSZFTBwgvJTCltCDsFKLWGlVlgGcTOrM3S?=
 =?us-ascii?Q?/5bmT8tZoeRAJH5czLcKQhdvVJWVuxlkZtjiKdxqy6x/mId1hPJ4lNC+leHE?=
 =?us-ascii?Q?w36g3hIrpw7zLIM/+2YYMxbP7Ne7XN4XohTwlfHwrmDmf2i5RSJk23udnT70?=
 =?us-ascii?Q?yQgGcRy5VsjmMMmKSbi5XelE8HO25V3qzguU1WVnfJVzUMyQM+zaN2ktlWlM?=
 =?us-ascii?Q?ZWv5o6BiWOQG3SGsPStomwbeC8AylDw36E8ZmJpddYn03rS/ACqdAUhJS1WQ?=
 =?us-ascii?Q?2wV9+Hic+Qu1Vau9qFf2kbxj3b8ekqxtbJhhLzy2kTPCR5MxIwM9frGNWsca?=
 =?us-ascii?Q?2BNqTxJk9UsjJKpXnwnSwbQmr1BFfdU+CAUqOsjYtNpo0FC2s8dV9XElhysn?=
 =?us-ascii?Q?Bt6uCH9hz0A2NBPtPRq7ZSIx/FyiPJb6YIjmAjowuSlLoLTIM6X4lKIO9JvI?=
 =?us-ascii?Q?zdGPJUpAFJOkzKKN7yZkgsx6O9Q4Tb0UNMHt8spCiXCUG4DIavTcJT6PL7w5?=
 =?us-ascii?Q?x4qO1h6dtKOGl+/eLtf/r26FFKYE61bGMlqmq2ys5t7RAQcD1vj8rw8jlcDv?=
 =?us-ascii?Q?Ns+5dw91nfOj/ZEijcMpHtHatg8X7jqTWp2Skyd+sP98YvCN4wRm6imPizSm?=
 =?us-ascii?Q?I+fkbiquXXqXUKPD+WhAa1TMjJHXHSsGY+yx7JOpSqxxdyVkUmscoUI2CtDf?=
 =?us-ascii?Q?ak3A0eRGERTes+HtCk1NNWz98AAVp1Z02kFm0TmA+bj83L0lWmHwJ6NU/31S?=
 =?us-ascii?Q?tHgvc5+Sp2ZyxNZEfDKH0E6RoD/odlTSfv0tYUpIiN7igH2kAQ/5Q8spomGr?=
 =?us-ascii?Q?3VmvTPPK1tSWqm7ioQ5D/By0aWyVMrs=3D?=
X-Exchange-RoutingPolicyChecked: WkfjxFlMjK+fr5QFoxjr9+JNWBMkPFNae0kCxwaQPHSgJLSvI8+xftO86FPf60LAdgH+u0sab4Ls0WWxwSPvUonqN6G40yONb4sKRR5vTBnec1N04F+NsZB5Cme/UkY1gmx0Lqy+GIjJx1RZx8qHdYzbG9XLsMTRpeRhDLnc8wDdoVYqlNz7GUQlRnvqdgb0h06VrN6FRnHIiKSGUX6ZnAe5VIx9rCJYNwi2Cc/RNbmY5QssCRjY6jIYogpbvWgmvSyIuOxWKa7zjq+jQkDHq98+J7SRO+oxvVx2D6ycMmW8OtItzITLvWpCIfwGEqq7Wtpf6TWXS1B2s9JFf8wqfA==
X-MS-Exchange-CrossTenant-Network-Message-Id: fc3546b6-d759-4ccd-d0aa-08de97275832
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2026 17:33:57.4131 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qxg3ZPquqStbGNfnIJGVjeHMhVvcOzfWlcnt7bPHr87hleJn0AZm/Q7gpuAlQUN0q17uvbGU7rlc7EFwCj62XGlXIk10bayzm8hUciINZvo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8092
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:gustavo.sousa@intel.com,m:jani.nikula@linux.intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4549D3DB16E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 10, 2026 at 11:39:10AM -0300, Gustavo Sousa wrote:
> Matt Roper <matthew.d.roper@intel.com> writes:
> 
> > On Wed, Apr 08, 2026 at 10:16:42PM +0300, Jani Nikula wrote:
> >> On Wed, 08 Apr 2026, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> >> > We got confirmation from the hardware team that the bandwidth parameters
> >> > deprogbwlimit and derating are platform-specific and not tied to the
> >> > display IP.  As such, let's make sure that we use platform checks for
> >> > those.
> >> >
> >> > The rest of the members of struct intel_sa_info are tied to the display
> >> > IP and we will deal with them as a follow-up.
> >> >
> >> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_bw.c | 174 ++++++++++++++++++++++++--------
> >> >  1 file changed, 133 insertions(+), 41 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> >> > index 474438fc1ebc..ed840b592eff 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> >> > @@ -375,77 +375,170 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
> >> >  	return dclk;
> >> >  }
> >> >  
> >> > +struct intel_platform_bw_params {
> >> > +	u8 deprogbwlimit;
> >> > +	u8 derating;
> >> > +};
> >> > +
> >> > +static const struct intel_platform_bw_params icl_plat_bw_params = {
> >> > +	.deprogbwlimit = 25,
> >> > +	.derating = 10,
> >> > +};
> >> > +
> >> > +static const struct intel_platform_bw_params tgl_plat_bw_params = {
> >> > +	.deprogbwlimit = 34,
> >> > +	.derating = 10,
> >> > +};
> >> > +
> >> > +static const struct intel_platform_bw_params rkl_plat_bw_params = {
> >> > +	.deprogbwlimit = 20,
> >> > +	.derating = 10,
> >> > +};
> >> > +
> >> > +static const struct intel_platform_bw_params adl_s_plat_bw_params = {
> >> > +	.deprogbwlimit = 38,
> >> > +	.derating = 10,
> >> > +};
> >> > +
> >> > +static const struct intel_platform_bw_params adl_p_plat_bw_params = {
> >> > +	.deprogbwlimit = 38,
> >> > +	.derating = 20,
> >> > +};
> >> > +
> >> > +static const struct intel_platform_bw_params bmg_plat_bw_params = {
> >> > +	.deprogbwlimit = 53,
> >> > +	.derating = 30,
> >> > +};
> >> > +
> >> > +static const struct intel_platform_bw_params bmg_ecc_plat_bw_params = {
> >> > +	.deprogbwlimit = 53,
> >> > +	.derating = 45,
> >> > +};
> >> > +
> >> > +static const struct intel_platform_bw_params ptl_plat_bw_params = {
> >> > +	.deprogbwlimit = 65,
> >> > +	.derating = 10,
> >> > +};
> >> > +
> >> > +static const struct intel_platform_bw_params wcl_plat_bw_params = {
> >> > +	.deprogbwlimit = 22,
> >> > +	.derating = 10,
> >> > +};
> >> 
> >> In the above, "plat" feels like tautology, since they're all prefixed by
> >> platform acronyms.
> >
> > "soc" might be more consistent with what we (and various hardware docs)
> > do to refer to "stuff that's outside the graphics/media/display IP and
> > doesn't relate to GMD_ID version numbers."  Technically "soc" is a bit
> > of a misnomer too since a lot of our recent platforms are multi-chip and
> > not truly SoC's anymore, but the intent is still understandable.
> 
> Yeah. I intetionally prefered to use "platform" as a general term to
> refer to either SoC or multi-chip package.  Do you prefer that we name
> the struct type intel_soc_bw_params?
> 
> What about intel_display_bw_params that is added later? Is that a good
> name? I thought intel_ip_bw_params would be a bit vague, since we have
> different types of IPs (display being one of them) in the platform.

Personally I think "soc_bw_params" vs "display_bw_params" seems like a
similar distinction to what we have elsewhere in the driver (especially
if we add a 1-sentence comment above the structure clarifying what the
origin/source of those parameters is.  But I'll leave it up to Jani and
the other display experts to make the call since they're the ones who
work with this code the most.

> 
> >
> >> 
> >> > +
> >> > +static const struct intel_platform_bw_params *get_platform_bw_params(struct intel_display *display)
> >> > +{
> >> > +	const struct intel_platform_bw_params *ret;
> >> > +
> >> > +	if (display->platform.dgfx)
> >> > +		goto dgfx;
> >> > +
> >> > +	ret = &icl_plat_bw_params;
> >> > +	if (display->platform.icelake ||
> >> > +	    display->platform.jasperlake ||
> >> > +	    display->platform.elkhartlake)
> >> > +		return ret;
> >> 
> >> What's the point of assigning and returning ret?
> >> 
> >> Why not just return &icl_plat_bw_params; directly?
> >> 
> >
> > It looks like the intent might have been to let people keep copy/pasting
> > the same pattern and have the fallback at the end always default back to
> > whatever the "newest" one was if a proper match wasn't found.  But I
> > agree that the handling here feels awkward and a simple if/else ladder
> > would be preferable.
> 
> Yeah, allowing developers to easily add new platforms without too much
> churn was the intention here.  I knew this style was unconventional, but
> I thought the intent justified it (and IMO the code is still readable,
> although admittedly a bit weird).
> 
> If that's not acceptable, would something along the lines of below be
> accepted?
> 
>     if (display->platformOB.dgfx) {
>         if (...)
>              return platform_a_params;
>         else if (...)
>              return platform_b_params;
>         else if (...)
>              return platform_c_params;
>         
>         default_params = platform_c_params;
>     } else {
>         if (...)
>              return platform_d_params;
>         else if (...)
>              return platform_e_params;
>         else if (...)
>              return platform_f_params;
>         
>         default_params = platform_f_params;
>     }
>     
>     do_warning();
>     return default_params;

Yeah, I think a traditional if/else ladder like this is best.  I don't
think we even need to track a 'default_params' variable; we can just
directly return some recent platform as a fallback at the end too.  If
the fallback winds up not getting updated when we add new platforms, I
don't think that really matters since there's no real guarantee that
falling back to incorrect n-1 platform numbers is better than falling
back to incorrect n-2 platform numbers.

If we've screwed up and forgotten to add the parameters for a new
platform, then that's going to be something that's flagged almost
immediately by CI and will be quickly fixed long before the platform
ever leaves force_probe.


Matt

> --
> Gustavo Sousa
> 
> >
> >
> > Matt
> >
> >> > +
> >> > +	ret = &tgl_plat_bw_params;
> >> > +	if (display->platform.tigerlake)
> >> > +		return ret;
> >> > +
> >> > +	ret = &rkl_plat_bw_params;
> >> > +	if (display->platform.rocketlake)
> >> > +		return ret;
> >> > +
> >> > +	ret = &adl_s_plat_bw_params;
> >> > +	if (display->platform.alderlake_s)
> >> > +		return ret;
> >> > +
> >> > +	ret = &adl_p_plat_bw_params;
> >> > +	if (display->platform.alderlake_p)
> >> > +		return ret;
> >> > +
> >> > +	ret = &adl_s_plat_bw_params;
> >> > +	if (display->platform.meteorlake ||
> >> > +	    display->platform.lunarlake)
> >> > +		return ret;
> >> > +
> >> > +	ret = &ptl_plat_bw_params;
> >> > +	if (display->platform.pantherlake ||
> >> > +	    display->platform.novalake) {
> >> > +		if (display->platform.pantherlake_wildcatlake)
> >> > +			ret = &wcl_plat_bw_params;
> >> > +
> >> > +		return ret;
> >> > +	}
> >> > +
> >> > +	goto missing;
> >> > +
> >> > +dgfx:
> >> > +	ret = &tgl_plat_bw_params;
> >> > +	if (display->platform.dg1)
> >> > +		return ret;
> >> > +
> >> > +	ret = &bmg_plat_bw_params;
> >> > +	if (display->platform.battlemage) {
> >> > +		const struct dram_info *dram_info = intel_dram_info(display);
> >> > +
> >> > +		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
> >> > +			ret = &bmg_ecc_plat_bw_params;
> >> > +
> >> > +		return ret;
> >> > +	}
> >> > +
> >> > +missing:
> >> > +	/*
> >> > +	 * Use parameters from the most recent platform,
> >> > +	 * but raise a warning.
> >> > +	 */
> >> > +	drm_WARN(display->drm, 1,
> >> > +		 "Platform-specific bandwidth parameters not found, using possibly incompatible default values\n");
> >> > +
> >> > +	return ret;
> >> 
> >> I don't understand at all why the function is written the way it
> >> is. Seems like it should be a regular if-ladder like we have, with zero
> >> gotos.
> >> 
> >> > +}
> >> > +
> >> >  struct intel_sa_info {
> >> >  	u16 displayrtids;
> >> > -	u8 deburst, deprogbwlimit, derating;
> >> > +	u8 deburst;
> >> >  };
> >> >  
> >> >  static const struct intel_sa_info icl_sa_info = {
> >> >  	.deburst = 8,
> >> > -	.deprogbwlimit = 25, /* GB/s */
> >> >  	.displayrtids = 128,
> >> > -	.derating = 10,
> >> >  };
> >> >  
> >> >  static const struct intel_sa_info tgl_sa_info = {
> >> >  	.deburst = 16,
> >> > -	.deprogbwlimit = 34, /* GB/s */
> >> >  	.displayrtids = 256,
> >> > -	.derating = 10,
> >> >  };
> >> >  
> >> >  static const struct intel_sa_info rkl_sa_info = {
> >> >  	.deburst = 8,
> >> > -	.deprogbwlimit = 20, /* GB/s */
> >> >  	.displayrtids = 128,
> >> > -	.derating = 10,
> >> >  };
> >> >  
> >> >  static const struct intel_sa_info adls_sa_info = {
> >> >  	.deburst = 16,
> >> > -	.deprogbwlimit = 38, /* GB/s */
> >> >  	.displayrtids = 256,
> >> > -	.derating = 10,
> >> >  };
> >> >  
> >> >  static const struct intel_sa_info adlp_sa_info = {
> >> >  	.deburst = 16,
> >> > -	.deprogbwlimit = 38, /* GB/s */
> >> >  	.displayrtids = 256,
> >> > -	.derating = 20,
> >> >  };
> >> >  
> >> >  static const struct intel_sa_info mtl_sa_info = {
> >> >  	.deburst = 32,
> >> > -	.deprogbwlimit = 38, /* GB/s */
> >> >  	.displayrtids = 256,
> >> > -	.derating = 10,
> >> > -};
> >> > -
> >> > -static const struct intel_sa_info xe2_hpd_sa_info = {
> >> > -	.derating = 30,
> >> > -	.deprogbwlimit = 53,
> >> > -	/* Other values not used by simplified algorithm */
> >> > -};
> >> > -
> >> > -static const struct intel_sa_info xe2_hpd_ecc_sa_info = {
> >> > -	.derating = 45,
> >> > -	.deprogbwlimit = 53,
> >> > -	/* Other values not used by simplified algorithm */
> >> >  };
> >> >  
> >> >  static const struct intel_sa_info xe3lpd_sa_info = {
> >> >  	.deburst = 32,
> >> > -	.deprogbwlimit = 65, /* GB/s */
> >> >  	.displayrtids = 256,
> >> > -	.derating = 10,
> >> >  };
> >> >  
> >> >  static const struct intel_sa_info xe3lpd_3002_sa_info = {
> >> >  	.deburst = 32,
> >> > -	.deprogbwlimit = 22, /* GB/s */
> >> >  	.displayrtids = 256,
> >> > -	.derating = 10,
> >> >  };
> >> >  
> >> >  static int icl_get_bw_info(struct intel_display *display,
> >> > @@ -453,6 +546,7 @@ static int icl_get_bw_info(struct intel_display *display,
> >> >  			   const struct intel_sa_info *sa)
> >> >  {
> >> >  	struct intel_qgv_info qi = {};
> >> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
> >> 
> >> Perhaps it would be better to pass this in instead of every function
> >> having the call.
> >> 
> >> Nitpick, "plat" is not an abbreviation I'm fond of.
> >> 
> >> >  	bool is_y_tile = true; /* assume y tile may be used */
> >> >  	int num_channels = max_t(u8, 1, dram_info->num_channels);
> >> >  	int ipqdepth, ipqdepthpch = 16;
> >> > @@ -469,7 +563,7 @@ static int icl_get_bw_info(struct intel_display *display,
> >> >  	}
> >> >  
> >> >  	dclk_max = icl_sagv_max_dclk(&qi);
> >> > -	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
> >> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
> >> >  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
> >> >  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
> >> >  
> >> > @@ -499,7 +593,7 @@ static int icl_get_bw_info(struct intel_display *display,
> >> >  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
> >> >  
> >> >  			bi->deratedbw[j] = min(maxdebw,
> >> > -					       bw * (100 - sa->derating) / 100);
> >> > +					       bw * (100 - plat_bw_params->derating) / 100);
> >> >  
> >> >  			drm_dbg_kms(display->drm,
> >> >  				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
> >> > @@ -524,6 +618,7 @@ static int tgl_get_bw_info(struct intel_display *display,
> >> >  			   const struct intel_sa_info *sa)
> >> >  {
> >> >  	struct intel_qgv_info qi = {};
> >> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
> >> >  	bool is_y_tile = true; /* assume y tile may be used */
> >> >  	int num_channels = max_t(u8, 1, dram_info->num_channels);
> >> >  	int ipqdepth, ipqdepthpch = 16;
> >> > @@ -557,7 +652,7 @@ static int tgl_get_bw_info(struct intel_display *display,
> >> >  	dclk_max = icl_sagv_max_dclk(&qi);
> >> >  
> >> >  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
> >> > -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
> >> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
> >> >  
> >> >  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
> >> >  	/*
> >> > @@ -602,7 +697,7 @@ static int tgl_get_bw_info(struct intel_display *display,
> >> >  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
> >> >  
> >> >  			bi->deratedbw[j] = min(maxdebw,
> >> > -					       bw * (100 - sa->derating) / 100);
> >> > +					       bw * (100 - plat_bw_params->derating) / 100);
> >> >  			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
> >> >  							  num_channels *
> >> >  							  qi.channel_width, 8);
> >> > @@ -663,10 +758,10 @@ static void dg2_get_bw_info(struct intel_display *display)
> >> >  }
> >> >  
> >> >  static int xe2_hpd_get_bw_info(struct intel_display *display,
> >> > -			       const struct dram_info *dram_info,
> >> > -			       const struct intel_sa_info *sa)
> >> > +			       const struct dram_info *dram_info)
> >> >  {
> >> >  	struct intel_qgv_info qi = {};
> >> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
> >> >  	int num_channels = dram_info->num_channels;
> >> >  	int peakbw, maxdebw;
> >> >  	int ret, i;
> >> > @@ -679,14 +774,14 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
> >> >  	}
> >> >  
> >> >  	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
> >> > -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
> >> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
> >> >  
> >> >  	for (i = 0; i < qi.num_points; i++) {
> >> >  		const struct intel_qgv_point *point = &qi.points[i];
> >> >  		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
> >> >  
> >> >  		display->bw.max[0].deratedbw[i] =
> >> > -			min(maxdebw, (100 - sa->derating) * bw / 100);
> >> > +			min(maxdebw, (100 - plat_bw_params->derating) * bw / 100);
> >> >  		display->bw.max[0].peakbw[i] = bw;
> >> >  
> >> >  		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
> >> > @@ -814,10 +909,7 @@ void intel_bw_init_hw(struct intel_display *display)
> >> >  		else
> >> >  			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
> >> >  	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
> >> > -		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
> >> > -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
> >> > -		else
> >> > -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
> >> > +		xe2_hpd_get_bw_info(display, dram_info);
> >> >  	} else if (DISPLAY_VER(display) >= 14) {
> >> >  		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
> >> >  	} else if (display->platform.dg2) {
> >> 
> >> -- 
> >> Jani Nikula, Intel
> >
> > -- 
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
