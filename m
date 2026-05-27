Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBaCKB71Fmo6ygcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 15:43:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D5B5E53F4
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 15:43:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55F0110E7EA;
	Wed, 27 May 2026 13:43:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fFqg76+w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0395610E7EA;
 Wed, 27 May 2026 13:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779889435; x=1811425435;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=dzCsDus1j4GtYKHLiZgfmytMRVOGCi+gwVRcc8yVvQE=;
 b=fFqg76+wEOsj/if7wTM6JE0bfMpss3HQzJ0FiX6oRKU1H8VEZu7LT8bH
 qjROXF+x5kkduI610Av9V48NpiUFTWTzBJtlquLzPZ8fSmFb3rgBl2oq3
 n+3pBHwSMla4xhIDaQf3ONLeat/HregzoSGiso5eV/VLMMuRrfu/P9l/C
 ILdPYh9DXro4bIO2yWTKZfIu5YVe/KMyKqYZ8u0k9CjI9JIR7yqY7jsMz
 esVSJaDikYb1eumw5Hoj7gq9cfnoB1VGp2vMGccDoTKAQhvO4Pu9xIyQ/
 mTy8W2Tv1pb4is801aOSySHYAPFuWrQfroXJnb3qf7lzxsZY1nHqvlvYa g==;
X-CSE-ConnectionGUID: oYCebrHERqyemRb8ZMCFAA==
X-CSE-MsgGUID: U/ANNGt2TbeoRV6Vw7f62Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80568678"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="80568678"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 06:43:54 -0700
X-CSE-ConnectionGUID: Qgf9ZUaDSB+uaMPoH5KMWg==
X-CSE-MsgGUID: m04SPPokS/etEADdh3v/jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="242083450"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 06:43:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 06:43:54 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 06:43:54 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.28)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 06:43:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DX/EvgZwPXjCa+dyjzyAskmbn2RpjXif7opOeHTb2gsSn9RDuDOPBV0rNwWiYl7TSfGBjfUWT0jiyzvG13wcINLYd+KsVV9YGgJKrnxitHsmaONhJTMu7WjbdXItqJbZK+QQBBfByTmFSX44bBhzGPerFtD2eInsfWXmKt31778oiM0/tKEMhPPwGZZ1uAHcVEKIlkZH9sLI+7ILS5ltPzBijzwFusPOZQBTZsPrruqBHXHlCxBGnqMCVxTdrV3s8mavZ62f6tvccJvNEKtORp33NLMbbGK/4CkUM2PMtI3Q91eQBObiaWluSFVEKoxLX5p6MirxVHymInyLVlJnYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9fZ1njwDqVck2Smc3cyOYu35nAY3gi19eDR1Q+C3ckg=;
 b=E+BMiBIm5UMZZa2FsmrnXdUGV9/6B7Ad28GkfR2cmkSeq4/3QO0Vgo5yJLBV7/KLBKurjNPdbtoItIl1ybNYqRKZEn6c10e4GmQEWtrk2BRjX7NZ2WWfaxRNHnLidZU99uXny3exTC20dQDtxc6YMqZtCxvUtGI26rnRM3p+a5UzwDdW9xHr8ZVHVy+GYOzbLjNJjPJRIY5oXXYnTlXPS92veamJIzPgzYeJBrvVLAMQZCH13UJSb5iAjAsZnuZF4wBqwhBVa32Ekeqt6KGpOLvi0ZeMdwMyAQbZXSMLzYqFhtRmQ9XMsC0Zio6/o5WlVaLyQ4C93w5BlXVSBoI2xA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by DM3PPF63A6024A9.namprd11.prod.outlook.com (2603:10b6:f:fc00::f27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.11; Wed, 27 May
 2026 13:43:49 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Wed, 27 May 2026
 13:43:49 +0000
Date: Wed, 27 May 2026 16:43:43 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, Lyude Paul <lyude@redhat.com>
CC: Shawn C Lee <shawn.c.lee@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH] drm/dp: Add DSC virtual DPCD quirk for Realtek MST
 branch device
