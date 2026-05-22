Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJnvNh0KEGpqSwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 09:47:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4624E5B02D2
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 09:47:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FFD410F4D6;
	Fri, 22 May 2026 07:47:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DIE2qlYH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0063E10F4D6;
 Fri, 22 May 2026 07:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779436058; x=1810972058;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=xTdIA61VQM8IkKgy3WaUr9IGcebCbsS2rQPwp8aoZZc=;
 b=DIE2qlYHxw8fElU3LMZ1vZS5NDxle1aSPBaGwDvQulo951sB9kQEZMLS
 1Nr2nqYGK4zTy5iLwGRVc0C5XmOmACGAr4L5MWkpKHybLCSAVgkj96URe
 TjBTE4ZF5zl7uBhHj5I/KCji7PXEkRFXUK8lEvRvnoIt9jHLL5/wterhb
 dfpY7tuK1wVKAKA0n9RbdRMQpkGGpprJRxHEmJP6Sbf2b1JDB16v+YkTa
 bN4iPbieNS0MOgUnuVayc3Nj+Jhy2CXCQ5wr2jqfattKPpqukOds/cfHj
 0uomXdk+bMvLl2eDpm+KasGw+L95u9wBFE7vncNgvCGSb95/N4L8N21+g A==;
X-CSE-ConnectionGUID: oapx4hnFQhq/WT5d2ngNKg==
X-CSE-MsgGUID: +UbX45h1RaeyOCppdNjOZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="80542446"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="80542446"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 00:47:35 -0700
X-CSE-ConnectionGUID: CExu0B3yRJG+WPv5SiZmAA==
X-CSE-MsgGUID: zyYCLs1cQMWm0Xvm4Zjfzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="245899885"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 00:47:35 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 00:47:34 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 22 May 2026 00:47:34 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.42) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 00:47:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q/J6ooHvnDla3ArrIxAUT3qFibP0JrqEvZuGLeQJZY5sHd+9NjKyUCeNdAwqa3ZdCE5hXhhTbdhRFtRQK8xeLpLLvn14M4aPt9IQTkpVNrEXljNdiA0sPWNwT7lNFb0hCN6Z0I6/jxbAjXf/OngF9tJbI1ANbsqIw7675hAFdSKHYCCmfaIa37ZTGgV70GXxdCS/zP9LxzWRpn+Twt3cHukB67+OnV1m7qSh+AjM1EFR+4daD4ukBMR8YBKA+sOCwaDCAWrX88QVP6laTgr/lvCitP3aMiJKDMK3jMI4Eq5Acq3HUXVMAUv1gL8BoGvHwQyhbploKP4DXM8G3Xhw5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tRHMsbSrpguNDsHcqB0RzhrMo8QABhak3B3g2Zd27aw=;
 b=LndweM18Sl0RKs4FnLphKWzG7w/Wt7pmsnsvK7BlYgjwow1sboLDrQ6dt73t4l6vhhbUf5P0dAT7kHq6ciohZQsY34tOCgyJwZZLVEBzAo+QDD3mezXIJhwZRfj1PEsyhh8En9foQXUCSKQ+JogYIAMdILiepNzXQVzemHT8Mtnm4DzSQR5jQGu1BEbhOJclxEHRRpJWClBVi/sGQudXRUUwgUlHYa89rhIDR7/ASi7wJyzWhlgu8UivT1ie7gXIOT7Bvt2UwRfcADAIJmsPv3T6gOR0fFhv8U9UuWPfG+WYeqVhCHkV/yynhuAWlrb98OhiH+JeRvcrqtPVyJ8/Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH7PR11MB7719.namprd11.prod.outlook.com (2603:10b6:510:2b4::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Fri, 22 May
 2026 07:47:25 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.20.9913.009; Fri, 22 May 2026
 07:47:24 +0000
Date: Fri, 22 May 2026 10:47:12 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: Jouni Hogander <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/5] drm/i915/dp: Add helpers to reset link params
Message-ID: <ahAJPJUYbSRvWPQT@ideak-desk.lan>
References: <20260518112427.2460725-1-imre.deak@intel.com>
 <20260518112427.2460725-2-imre.deak@intel.com>
 <ag962-z5WD8SVS9I@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ag962-z5WD8SVS9I@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F72C.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2ce) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH7PR11MB7719:EE_
