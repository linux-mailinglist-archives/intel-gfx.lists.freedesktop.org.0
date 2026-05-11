Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OcYFhGDAWq+bwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 09:19:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB696509037
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 09:19:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6CD710E169;
	Mon, 11 May 2026 07:19:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gxUs/I76";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E83410E169;
 Mon, 11 May 2026 07:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778483981; x=1810019981;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=PYm44o7eFhQFsZnHi/ATkly5hjZjCkg7FEn+7ImU+pM=;
 b=gxUs/I76tAL8r/ERxasoQQzAULHcOcwNgB67HnVHld+23LY2OPfwonwE
 VpIsx1LTEbATm3a5Iw9C4sP8pgi5SAAcnbjFrzDvYh38ebRWWfCw3Q7mA
 zzoF4lmZFpGxS42K5uLIldbqEEJruwTSPeQ/Bnry2HrxaDyGGdavZbO9Z
 1ssyvSEgGAEwvkNw1a5Li7QWIGuMffvYEJxQ44f5RSYR2HYXWlgudQedb
 VIRwA1A7p4pCoYtLq2xTKUoY4ozx5UvBHIt8A57Zqqhw0/02mnhUxaGYo
 HliI/p/K/uT31cK8/XMKyIt1BvgFpWinpT+gWVYbemihkFmTvXYs6jDCB w==;