Message-ID: <ahb1D7H0tqvi9V_e@ideak-desk.lan>
References: <20260525125516.2794636-1-imre.deak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260525125516.2794636-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F6C8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::652) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|DM3PPF63A6024A9:EE_
X-MS-Office365-Filtering-Correlation-Id: 6279d395-5d6e-4a5b-0eb4-08debbf5fb82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: CinDHKRDwZAWdYdGksDZFXuCKGlk953Q8XJz9RZZl1Fu1ud7TlN+/T042cpFNtcckhwrBdXZcbnHdLsii8aGO91yLkc/oORhbyg9Cn2epZd/NBMbJxFYnTLOofcHDQw/HabRwcf/dJq9ylkWQa4W1Q/UTGnOD9cjM+q3azuhNLPmvwDCjbiXl3NOmFRzCeGdUjg00Z9F+fDFXNI11wPTaBfNwQpFt7xsX7ZbT2GyoLV3EOf1JLWlXpMSzSU3mXLi4ZbtLF7lzWjAoU5zCB2OnnNqZgeQl51QUI5nYCtZlci7zMC60hgPes3mDbTwtWFOsa8xYCGSUCSVkTc9837aFoBwf0H7I1NX9V0J/yHzUIgmd4M8m+TdlMnMRDXg45tm51u7QkqGQKwi/DCIhiXtfEJ0GpXYGYN77wH2yHGx7Lm0XcX6f+Kh7/UchC1SBL9jbgc52U04fRjANv2K6Shtdsqcp0QutUsGfdtLFFXIvf89qzeDjG2aBlTvN1j8OU7tZDMSUS4EKnkAsHqvEpGoj00/oV+dVF+pnbZz/HwyD6i3mYTLS5F2Jy9WvNBOosxzE0u3s8visvXBzxYiQ+ol1epEfgpzjDHoNIYvymoC7uAGaRE79D+frY/tc6oSn9kSykMzmTXzEacb/eXAQmp1wMVohg2yM9ImEQOYMGQJkou0/Jw4YzeqvsmdnqUvkfzq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1wdoZux/830p8M7NuIbTpIkjSyRtiCXXaTzdCtrvoTBM2TBu1W6t2ntACl5g?=
 =?us-ascii?Q?xd/i05TpbKbk19v+QOQqXuQ9CVp9SX//JMa3A22h5KgiYKvSI49V5MvqVAG5?=
 =?us-ascii?Q?WdNtwN4rrl/wXjkxJreg+Ph15Pi9fvAtSywH5lYgjF2TkGXP6S+49PN5Bbs2?=
 =?us-ascii?Q?grT2PikHrBVPVbVLV9kHYtqDAWhBIf/WN6dcFWNEhdAmAs4okK2TdoHY/axw?=
 =?us-ascii?Q?WVA5Zz+H4Kcbq42+cmeTGuZVfOZ2RwKCwIws5mwBnrwqQTgxccD6GCOf+kF1?=
 =?us-ascii?Q?AEV5NqML+dQTH5K1g8AweEMv3Kovi13PzysrOTmDtlhUscnk7YXJWs1VbvEm?=
 =?us-ascii?Q?HPgUiGxh+ZZFq5LzJ0NCjx5XBCyfU38oKsj6OpFgR6dI39ehAmPQbRiLSg6G?=
 =?us-ascii?Q?4v6GkaWQpTmGit9nX53CMFSKwYmqrPR1BHg/C/IuiqQ5xdmtDnOyxai7nLNx?=
 =?us-ascii?Q?RjMbdsexeTYLyJ8sk1F2vyvVMvupANVH5MXqnQfrfuTmf9b34rqSQeCs0pFy?=
 =?us-ascii?Q?Y8vNBL2Nij7QdWJzFxwOTo64zLM6bNJMsR7zPCRGJKd9b+gyTOqclMSoab41?=
 =?us-ascii?Q?Zg9h5w+8YpJUf4ra0Ju92KHgqCUONpqeN4yUvvGYDRsS/81Oe4sEujckqBBJ?=
 =?us-ascii?Q?V0/Oj2lSdZbgK/DT8L1IRkHCBrRQCdAoty5Di3tvb1x2tozSc/F0fR41S0wM?=
 =?us-ascii?Q?3aVkN+FZS7INSmKNNWoH4h6IceUm2RyA2IpuFh6yaAYU5pxSCEidQCyU+nIq?=
 =?us-ascii?Q?gVwsQsDSbPrVikLfmYEom5Cb0yvq4TJght4hfqiYQWIbiNAZieSvzoJT7ixE?=
 =?us-ascii?Q?jjUSkvO2O8GO9hnMfALT78qTiW+vqZcZLGhy/WLXgFi7sGXEFtH6m5XYzybN?=
 =?us-ascii?Q?jIXoAE2NUu75A0N/0tL/XTxHTVjXWyTEMmISGt3S8HLDFcRHmfrTsH1cjhyb?=
 =?us-ascii?Q?490jazDxRUEKoWn1tckAPfSDxT/E5HtMkqtqGB+T06xtkuFyV5Ad20LooqrO?=
 =?us-ascii?Q?rRI/Be2LHe0VAMUVtVAEg1r7sraio3sFXyuo/oOerG4T9amSThACtFOJixZa?=
 =?us-ascii?Q?JAQorc7zsrpRhiMVL6uzWZfzDV2OwsNRlJ2NSy/yRMKweDXLbpKQg1WJQ7o2?=
 =?us-ascii?Q?gbgnb9MHc5MbP5Q9YU8IDC/DnfZCVRNvUxdqI0gszyUQNc713JIsLFnFOV9t?=
 =?us-ascii?Q?w8FYaeNz0JXKGsvWzEOe9NeMhJY6L5Dm7U3Ygf8a7TeTPkhIj+lOl5eydYVq?=
 =?us-ascii?Q?zSQvW0C5mQqbqUa3q+qMoFwnE9VR/tv2qh4ejv48pc8zNOH2ewnViceE116/?=
 =?us-ascii?Q?VxTIsoFlnJyzyLt9TMY60gjHRuzRt1bP4Bm1R6zT4Y3ZeIwvZJZCrWQj0XSn?=
 =?us-ascii?Q?gTYuF+OoMIfzTNYSgZuf44uO9v5gRFgGkCj4jPdTJuv98t8HoiYu7h0Rtb35?=
 =?us-ascii?Q?zjCH+i7UNAu0xEn7ptZzcTFXIlIVt1u5iAWuv3hDzMTlD/2WjRiMch5ILD12?=
 =?us-ascii?Q?MUl8J0PyQQV3GuxJw1RggImk4gXaEBJPnjUtvTLBGXd7Jv20yq1TiVotOOo/?=
 =?us-ascii?Q?lGDzPss/+GSm3WyDvmduJvWRIZfn4bEnV5FbQPwrvY+TAO5O+dvzm7biguMi?=
 =?us-ascii?Q?uyf6xPmDnznaakK8D+NEK02pprYJSQ+t8bhV/p6fSXpsT9i8VuVA2pE9NGKc?=
 =?us-ascii?Q?Dr+AEW5ZbpgUAet9IzY3/fPKzHLSyg751pzwFnKc3icJZyA7Lj+50rATPGOt?=
 =?us-ascii?Q?vXDH1iIUwg=3D=3D?=