X-MS-Office365-Filtering-Correlation-Id: 19f6ab4d-bfc2-4601-411d-08deb7d65cda
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003|4143699003|3023799007|11063799006;
X-Microsoft-Antispam-Message-Info: TS/cnoFycHxzEOxfr1M+PtzqE302hDQ5dTqlBcHlZ4lcSlGzGeWyPDK5tDnxGZ1VL6Esw8Q4AiKZsj7IK/REawJQIdIt8VjISPCVjhS2rU5ht10neI++UiB2AdJHp2DKEGYeoLa9dy+bZI/uxm7Yezigt5oJPzAjHduoc+DowMdlGsQwmeYB32Khoi3k2CNkbvCFfGnaixUr9L6mKDvpm5eBtGkMWpxCRrpkwxjCx+YF/hlEklWRZFub/R4BaObIV8X3NO5Q+aWZQuCaU+Tq/Hwt8OXG5sr44jjTCM15y5+efZOcdvKfEYl/GO3ETpMuvVr1Zi8zTh54YVIew5jYbvSYOu5LYDkRGmgMYduf3XhAI5DkqAHu1CC2ceDdLYjzdkwN6mEVR3Mb7zmlqy1AVkM052XedO1FCviCvgcFYgfIe42zTWKBYMLpamPUJul3zXnr61doZkbCy/5jxwH40fAex0XfLTALT0fv7KQ4m4zK8c3bobTWLbOzmqOxJRP9qurYmIurXJGKjBCsBpVBitequ8xdTQNpsu6/ueG8+IVk1+wp3RtNNI069gCaCcSSYRVWOi+cR3gm9n9TEGcAEoO7hGacjDeYWcQgODxoLcdmLQo4AfPc5YvamuEVEc3CEm3bIyYHRElF8Zw54DgMPfFs9tuUlnFdCha8UxjZfsGuUy+szH/DZBcAxQ7O4VBP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003)(4143699003)(3023799007)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?gCWfnORaHGg/LkEkkdSSCZduzlNYWlyQZlaBGKLfofpbkdjt23PHrVf8Dt?=
 =?iso-8859-1?Q?1UCdvqHCJxtnf8X36LqZ7lvN9k8xqAC+V7Twq7bRWtuyp1RkFfd2KJqZfW?=
 =?iso-8859-1?Q?JRY37vZ1YqVcimJ+FZLU0IDVbaRQEMhner5TnTRYZtY7kRKmpitLrm4LEu?=
 =?iso-8859-1?Q?wYAGjOonEgoHQvDWqBWRuFWqXlFUX+4Q1/wHIfk4JxmvQFIiYTM29SGwKv?=
 =?iso-8859-1?Q?NlzNCqIgYytWhM4LmGS6zMA+n6otdc00OlXwlBX7IyEgpIY1DO7lEJtUnm?=
 =?iso-8859-1?Q?+qVrjVtnyEmoYH/0u0QxbbFpQa1FwLGe+JZIhbCX4jiXtMCX27nfc6epA7?=
 =?iso-8859-1?Q?0VUSX/UwzdpQE255T+ZYDBCx26RgzHpyRfoPYrPUHoa1DJPVq3a7bfb0UA?=
 =?iso-8859-1?Q?HereZ0HoVRbrFIOXWQSkTfmRZBNDO9wxziZix9pq1oYuYGN+zyLOfBqAm/?=
 =?iso-8859-1?Q?jU+B6fgwTwTeOWx/z5cgXXD1GcMXMn7sqU+NeZ+W5OEd0hPXYzfBwzQr2/?=
 =?iso-8859-1?Q?sqOxayVTydett4mU/9Nhg14JySbidrllXRT5DjAQbZr4scZzgPPpLawYeV?=
 =?iso-8859-1?Q?ji7bq6Q7i5gMCQgS7iVc11fRn4hPL/KZaVmpT/y2RXhf6N9oyfc9dSdq7a?=
 =?iso-8859-1?Q?9xlOYvZgVLtKvi1iumHKZ3iISyB/lrQNLt01LqmXS7yL2ENZPKorvGOP9j?=
 =?iso-8859-1?Q?P+qSNLv3z5ERxPK6vSReuaegCGP5dcFSiWYqUywSIQOL0s+1oeuMcVZMRr?=
 =?iso-8859-1?Q?77Wh1VgHJhRF7Y1lGCii3De0gHZRGTPmFEa71pSPH5vEx0c2S9CBxf3ViC?=
 =?iso-8859-1?Q?uxx5y8lxqzH124losThtAiJkUsbJWHGIKBChRd7jc7EV4UI+hXRXjSRAv9?=
 =?iso-8859-1?Q?XcSrerxNI3o49IsC/19XjjxjeijY6e5pqtB8kW9mgHl0W+WMRw8wW3ptcQ?=
 =?iso-8859-1?Q?0AyDhRtitt5HkWEnqtgbkTcOVgq5KTZ6iB33203riyeB3fTcERH2Enb2sQ?=
 =?iso-8859-1?Q?28OTju6WZn1rFu3REamZOSBAKog5kA1YrYD9LjwLvYgcIUXuF8BkhIcmuH?=
 =?iso-8859-1?Q?sgyT6qXex8NKY2cDiSaxFouWNAz6Q85YenxWxcFrxBKypO46ekJ8Fi7XLG?=
 =?iso-8859-1?Q?1Jzusv89hm6YcBxcrFnhdAUC1K4Srkz/s4B/aWBNTLaJZCWBE7HIg/b+3j?=
 =?iso-8859-1?Q?uDER7reX9XVHbyou9cFz9mPmjkl3onXxNUiTITj344SfqKupMwWLr08GDm?=
 =?iso-8859-1?Q?v8AaRRSxBVrfAaCwNcrVACYYX7KItKzj98bGTmDi8/7f4Ihd80NDjbFPIS?=
 =?iso-8859-1?Q?KvlTdpeYD5yTn8HmHoORQcI1JtUtscVRtiuQC+iF+eKoXXYxtVquvKGCTx?=
 =?iso-8859-1?Q?fwW5yUnzJpDUAfwJMlauvJCcKFwIyLyzXoqQEOv7/5SkrWzoxnN5Q5GGZV?=
 =?iso-8859-1?Q?8vhZxkYewjx2fDV0R2vRYVkVNZsMj66Sam2uIejjVq9ka6RNKkIUaO6ytB?=
 =?iso-8859-1?Q?K6XhbqQa0xBamN4bzvyuJFUrOddma9/oOJWFdNjQnNuGI9ESOcmnpCMTtX?=
 =?iso-8859-1?Q?b0KHwXv1Lz2gbvf+/Hi1k/a6+3bxc7MM3W/F6eHkoBqPAg2PnB0fFhen4+?=
 =?iso-8859-1?Q?pqxQrtHKy7i2ML5nj0uD6tPEtlkt7lVRIHML6A6aA66z2G2mIyuqjzeWfv?=
 =?iso-8859-1?Q?8619kYVYpCSiX4nH4VTFwo13AefCLzwSpaIhzV/Yz1zS8ng+GS0CXWTzS2?=
 =?iso-8859-1?Q?UsbFeD4NG7k02MgFFtBGxxS61oJvB/V13ZwdLfZV8S1gRlAvrv/ffENj7k?=
 =?iso-8859-1?Q?R/RW70nDdg=3D=3D?=