X-CSE-ConnectionGUID: CKsVocjVQqyg1PHraiyV/Q==
X-CSE-MsgGUID: PnQvIrWmS5+pvF0khFjV/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="79545749"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="79545749"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 00:19:41 -0700
X-CSE-ConnectionGUID: X/5Nc9TCQbGMasekiwQHdQ==
X-CSE-MsgGUID: VoL2w9xwTzqzDFp1DrgwZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="267737784"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 00:19:41 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 00:19:40 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 00:19:40 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.55) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 00:19:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LCo/iRpGnoPRxzJhGXvtCUGDsS3+OM0cGfa8/TPpvCSZvh5x4jPRJIxgeKC+lQZlg+WDj9KITyezwnTWA1EA1vqL381FFfgi1i635NyKj9ZZNjJYm7kor2P5tV1pp/Cj9LgdLLziO2S64R6ixT4bqUf0G6kjaVp78e9A9e5B2kjDCXkyTjGaeQveW4xpVi4RZnFcVefu+7K57VHXvzD0yd4Ux4Oj67JtgbjNkXjrSXrPnQEKTKF1q5dvEVtO4Q0c7q26hENY4P39cQXvp38c5Rf712W6rdcBBrktwMayrBjClYYQMp+JbPzktMD8c6x2BfPy27D9+kSl+W3D6p6ntw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3MvuetgHLQyr1yb5rQR7Hf2JYqMf8vN19WPSzGXvXFI=;
 b=kkOJeRqTqDk7uCvlrMzX6YT689V5U+RZCBt+/0Mf3rJy4Au0ukdRxL5wSJrbV9LGl1rJ4qeQnnqaD/oI3WuZ12MQhG/5UjgsG/0WkFDEV3Qbr2yYdtBN94M7P1VI6HB6Fd23gxfduzn51gt+t+fY6AyvZ1sAnd0VPbXaI0xU8MFtxTsyA6PPVX2PUnIH7yNbSgHY7tztRjgrXcaYaqEwV3Lj28dCi7hyj1jOD+0dyt9msXwExJsOaH6sjAG1n+Aqt4AJk97CtrLWDAD7sCp4kkf4oNUSEbV8SIYFL6NiyYLGrLBrnVd+WliJ4q0OdeiN/g2j+YK2TuVATbHIT+tgHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3658.namprd11.prod.outlook.com (2603:10b6:5:142::24)
 by PH0PR11MB5829.namprd11.prod.outlook.com (2603:10b6:510:140::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Mon, 11 May
 2026 07:19:37 +0000
Received: from DM6PR11MB3658.namprd11.prod.outlook.com
 ([fe80::2c3:cb39:90c:2542]) by DM6PR11MB3658.namprd11.prod.outlook.com
 ([fe80::2c3:cb39:90c:2542%3]) with mapi id 15.20.9870.023; Mon, 11 May 2026
 07:19:37 +0000
Date: Mon, 11 May 2026 10:19:30 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jouni Hogander <jouni.hogander@intel.com>
CC: <I915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?=
 =?utf-8?Q?ure_for_series_starting_with_=5B1=2F2?= =?utf-8?Q?=5D?=
 drm/i915/ddi: Fix cleanup after DP connector init failure
Message-ID: <agGDAhL0NJwOSVK1@ideak-desk.lan>
References: <20260507065940.2046690-1-imre.deak@intel.com>
 <177815149034.47093.7459984050326362958@5ab824fced77>
 <af22nzAuYol9aTjz@ideak-desk.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <af22nzAuYol9aTjz@ideak-desk.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF0001A32D.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::694) To DM6PR11MB3658.namprd11.prod.outlook.com
 (2603:10b6:5:142::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3658:EE_|PH0PR11MB5829:EE_
X-MS-Office365-Filtering-Correlation-Id: cf4d1267-ea51-4f57-1955-08deaf2da8ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|18002099003|22082099003|13003099007;
X-Microsoft-Antispam-Message-Info: BS+JoYylbhVQ5CcPB7nAATozJZP2NIS2ZMLltfD1Sq0Xybd8kZy2QBLV3u+1gI4BwlW3soj6xfcIHlY+gmD7XS3UAr0o0ZXDzxXCKKlSwWFCfBpMMXuCPTyVGDWFLuMglPs8yY1YKqznfpPP+i5NJNrvVIWghLdUC7Po0IaIcAMkbl77RVDwUlS//5ztXiUx1HFwU5rZvajSjjMIQ/CvAOHHEFesbOI3zvjB8Q/njThPUm5HqcPSxbOQ3VXO3523+WII8Grgizt6L6kRxarLhw0WZrZc/jkvj34XCnJpS5cBud2NJK2yMLIFycFZZSWECmMZIS7h3HCh5S62aCZQ2s0SkEJxe63V+U03XOO4Qz29NS2mrk1xqPddVU2AtIjOaurRfpsD12VvekqQk4qs5pzkTtfxVxBaAWthM+r+siZ/Sq5dPU0kufMKVYqA+YBc9JX2fndheISctErng/wJY77vhJwgHKcujAvhZpSKLtjZtRSlZN/kE53OCsYmMaKR4i57AqT6A7gQy86IfU5I64bEpzXrbFtkz7ctXQofJmOJFDtFApjJ+XFGEj/2Il80TsCyBXZt30lI7x14K0io1aHxfd7Yn28UoWFTb8mG0okdceKWYK+r/xyq7hx7BBOeQnbH+oYE6xOtEvEVQ88UdQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3658.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(18002099003)(22082099003)(13003099007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EXlUUZQ34mruMu08E56RewQy7G8ZIfYouHU5JbKsq1n2vw3mcDVNwAps8gHS?=
 =?us-ascii?Q?s3eEINCbPZ5rGwy4emGdliRXdyxPcDDWOdBn00fihMiwTHBV3FHCJwTVV7qg?=
 =?us-ascii?Q?d2whxZE+rZLcguOdHTif/za4ah6Pkvkv3a5E52dbUpaz92eJGbYUIHhTPQ8Y?=
 =?us-ascii?Q?+YfqRS0bgV77Bdbi4Vmda2NXkdPQCZxzwd0rj6U1oMh7l21h3Fdvah7Q+cjV?=
 =?us-ascii?Q?jKcl4aCJQ5wu4kV0MJcwJlkTmS52QavaN6qwF5XdH+/qB83QpBexYBU2l2Yp?=
 =?us-ascii?Q?BuflbazCDyTKSJMvq2opkV3VfnA6nsT+2Pc9uSL6CyEDN5NptuZQJu9FDfVy?=
 =?us-ascii?Q?mEKo6SfQCC4Fe3/98ARJmEEsoX9Ll+WqCEjQegM2GHOU/Ico5jKtp0dN+Twp?=
 =?us-ascii?Q?G1vUjBJDzx1GyCdAGrC9G54NVZGNHZaBHfYVd8EgmfZ386+Uj4/UJ+LIq74H?=
 =?us-ascii?Q?7GnH5lJ3sG2QrNWsNcfJfWDFUhxzE/bMEt8sm12jRIydCksKuLcXHe5dud1J?=
 =?us-ascii?Q?fItW4OSUKN8/Xg6ZlLlqKbpvm3XYDsuXpo0F9DGdPxrLldwmLvu3xln1m2k7?=
 =?us-ascii?Q?TsQxGYCNCaM066SWtn02APoJ7SmjW7Ry0uak+nRpqz9z66zjJo2AewNMNfup?=
 =?us-ascii?Q?MY8RyYuQ3f660BwM/+RX2pFVOaMCmnaZJ6vIjTPUaIbbW1SvCagI0EGe51Fl?=
 =?us-ascii?Q?rGLGWDjB7DOcJzOcUTl0/EOVJEKV8GgoFniPsFuwS+To2Jcitm5H5CvN60ea?=
 =?us-ascii?Q?VfdGGbIciXdGCC5jMizkEHKRXCHMgZUlfd5feTQQ/VqQIYTYcZrjDMrV+eRG?=
 =?us-ascii?Q?CQZ7/Wi6UDco1gxc/9Cp8jT5HDF4Y0J/EG5D0Y3wzTD1lIS6LKpXGVKxIsMu?=
 =?us-ascii?Q?k0DzTongrE+DAWagF9s+yhWxbTumaOj5ZRW3WD32mIKIJNvUTkY+sbEJES34?=
 =?us-ascii?Q?BZOgiw1wBDOc5PQqQR3EBtPK/UzsyMUfLqd5nmwoJALIxg/dlI7KxKlD4UyD?=
 =?us-ascii?Q?5qIf6ng7fnIWWuqCZA0aO63cLtudS9VCqCVwJhQNc5Nm9TdmAqeGbM2VP5do?=
 =?us-ascii?Q?B7uU5Y/sgpWx07FsVU45ka7A48wLv56Smia64SVVUVHb/xQcfOrdZnLVyR67?=
 =?us-ascii?Q?fLB5x1rIe2pxNwh+Ys2niGeAU1E5e/wYQ5slrsU0dhUBe3OsEBajy031e8+F?=
 =?us-ascii?Q?hSv9T4GEMdC6jS2MEhuZRABLovsYiXgBsdewxGleVPsX6gfr+wsb4ApBqslr?=
 =?us-ascii?Q?akwtO+OHrTcHqZYfm635iC2ukuHCJm7xlbFV0M9DQyEqvudMQ94Wus6vMzQc?=
 =?us-ascii?Q?n9r6qx95nHWPomnyjURF4CkuvYh3jL88hWLf+CpNeOkIin9uphNx28iPDsfs?=
 =?us-ascii?Q?x+zYuCjPrk5G8jIj0zxwLctPp2qD84TH3fVx8My4QeJuZNHsJJKgwmf4se/o?=
 =?us-ascii?Q?Ixcu6Lb1xnx3bjcHodCDJtGHc6pMEpwnMyJknlsDsMBWLTtckZileMnT0/tk?=
 =?us-ascii?Q?Ymkd8cOTSjPei6swyMC/85mpszTPjUcQ+OtYPrW4KC+e1kVCajqwl4BPZMQY?=
 =?us-ascii?Q?+cli7Mkn6FlToiYedPaAdpKFiw+QggcEQ1I06vgEzpcEh57RcEb5MxcNut1n?=
 =?us-ascii?Q?4weCxWAuSS9RGJ/sL07Q1j/mS1PyPl8iDUlzCTaJgA4MFQuK++h0/PFchKvX?=
 =?us-ascii?Q?PmjR7CzYAZkMpQ8lvhMCtGb6XGKKdvBA0raJzQsD59b5DEGIKskYlYvmzj5k?=
 =?us-ascii?Q?0KSXyfgnRg=3D=3D?=
X-Exchange-RoutingPolicyChecked: UuYGBpVxikt7BoczXwgWPrdpwjYa1BDwLAvlzu9Q3idFzltT8i8R93e1M8dbrMQ0ZtaWuK3jl81jNen/TYTzvkAFEDdS+5WDLiNiLUpZ1GmUvaJelzmNU1zUjnwKEBfOI2YxL6IIDZoaIyM5I7JXRIsIRna8lh2BxSGoHySxg8oYB6CROtc92Dy0lVTfGr5cSw/v2tqCSk0ngsKfK0l4vuPqs9xBteX/LycdiNJF4q0jFPtL8ZMLWadc0rvA2xmzNfUVptThiqCtJz3V8k4WxXHODtuaXQazokfMuC85ueHn5q0AlS5h0ugmmNy4C+jfjLTlTD3D+vedn0g1wyaMHA==
X-MS-Exchange-CrossTenant-Network-Message-Id: cf4d1267-ea51-4f57-1955-08deaf2da8ac
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3658.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 07:19:37.4059 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UR5dGYtM9zzjsGW+9Z6WdnrqY3IatFhsFeg7u5H8Du3SerHXvqCS1e83WxKVB9LjP5NpaC7KzUcSL5/XNcEabg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5829
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
X-Rspamd-Queue-Id: BB696509037
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url,01.org:url,i915_selftest:email,lists.freedesktop.org:email,ideak-desk.lan:mid,gt_lrc:email];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 01:10:39PM +0300, Imre Deak wrote:
> Hi CI team,
> 
> could you forward this patchset for getting a full test coverage?
> 
> The BAT failure is unrelated to the changes, see below.

