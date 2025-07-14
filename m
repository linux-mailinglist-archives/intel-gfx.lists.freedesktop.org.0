Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE293B0475C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 20:22:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AD3510E348;
	Mon, 14 Jul 2025 18:22:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mtkO17k0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EA1710E343;
 Mon, 14 Jul 2025 18:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752517348; x=1784053348;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=fsuu4rURGgM1ppBaErrL7a8Ba7+oZnHovS6OSXOhNQQ=;
 b=mtkO17k0Oflv74PCvDkcXKjEDbXBmpItFwVn7Uk9/xj66jHKEl2+rAiX
 DpSFlCEHZIYH9UJE3u98hJr5tUElK+0y8TFXyLBRhed6CkN3iB4tWvRmq
 gSLXnWNU1vvxu45HQrVxfkHZDKP+57MsXTL+kIy10WbstyQgt2hkTYRXZ
 1cB5Hg5rSuyxWQiIiVQwMauZToHoHpomxhRtS1kRj75QOrO6k611dDlm0
 193iv/L3W1KYj3IXaQ9mmZOJD+KCMYA+nC7oHa7ruzpP4ncJykYZsWpoc
 Liy2AMJua+Lr9wbQx/Z6ljjUU8iX1iiMy/gdAbGP6yRcA6kGKCkXEbscJ g==;