X-Exchange-RoutingPolicyChecked: sUACCAal+MuIYDYfihtc2aByBesScze+IUSJ8jT0eNMbg/GdBDgkYo4XOTJnvInYdclaeemwqfLaa2jv0GUzH6GMUtn3C+8oFtKd1QydCmpzM1aoJYdhVJHnw0SgnduSn4ScNBsHcR8h3p19k447E9kfHzJsZc2aRuBo3k0XVHlNJSf8o9UMYTB9Av1HQ06BAn7g4KkP8Isga1Fp66luF4R2MZ1s7jzbNJg/+qAYUpK3WWeh9GsC2hN77OXm3plKDypq020dTPZWuEKvrlO5sQmzQAA9SuSWg4mMzrpAUv2E5YPXHKX+lyngI1qSVYphiiYvCEe5KM7zmvxbx6ISjA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 19f6ab4d-bfc2-4601-411d-08deb7d65cda
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2026 07:47:24.5738 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bQDvwCx2rOspwMZRAqLY23efOCp/ybSAq6mYF3JqFetMXf2xbqQ68gFs4RiDOgtixkEPcJ8SEwh45M2UO0usRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7719
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
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:replyto,intel.com:email];
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
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4624E5B02D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 22, 2026 at 12:36:27AM +0300, Ville Syrjälä wrote:
> On Mon, May 18, 2026 at 02:24:22PM +0300, Imre Deak wrote:
> > Add helpers to defer and handle link params resets instead of
> > open-coding the same. Rename intel_dp_reset_link_params() to
> > intel_dp_reset_link_params_force() to align its name with the new
> > deferred reset helpers.
> > 
> > When deferring a reset, return whether a new reset was queued, used by a
> > follow-up change.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 41 +++++++++++++++----
> >  drivers/gpu/drm/i915/display/intel_dp.h       |  3 +-
> >  .../drm/i915/display/intel_dp_link_training.c |  4 +-
> >  5 files changed, 38 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> > index 5ff1cdf4581a5..c20a97e21419b 100644
> > --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> > +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> > @@ -1265,7 +1265,7 @@ static void intel_dp_encoder_reset(struct drm_encoder *encoder)
> >  
> >  	intel_dp->DP = intel_de_read(display, intel_dp->output_reg);
> >  
> > -	intel_dp->reset_link_params = true;
> > +	intel_dp_reset_link_params_defer(intel_dp);
> >  	intel_dp_invalidate_source_oui(intel_dp);
> >  
> >  	if (display->platform.valleyview || display->platform.cherryview)
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 86520848892e0..77819aaeccb76 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4664,7 +4664,7 @@ static void intel_ddi_encoder_reset(struct drm_encoder *encoder)
> >  	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(encoder));
> >  	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
> >  
> > -	intel_dp->reset_link_params = true;
> > +	intel_dp_reset_link_params_defer(intel_dp);
> >  	intel_dp_invalidate_source_oui(intel_dp);
> >  
> >  	intel_pps_encoder_reset(intel_dp);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 1920d2f026665..13163dd085e91 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -3710,7 +3710,11 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
> >  	intel_dp->lane_count = lane_count;
> >  }
> >  
> > -void intel_dp_reset_link_params(struct intel_dp *intel_dp)
> > +/*
> > + * Reset link params now, preserving any deferred connector
> > + * detect-time reset request.
> > + */
> > +void intel_dp_reset_link_params_force(struct intel_dp *intel_dp)
> >  {
> >  	intel_dp->link.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
> >  	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
> > @@ -3720,6 +3724,28 @@ void intel_dp_reset_link_params(struct intel_dp *intel_dp)
> >  	intel_dp->link.seq_train_failures = 0;
> >  }
> >  
> > +/*
> > + * Reset link params during the next connector detect.
> > + * Return %true if a new reset was queued.
> > + */
> > +bool intel_dp_reset_link_params_defer(struct intel_dp *intel_dp)
> 
> I find the intel_dp_reset_link_params_defer() vs.
> intel_dp_reset_link_params_force() naming rather confusing.
> 
> Can't immediately think of a really good name for
> intel_dp_reset_link_params_defer() so maybe it's better to not
> have a function for it at all (ie. just drop this patch)?