Thanks Jouni for the review, patchset is pushed to drm-intel-next.

I didn't wait for the report from the full test coverage: I didn't see
any relevant issues in the BAT result and find it unlikely that any of
the test cases in the full/IGT shards test list would have coverage for
the error paths changed in this patch (though it's possible that IGT
fault injection would provide that coverage).

Still waiting for CI team's response to my request to re-report the BAT
failure above.

> 
> On Thu, May 07, 2026 at 10:58:10AM +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: series starting with [1/2] drm/i915/ddi: Fix cleanup after DP connector init failure
> > URL   : https://patchwork.freedesktop.org/series/166105/
> > State : failure
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_18438 -> Patchwork_166105v1
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **FAILURE**
> > 
> >   Serious unknown changes coming with Patchwork_166105v1 absolutely need to be
> >   verified manually.
> >   
> >   If you think the reported changes have nothing to do with the changes
> >   introduced in Patchwork_166105v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
> >   to document this new failure mode, which will reduce false positives in CI.
> > 
> >   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/index.html
> > 
> > Participating hosts (42 -> 40)
> > ------------------------------
> > 
> >   Missing    (2): bat-dg2-13 fi-snb-2520m 
> > 
> > Possible new issues
> > -------------------
> > 
> >   Here are the unknown changes that may have been introduced in Patchwork_166105v1:
> > 
> > ### IGT changes ###
> > 
> > #### Possible regressions ####
> > 
> >   * igt@i915_selftest@live@gt_lrc:
> >     - bat-mtlp-9:         [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
> >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/bat-mtlp-9/igt@i915_selftest@live@gt_lrc.html
> >    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/bat-mtlp-9/igt@i915_selftest@live@gt_lrc.html
> 
> The changes in the patchset affect only error scenarios during DP/HDMI
> connector registration, however there wasn't any such error occuring in
> the above test run: both in the PASS and INCOMPLETE case
> eDP-1/DP-1..5/HDMI-A-1 are registered without any errors.
> 
> > Known issues
> > ------------
> > 
> >   Here are the changes found in Patchwork_166105v1 that come from known issues:
> > 
> > ### IGT changes ###
> > 
> > #### Issues hit ####
> > 
> >   * igt@i915_selftest@live:
> >     - bat-dg2-8:          [PASS][3] -> [DMESG-FAIL][4] ([i915#12061]) +1 other test dmesg-fail
> >    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18438/bat-dg2-8/igt@i915_selftest@live.html
> >    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/bat-dg2-8/igt@i915_selftest@live.html
> > 
> >   
> >   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
> > 
> > 
> > Build changes
> > -------------
> > 
> >   * Linux: CI_DRM_18438 -> Patchwork_166105v1
> > 
> >   CI-20190529: 20190529
> >   CI_DRM_18438: 30f8a0629f6924f24369cac9161b1a9741880259 @ git://anongit.freedesktop.org/gfx-ci/linux
> >   IGT_8899: 3e5747e536f148bf232049e49a00e2b683f91a83 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> >   Patchwork_166105v1: 30f8a0629f6924f24369cac9161b1a9741880259 @ git://anongit.freedesktop.org/gfx-ci/linux
> > 
> > == Logs ==
> > 
> > For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166105v1/index.html