X-CSE-ConnectionGUID: WHCgpAbyRCaFO2fH14MRxQ==
X-CSE-MsgGUID: ZBtkXSLiRkSNxSf1zH5ZFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="54655195"
X-IronPort-AV: E=Sophos;i="6.16,311,1744095600"; d="scan'208";a="54655195"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 11:22:28 -0700
X-CSE-ConnectionGUID: neTp8sADQn6FuQOUnQv7fg==
X-CSE-MsgGUID: ZTePztLVT+qurL5mcXPmKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,311,1744095600"; d="scan'208";a="157722130"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 11:22:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 14 Jul 2025 11:22:27 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 14 Jul 2025 11:22:27 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.77)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 14 Jul 2025 11:22:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GMgZz8NI+r+YQiHJcEm8kmvwMxhk4WtfywciouPa3ZSKGQpO7xxGwVMT5ilQfU9pw8FwPZ/yGMlBcrzuATp48LYSnx4qo1AaaWikXTSUyLaFSC6MXwdStfCBB1tli5iur3nd+943iYDg3cUW3XJJbsoVlwNbXioRafQgIattfMwANzRG0uJvUtkQlnl6aUuw0AyISmyU+qEq/0jAkUfUPyFLVMOXVULJ6SCY3lb5W07Q4lqbAxC8e61U9XsmGgWkWCtFdKFPw/fTpQ2Y4M9h7dsrJksa0l+Z3mwyoej2tWMyg94QbJQNa8oKjlVmLszN7QtwUErbfmyWU9HHDMwuXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ntf0GiW+/m5S9Lt/+lxXJRiXUB/vU8CJcaMFpP0NAwY=;
 b=MYlOkbKxVP2DzHedalZb0Hozdh2frG8ssaomv+jC7FgdabWJnjf2lVQLld/nlbqRbMkJDRn3kArHbeclxHnjctglGEzL403uffZs007uPpItvuNOVCU1NAopA3XAbuCel/q5alsKtfhpIYug2FNMu7AYAUmqW3gkeMvcYhJKG9GNUjMQUAQk5LolTmWtAMwsrZnHxLE8KyUZpq9GVDoT8SVYbt0hFtUBZm1xGfdxG+Pgod53grrK4+8RO2BFpirFgysCnH90AFl/fBr82VyuEYPxh/naEkOh494uFXWsgyAgaNCHZbNgLuyYb/adHRftEx5YxjK+U06fboS5rwAwCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by PH0PR11MB7543.namprd11.prod.outlook.com (2603:10b6:510:26c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.35; Mon, 14 Jul
 2025 18:21:43 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8922.023; Mon, 14 Jul 2025
 18:21:43 +0000
Date: Mon, 14 Jul 2025 14:21:38 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2
 is disabled
Message-ID: <aHVKsrzoazYf56Os@intel.com>
References: <20250709075758.2510714-1-jouni.hogander@intel.com>
 <20250709075758.2510714-3-jouni.hogander@intel.com>
 <aG6g5C-nUMPqYSzS@intel.com>
 <e4f4572425562c23117710d538ab2d8f377bc1f3.camel@intel.com>
 <aG_ffKlueD_8fx2E@intel.com> <aHAeBsRCmkI6QZCv@intel.com>
 <aHAwMfaR97nWqu5T@intel.com> <aHBIru0gmRnmgij4@intel.com>
 <6c969869584e4f78adbc3f56d2848d082407e1b6.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6c969869584e4f78adbc3f56d2848d082407e1b6.camel@intel.com>
X-ClientProxiedBy: SJ0PR03CA0205.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::30) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|PH0PR11MB7543:EE_
X-MS-Office365-Filtering-Correlation-Id: bf9d2957-c89f-4493-fab7-08ddc303487a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?9HruM8eaD31o1yhfIFVVIu0E8cOAQgiE6QxNY5WptvYoIojTqTzbkCpBbG?=
 =?iso-8859-1?Q?OK6aqlX5rN+BgbK5BlwF/B9p6ynPmRlaPVKEnGs4lsEIPFddpr25tCL/bB?=
 =?iso-8859-1?Q?/VU8lCR/6HwTzpxXkfG6y7ozL1oMzDgrO3vHpsz6uxx2IrddcqRhPYJUON?=
 =?iso-8859-1?Q?nR1kFBfP7s270kdFACLpreU5B2ipJ6Kl7DPNrjNXOpcRzfBVTRsu4DFiqi?=
 =?iso-8859-1?Q?h2bIzMqmk/9LXPeepWlg/lHQ1RLdhyiU9k++cGzXEUWW4YfamqGwXgofxR?=
 =?iso-8859-1?Q?1C9do+fZOcltJ6DVv/mCfzn/dWU6mLZhHoFh7m45xjb91JodsqFjlQ6ESL?=
 =?iso-8859-1?Q?/g1gWOGORrU2O0kmXFqJUsULQA2ERM3cC9p0Xr/jwEIau43/IQz66OubTM?=
 =?iso-8859-1?Q?ZSF5TTE0JnMFR3kThGhoRzC5cCTQ1TcWDy6JIdDZPnFsA47PDuxgNf3Kj8?=
 =?iso-8859-1?Q?0g4SVkpKZFycvMZSMQ/bG9IvtW7sxAfq7ARWB6BzR27Cs3FHcqggMfCuwg?=
 =?iso-8859-1?Q?HIz2yEBjp+ey33Kk1Wtagpk5F9Fwtw0ztEJyeniJ7/e3/xpgTe2NxV4QWj?=
 =?iso-8859-1?Q?2tu3GCtpXCMXf8Hkd4RBYsIvIpv/yYdEPszmUBY5+3vfl75KhpgIwHSqNE?=
 =?iso-8859-1?Q?k68h8bXf7uqJPPbebVFks2WmPvxok0P44ZaHHIIwWEUxZ6o57yNa/yhIGz?=
 =?iso-8859-1?Q?NuuKMsCObmrIO3iAWvivz9+v5LSRU9Ptscd7Xh+KDcYxcgGgpAxeIn3dtL?=
 =?iso-8859-1?Q?HkAA6KXWiarcz/Hpdiu8b7T74kJumUDRbpdCmR6J3H4ubL5drfX+MxV2Do?=
 =?iso-8859-1?Q?dQKyhVImgYSxXTXwMMIqeUPEp4pNxpmFAX9EcZmvCo9HwcO5Eg/PrtTtuM?=
 =?iso-8859-1?Q?c6xJeyc3sK12S6Rsc91scxuSkZf5ZjRHdN4jTvtiYCtEBZ8fKWy9X7Hjtm?=
 =?iso-8859-1?Q?jbtTLttIXnxTFx1bM0UPiYbwQmFPOzYpuZ58r/DOI/ZPzJ/qWx8DNlUtGb?=
 =?iso-8859-1?Q?bThPMoXLY+0Yn+FRN84yFGLOkMXWqAIEg056P+Hc5D9eQXViA2KYcRCb8Q?=
 =?iso-8859-1?Q?VuFuPfrN2zU9h6ySNRo4CEGVCRpKOTtMI59yCsRxzIE1LF7YARnGKvHGqa?=
 =?iso-8859-1?Q?JLKvrsm7R+HUAMEIFW3feJLvCnAGd6+J8IhoRxtQmjc8NaRw93A3Eyuwqm?=
 =?iso-8859-1?Q?/MpzByvzAdyf1N1iIwTspi9BXiJWyHKYBfrCdQotFFz9bOIWSKssl1MtLz?=
 =?iso-8859-1?Q?hCYQ06I+lJ2Lz54ZOzIQhKaLVkypVjpsFQvcbk1qok0LVgTqWCgXvrbKoU?=
 =?iso-8859-1?Q?No72ZxxGTyujCmRJ4aodA8iAtunXau4wLySFvCYSlKnqymtpyhiB/4LZNl?=
 =?iso-8859-1?Q?l6ak3niecOYFHl9SUEIYlrG+ewzrqjwUHO+D42KMr7NnTEoMvRcVJQCuRZ?=
 =?iso-8859-1?Q?Nia8Y/qQ8JHtDQqIhBIQb2AUo6twVdOa8ku2wXL0y5oQltv6bO+h2/gxNw?=
 =?iso-8859-1?Q?g=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?VjZqhjPwtzq+VbyohWAjve96tk/PoXQU5h+g5FTvjC/CUM2hYJwR2ugOcH?=
 =?iso-8859-1?Q?bRDe3k/k8oF7S4oMeiV54+KEtAq2qsPLY0ddMAmNJcIQPzqKtZ2QTwGYuM?=
 =?iso-8859-1?Q?axKTs8xCsxYFvqqSTk375R3pvx43RKqbDU61rxHp5xr5/MLRK1MAwaQes+?=
 =?iso-8859-1?Q?EIe161t4W5zsr1ZKa8h4q7RKaBhvF2bXrvRiiDIfmRS2V8n2v3H4rifhxD?=
 =?iso-8859-1?Q?J0bhxnRbj/NkTU0bD25lIJYGe/iQY7YHX0+KmDfiy6nk9Q8V3gd5f+QqID?=
 =?iso-8859-1?Q?ytuINNqxQcAUplATF2dcRDLjUyIOinD9ERQxjH+1jYHO45KS86IdCqJizw?=
 =?iso-8859-1?Q?lva2PCrSqJFJFD5l4rSy04Gy9YHE7EjyVAgQVoGHegMU1OlGegCYzxoCQU?=
 =?iso-8859-1?Q?ZNGJjLUlJtYo92YqcC9BjV9DBfO8rwYG4Bn0gc4/Q5vLB0EjNr170DPBur?=
 =?iso-8859-1?Q?wK4DUZis4q+e9YTu7uf5npQidCA2iSgCDAjbqKIQAQ139duXJGA4XrewlX?=
 =?iso-8859-1?Q?EItw/zBfTPpG0WcChCWXhydCaIkOekYWy6ItT4scVni/lJUDZb+WkcJM+J?=
 =?iso-8859-1?Q?zqYjd3hvb04+w9+FL/Bl1Ed+/tNyWwMi6GWCKRtmO0cU0rieV7pIGnBloU?=
 =?iso-8859-1?Q?dVjJ99huwokYlPTVfaIzNAQocWgjIHaskgjQo4HhrmjgiXNYpAODml/+lG?=
 =?iso-8859-1?Q?VjDR2e88Q5WVA8Hqd+WYpBEM+s3IvGmmvZpkyfsjfz8J52sa/MujeV7oVd?=
 =?iso-8859-1?Q?P8fE53f9cIN1L5VeyR1ow4BtHXLpGQ+XCSK3J8IR9eeGhrQ4clXWOE1E7c?=
 =?iso-8859-1?Q?ZDv1rArsyYo1OOSWQYdpvbBD5bNeUFfviUHmUpVp8ttJ9oz27TzWs2ZppS?=
 =?iso-8859-1?Q?kxd6WMljMytqF7gZ+UPm6n+Je1AJ7RPZbj3Gr+HDDfICvFp6z6xH+C2HVx?=
 =?iso-8859-1?Q?ZVBhAKgWVnNfIkS9Rh1stVGqDgBIq7qQFpEOjeHDXVG2ziBwYhGlUwQth4?=
 =?iso-8859-1?Q?p95KcDLoDpCa85sXmhhW0sl1O7JvFUhHUE1xuNrrwTiHTvAKVxvwO9w5I3?=
 =?iso-8859-1?Q?nLvqYzGG3JU7hsm2fjQSod406JYj3HrQWhMlzs3wnGvMzPIt1z8nGoBN9I?=
 =?iso-8859-1?Q?wxYXcQwKg2VOCFFstU6a18c2JbgFbuMj/oQ7/2EWPK3U6F9VkzeI3iIa4K?=
 =?iso-8859-1?Q?iLi3ie0/jfFKDSKXnH8/lGk4nM1uY7RILbS/BrgowzfxdZivw/xl9nA+cw?=
 =?iso-8859-1?Q?x5ykmcnuaFS2Dw0Z8eKA2mjKDCI0iKbn7bSSGGvN6J6sdE+9dRnycE/T3B?=
 =?iso-8859-1?Q?qnoznzUZPZlMArybpEq6KjiaMwWRZmQ8G0C9uKvWHypAl6dp0gc94y8P/5?=
 =?iso-8859-1?Q?kfckJsS9jcsiEdvP5wNiPsdqd8y7gPaBXcWpqFj5ZgRlpTPIWOd1sX8hey?=
 =?iso-8859-1?Q?ZgyCnRrxPpIC7aL3UkwQq5wyaiBEhwj0lngyn0EqefadvUnF7NENwFEm21?=
 =?iso-8859-1?Q?HDnrsgEvxvXE3aJMKGaC8F3Ww7J/ropMU99bdIEq85KR9EfA5/L53tegIc?=
 =?iso-8859-1?Q?e96eVh6VfMRYI9bb+kXAAd2JIi6TfUk47MTeLEQ4Gnmlzc43EJAm2hnGq5?=
 =?iso-8859-1?Q?QkZy2lMAR4kfZB198pbb6hYZA9K2wFsio2?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bf9d2957-c89f-4493-fab7-08ddc303487a
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2025 18:21:43.2512 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FvmPbYlzI253Q+NqEv4L9UsnbbzV+6mbEkSlWmRxYvoApK5iF2GEd7I6kstsbOQIRM5HyUgu8KlyohV2i2M6lw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7543
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