The idea was to have an interface to reset the link params directly or
in a deferred way, instead of a direct access of the flag.

The names are not great yes. I could use what Jouni suggested instead,
or if the above argument is not good enough I can also drop this patch.

> Then you at least see that it's just setting the flag. AFAICS you only
> have a single place (in the last patch) that uses this return value
> for anything, so could just do the check+set dance there on the spot.

> 
> > +{
> > +	bool reset_was_pending = intel_dp->reset_link_params;
> > +
> > +	intel_dp->reset_link_params = true;
> > +
> > +	return !reset_was_pending;
> > +}
> > +
> > +static void intel_dp_handle_deferred_link_params_reset(struct intel_dp *intel_dp)
> > +{
> > +	if (!intel_dp->reset_link_params)
> > +		return;
> > +
> > +	intel_dp->reset_link_params = false;
> > +	intel_dp_reset_link_params_force(intel_dp);
> > +}
> > +
> >  /* Enable backlight PWM and backlight PP control. */
> >  void intel_edp_backlight_on(const struct intel_crtc_state *crtc_state,
> >  			    const struct drm_connector_state *conn_state)
> > @@ -4066,7 +4092,7 @@ void intel_dp_sync_state(struct intel_encoder *encoder,
> >  	intel_dp_tunnel_resume(intel_dp, crtc_state, dpcd_updated);
> >  
> >  	if (crtc_state) {
> > -		intel_dp_reset_link_params(intel_dp);
> > +		intel_dp_reset_link_params_force(intel_dp);
> >  		intel_dp_set_link_params(intel_dp, crtc_state->port_clock, crtc_state->lane_count);
> >  		intel_dp->link.active = true;
> >  	}
> > @@ -6487,10 +6513,7 @@ intel_dp_detect(struct drm_connector *_connector,
> >  
> >  	intel_dp_detect_sdp_caps(intel_dp);
> >  
> > -	if (intel_dp->reset_link_params) {
> > -		intel_dp_reset_link_params(intel_dp);
> > -		intel_dp->reset_link_params = false;
> > -	}
> > +	intel_dp_handle_deferred_link_params_reset(intel_dp);
> >  
> >  	intel_dp_mst_configure(intel_dp);
> >  
> > @@ -6944,7 +6967,7 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
> >  
> >  		intel_dp_read_dprx_caps(intel_dp, dpcd);
> >  
> > -		intel_dp->reset_link_params = true;
> > +		intel_dp_reset_link_params_defer(intel_dp);
> >  		intel_dp_invalidate_source_oui(intel_dp);
> >  
> >  		return IRQ_NONE;
> > @@ -7252,7 +7275,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
> >  		     encoder->base.name))
> >  		return false;
> >  
> > -	intel_dp->reset_link_params = true;
> > +	intel_dp_reset_link_params_defer(intel_dp);
> >  
> >  	/* Preserve the current hw state. */
> >  	intel_dp->DP = intel_de_read(display, intel_dp->output_reg);
> > @@ -7317,7 +7340,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
> >  
> >  	intel_dp_set_source_rates(intel_dp);
> >  	intel_dp_set_common_rates(intel_dp);
> > -	intel_dp_reset_link_params(intel_dp);
> > +	intel_dp_reset_link_params_force(intel_dp);
> >  
> >  	/* init MST on ports that can support it */
> >  	intel_dp_mst_encoder_init(dig_port, connector->base.base.id);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> > index f41480d247142..7c24d3dbb6983 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -114,7 +114,8 @@ int intel_dp_rate_index(const int *rates, int len, int rate);
> >  int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
> >  void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
> >  void intel_dp_update_sink_caps(struct intel_dp *intel_dp);
> > -void intel_dp_reset_link_params(struct intel_dp *intel_dp);
> > +void intel_dp_reset_link_params_force(struct intel_dp *intel_dp);
> > +bool intel_dp_reset_link_params_defer(struct intel_dp *intel_dp);
> >  
> >  void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
> >  			   u8 *link_bw, u8 *rate_select);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index a26094223f780..b7075060e7bd3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -1935,7 +1935,7 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
> >  	if (err)
> >  		return err;
> >  
> > -	intel_dp_reset_link_params(intel_dp);
> > +	intel_dp_reset_link_params_force(intel_dp);
> >  	intel_dp->link.force_rate = rate;
> >  
> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> > @@ -2037,7 +2037,7 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
> >  	if (err)
> >  		return err;
> >  
> > -	intel_dp_reset_link_params(intel_dp);
> > +	intel_dp_reset_link_params_force(intel_dp);
> >  	intel_dp->link.force_lane_count = lane_count;
> >  
> >  	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> > -- 
> > 2.49.1
> 
> -- 
> Ville Syrjälä
> Intel