X-Exchange-RoutingPolicyChecked: cpkCGX5cEXAwtUlbzeNicV8+WvUfP1AyMhkA3cwFMR/OxG3Fucu1iDDf78RgBwKtddNH7Z3G4Sn8hlijn4evBDWLUli2QJIbCGPOi1dfSohmGCUo8BngN2zHKYYOa7Txj9zmH4AhSZx5rEFvLME7ZWQUKyeKY0R/WJm+naHHfR7Y7hUchvF5TbvfSZBp0OgHydQdqF9XteuX2X/Kae3rETOmYD1cGf8Dj8fi+b2DAX9smonwC7Foa83+ah2L02raZHHdbV7G7mXhAGbXspAvunfwvj0CKn7RiUl9RcQz1ZhC8c7ANvR/K5vsgAEp9KnkhJHCP1HFJ77mHE32/IyCNg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6279d395-5d6e-4a5b-0eb4-08debbf5fb82
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2026 13:43:49.6130 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b43Eez1OinvCfD7f2kLTEo59DNqPfbwNeGuzXRYM64KEbnvcBaX0WsDC9XRe7EEAesTcG/obh4ivgkit0g8PuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF63A6024A9
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
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:replyto,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.994];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C5D5B5E53F4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 25, 2026 at 03:55:16PM +0300, Imre Deak wrote:
> The ASUS DC301 USB-C dock containing a Realtek MST branch device
> supports the DSC decompression functionality on each of the dock's
> downstream connectors, even though there is no discoverable peer-to-peer
> virtual device in the MST topology (which the DP Standard
> requires/suggests to control the DSC functionality on a per-DFP basis).
> Add the DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD quirk for this branch
> device as well to enable the DSC decompression functionality on all DFP
> connectors of the dock, similarly to how this is done for dock's
> containing older Synaptics branch devices.
> 
> Cc: Lyude Paul <lyude@redhat.com>
> Reported-and-tested-by: Shawn C Lee <shawn.c.lee@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Thanks for the reviews, patch is pushed drm-misc-next.

> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
> index a6067471dd563..9c31e14cc413b 100644
> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> @@ -2546,6 +2546,8 @@ static const struct dpcd_quirk dpcd_quirk_list[] = {
>  	{ OUI(0x00, 0x00, 0x00), DEVICE_ID('C', 'H', '7', '5', '1', '1'), false, BIT(DP_DPCD_QUIRK_NO_SINK_COUNT) },
>  	/* Synaptics DP1.4 MST hubs can support DSC without virtual DPCD */
>  	{ OUI(0x90, 0xCC, 0x24), DEVICE_ID_ANY, true, BIT(DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD) },
> +	/* Realtek DP1.4 MST hubs can support DSC without virtual DPCD */
> +	{ OUI(0x00, 0xe0, 0x4c), DEVICE_ID('D', 'p', '1', '.', '4', 0), true, BIT(DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD) },
>  	/* Synaptics DP1.4 MST hubs require DSC for some modes on which it applies HBLANK expansion. */
>  	{ OUI(0x90, 0xCC, 0x24), DEVICE_ID_ANY, true, BIT(DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC) },
>  	/* MediaTek panels (at least in U3224KBA) require DSC for modes with a short HBLANK on UHBR links. */
> -- 
> 2.49.1
> 