On Fri, Jul 11, 2025 at 10:33:58AM +0000, Hogander, Jouni wrote:
> On Fri, 2025-07-11 at 02:11 +0300, Ville Syrjälä wrote:
> > On Thu, Jul 10, 2025 at 05:27:13PM -0400, Rodrigo Vivi wrote:
> > > On Thu, Jul 10, 2025 at 11:09:42PM +0300, Ville Syrjälä wrote:
> > > > On Thu, Jul 10, 2025 at 11:42:52AM -0400, Rodrigo Vivi wrote:
> > > > > On Wed, Jul 09, 2025 at 06:11:17PM +0000, Hogander, Jouni
> > > > > wrote:
> > > > > > On Wed, 2025-07-09 at 20:03 +0300, Ville Syrjälä wrote:
> > > > > > > On Wed, Jul 09, 2025 at 10:57:58AM +0300, Jouni Högander
> > > > > > > wrote:
> > > > > > > > Currently disabling PSR2 via enable_psr module parameter
> > > > > > > > causes
> > > > > > > > Panel
> > > > > > > > Replay being disabled as well. This patch changes this by
> > > > > > > > still
> > > > > > > > allowing
> > > > > > > > Panel Replay even if PSR2 is disabled.
> > > > > > > > 
> > > > > > > > After this patch enable_psr module parameter values are:
> > > > > > > > 
> > > > > > > > -1 = PSR1 : yes, PSR2 = yes, Panel Replay : yes
> > > > > > > >  0 = PSR1 : no,  PSR2 = no,  Panel Replay : no
> > > > > > > >  1 = PSR1 : yes, PSR2 = no,  Panel Replay : yes
> > > > > > > >  2 = PSR1 : yes, PSR2 = yes, Panel Replay : no
> > > > > > > >  3 = PSR1 : yes, PSR2 = no,  Panel Replay : no
> > > > > > > > 
> > > > > > > > I.e. values different than -1 and 0 are handled as
> > > > > > > > bitmasks where
> > > > > > > > BIT0
> > > > > > > > disables PSR2 and BIT1 disables Panel Replay.
> > > > > > > > 
> > > > > > > > v2:
> > > > > > > >   - make it more clear that enable_psr is bitmask for
> > > > > > > > disabling
> > > > > > > > different
> > > > > > > >     PSR modes
> > > > > > > > 
> > > > > > > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > > > > > > ---
> > > > > > > >  .../drm/i915/display/intel_display_params.c   |  6 ++---
> > > > > > > >  drivers/gpu/drm/i915/display/intel_psr.c      | 22
> > > > > > > > ++++++++++++++-
> > > > > > > > ----
> > > > > > > >  2 files changed, 19 insertions(+), 9 deletions(-)
> > > > > > > > 
> > > > > > > > diff --git
> > > > > > > > a/drivers/gpu/drm/i915/display/intel_display_params.c
> > > > > > > > b/drivers/gpu/drm/i915/display/intel_display_params.c
> > > > > > > > index 75316247ee8a..195af19ece5f 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> > > > > > > > @@ -116,9 +116,9 @@
> > > > > > > > intel_display_param_named_unsafe(enable_fbc,
> > > > > > > > int, 0400,
> > > > > > > >  	"(default: -1 (use per-chip default))");
> > > > > > > >  
> > > > > > > >  intel_display_param_named_unsafe(enable_psr, int, 0400,
> > > > > > > > -	"Enable PSR "
> > > > > > > > -	"(0=disabled, 1=enable up to PSR1, 2=enable up
> > > > > > > > to PSR2) "
> > > > > > > > -	"Default: -1 (use per-chip default)");
> > > > > > > > +	"Enable PSR (0=disabled, 1=disable PSR2 (BIT0),
> > > > > > > > 2=disable
> > > > > > > > Panel Replay (BIT1))."
> > > > > > > > +	"Values different from 0 and -1 are handled as
> > > > > > > > bitmask to
> > > > > > > > disable different PSR modes."
> > > > > > > > +	"E.g. value 3 disables both PSR2 and Panel
> > > > > > > > Replay.
> > > > > > > > Default: -1 (use per-chip default)");
> > > > > > > 
> > > > > > > This thing is very unintuitive. Why don't we just get
> > > > > > > replace it
> > > > > > > with a new disable_psr modparam that is clearly just a
> > > > > > > bitmask of
> > > > > > > what to disable?
> > > > > > 
> > > > > > I was thinkinig we should keep it backward compatible. I know
> > > > > > this
> > > > > > parameter is in use.
> > > > > 
> > > > > I agree on keeping this backward compatible.
> > > > 
> > > > IMO it's an unusable mess so I wouldn't bother trying to preserve
> > > > it.
> > > > The only value that seems to make any sense currently is =0. 
> > > 
> > > fair enough. what about simply removing all the options entirely?
> > > enable_psr=0 keeps disabling it, otherwise enabled it. And we
> > > reduce
> > > all the knobs option. Afterall, this should be our end goal anyway.
> > > 
> > > > If I
> > > > need to use any other value I always give up immediately and just
> > > > hack the code instead.
> > > 
> > > Well, the param actually exists for us to request reporters to try
> > > different config. The devs can always modify the code.
> > > 
> > > Question now is, are all these variants useful for collecting debug
> > > information of some sort?
> > > 
> > > If so, as long as it is documented and we can ask different values,
> > > we should be good.
> > > 
> > > > 
> > > > If we keep calling it 'enable_psr' then it should clearly be a
> > > > bitmask of things to *enable*, not things to *disable*.
> > > > 
> > > > > 
> > > > > Also our experience with disable_power_well shows that negative
> > > > > name in the parameter can be much more unintuitive and
> > > > > confusing.
> > > > 
> > > > That one is rather different because it doesn't "disable power
> > > > wells"
> > > > but rather it "disables power well disabling". But yes, it is a
> > > > very
> > > > poor name as well.
> > > > 
> > > > Calling it "enable_power_wells" wouldn't really help though.
> > > > It should perhaps be something more like
> > > > 'dont_disable_power_wells'
> > > > or 'keep_power_wells_on'.
> > > 
> > > okay, fair enough, disable power well is another level of
> > > complication.
> > > 
> > > back to disable_psr idea:
> > > 
> > > disable_psr=0 == enable PSR? to me this is already uninituitive
> > > anyway.
> > > disable_psr=1 == disable PSR1?
> > > disable_psr=2 == disable PSR2? and keep only PSR=1?
> > > 
> > > I still don't see a clean obvious intuitive way of handling it.
> > > Perhaps what I had suggested another day:
> > > 
> > > PSR1 = BIT0
> > > PSR2 = BIT1 (PSR2 infers PSR1 enabled)
> > > PANEL_REPLAY = BIT2 (also infers PSR1(and 2?) enabled)
> > 
> > With a bitmask I don't think inferring anything is helpful.
> > If the corresponding bit isn't set then don't use that
> > mode, period.
> > 
> > Another option would to have a separate named parameter
> > for each mode. Would be easier to understand but dunno
> > if we really want to add that many modparams just for this.
> 
> I'm now thinking adding enable_panel_replay would make most sense:
> 
> -1 : Enable chip default (Default)
>  0 : Disable
>  1 : Enable PR full frame update
> 
> Keep enable_psr as it is and remove all bindings to Panel Replay from
> there. What do you think?

yeap, perhaps it is the easiest and more intuintive way...

> 
> BR,
> 
> Jouni Högander
> 
> > 
> > > (Peraps even bit3 for early transport?)
> > > 
> > > This is backwards compatible because
> > > 
> > > 0 = disabled,
> > > 1 = up to psr1,
> > > 2 = up to psr2, (no panel replay)
> > > 3 = up to psr2, (same as 2)
> > > 4 = panel replay on
> > > ...
> > > 
> > > > 
> > > > -- 
> > > > Ville Syrjälä
> > > > Intel
> > 
> 
