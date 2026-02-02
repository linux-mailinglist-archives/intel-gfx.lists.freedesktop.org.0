Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JxSBCg1gWlyEwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 00:37:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E253D2AF0
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 00:37:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D61DF10E2F3;
	Mon,  2 Feb 2026 23:37:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="igtQJx/q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44E9910E129;
 Mon,  2 Feb 2026 23:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770075428; x=1801611428;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Jao/d3k075ynnBsxwLPPrTMh4PN7HJ2Rrj2SXfKokoU=;
 b=igtQJx/qyzEKJdHCXF8prpb9Or836GXdT9jHtzelc/3KxpdAvLemMXyQ
 4b/2X7D2YeVHwmsHWAdQXiz13qzlHKql4Sgp9CWwN4avkoTOadxIBeyfn
 gRSsMBICn/AQKXxqfltnw9yDlCi5mockqTNhZY1Z+TX82oSWM2AXdVIvn
 tNo/S+mGE1aUxRmBbrXqg5FNiozhFT44lyk19zR4aKsGWGCAbNa4QnKQ+
 ++ltBGfj1urdeov400GCFXqHtzjAFGg7G0v0oJIuAhdnWZePUjKJDif81
 3q7RBMofjpO8gvCtpMxk64kO8Hw2FwZlTUAEnFCOiLXxVx5jLQg972WDh g==;
X-CSE-ConnectionGUID: sEM78BXxR0ObVDlMRP0EZw==
X-CSE-MsgGUID: g+LRBuQVTFaSnHVNI+7wcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="82666398"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="82666398"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 15:37:08 -0800
X-CSE-ConnectionGUID: 7cZT6UUsThmm/d/Ltdr9Wg==
X-CSE-MsgGUID: jce65sqkQESvUHLD4JkAww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="209668868"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 15:37:08 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 15:37:06 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 15:37:06 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.21) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 15:37:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gz7yypoBHd0y+N1qipJJA0iSinV3EWpsXiNhi+zTsbaHOuSsQDGH0Izf6HTpE0C2Ime4ekD3rf6pgQyBmrRsVbQfHmgp8dMPpG4v1eKWf0Gcdbri0YhatF5HwQVRiKC025DgK5uztyt5HQ2tZDpvsH9OuGis0lqF5Vi2HxDTSmUkA76iy2cfcvXBvwqHAx8eZsGreRwVP2PiRzBf/qtZ5Eab5/3PtYkrIztRa1a2BaZiCanh9VYQLSlu8a2QgjNRGnEe44PrTDCp7D5uz0n7c0aLhCD4FC6VQItfeKzjusj4wmKc0rKfbugT8zn9dcc1jLJB2VP+4BHWpLT52Q6+8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xlLX1GDLXiTTCogBX7fWSoyB6IHHLHveEeL2IGUmPAA=;
 b=rTB5UhK1IMGaDxHeApYmowef8SolxINLr9ZHBELFEMKlbg+7qA4cHF1pOhJI7SqLD4JoG3EiWOBHcoI1Emqv7LxRApxCBNS4O+NCJopA4t1AbE2HTYWTp757LS82jK3aZaYwbM6eG5TMDYovnXCj1Qx5csuB8KmtjcrR3XBXPt1yB8uYRxQLBpl4v2xIMjk4cIKGpvwrqWd9gB8R5yBgdYJh3LQWYH/VThRozLfm42txjzYq878432B7ifJg42/iBSuRa/Cg92jRro0vo06Bw7S2BADBus/zzQA9tvX+hQfCDxVqmQ3AXgPS9xEiDOvS4sGleon/DgM0yp0S4OlMTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS7PR11MB5992.namprd11.prod.outlook.com (2603:10b6:8:73::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 23:36:59 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 23:36:58 +0000
Date: Mon, 2 Feb 2026 15:36:56 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>
Subject: Re: [PATCH 01/16] drm/xe/xe3p_lpg: Add support for graphics IP 35.10
Message-ID: <20260202233656.GO458797@mdroper-desk1.amr.corp.intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-1-653e4ff105dc@intel.com>
 <20260202221104.GI458797@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260202221104.GI458797@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: SJ0PR05CA0060.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::35) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS7PR11MB5992:EE_
X-MS-Office365-Filtering-Correlation-Id: 13ee1b18-aca1-4188-ddbc-08de62b3f54f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?+xaQ4/UD2N6BCvLCypPUO67zrOxmZVQHTaAswIRFCtTQdowxND8k6QEN/fCl?=
 =?us-ascii?Q?6yFEHXq32Ji6CwXOBuAqz7vKL2VgErf/G4UpA8IhyZxDQk58hrh+vDqF3MsO?=
 =?us-ascii?Q?KR6HJ4UQLTqbPs5aD+jOATBMjTS9VRfSxsvGLye0gN1Y1/jF1xUVQYdUpXjn?=
 =?us-ascii?Q?+vAOrfR8qkUyJ7gTUhKPdAcmDM9E4HsxQe6ctfqHrkAo9RX3P47givBADzSh?=
 =?us-ascii?Q?wc/457pgNmVp8UtO8gUd27+gly3eIAF2K6RK7n7fRtFDS7ioQDHOvai9ooTL?=
 =?us-ascii?Q?vkw9a2Kh/lw2A13bHy3YNEPL+FYkERVnRJRWwZtxz0ZTvjBSXGyoRp1erpHK?=
 =?us-ascii?Q?GGIUtdkpuZieX0IuthjfTJdHz90J5z2F5xs2V1gaknJvXHf2bFcKAoTyLDGl?=
 =?us-ascii?Q?Y0H37tRAMk4KGFlNCZHcazTSrvJJwid8WLz2VUceoLlOlgX5jr/jC26cdXEb?=
 =?us-ascii?Q?trVPzYy98/TF9jBSEIdHiG85/PSfp+OgN7ZMB5dxTerZxvwT23TIr2RJa5wT?=
 =?us-ascii?Q?xdSpHE+i8d3hNsW/vIkKWeN490A9BWbFZOWQ099hVGU10LKampy/Aggecj+/?=
 =?us-ascii?Q?d9IyA/h5VknnpdhMrwc0F/ErfC2YUv+QuKcehPci1kBcXsliqoWDBe2pOSh7?=
 =?us-ascii?Q?5UgKZ0AqMFA0Gkh8AhiPNgXiT2kgBHNUU4bClQWLiJYc/hkvN8139SswHfR9?=
 =?us-ascii?Q?xgPUhLVxOfiiEfhMPHYbyWVAWxy+HPZe9/ZQZyrvCQ0Uh33PKC+aQpHHVghD?=
 =?us-ascii?Q?Vs0HOIv3gAVdjPkPD+JkH17ns14rmWYHjqW1Q+TL13+uufBF3gPPyw2idTHL?=
 =?us-ascii?Q?gXRtAAszD2R0dh+mX/OAVBsGUnxPXNWDoxnvJ35EOuAgP+R0HoCXDLcRSbPw?=
 =?us-ascii?Q?bAZ0+GZdZMH0eYSQ+2Cg0ZAU26llEpJnhKgHVXJeU4EOxnGsz7rFpHRABDtO?=
 =?us-ascii?Q?GFpjzV+zORVW48zpImJ5MbRBumAS+w9m/YrzKiWtwPZz6gf+MFnQXcEgct2S?=
 =?us-ascii?Q?baxzyReHE3M34AFDNW5dXab9sTkgmTNA+rbPX6duW0jkU6Jvo7QKLfD6nAL7?=
 =?us-ascii?Q?QCAsRw2MdQX8Yh/B03Oq0LPpAM7/ghcOet9kX9TQ96aS5aIo9T2K2MUsQmej?=
 =?us-ascii?Q?e39EAIoqdWBkLQHLHP5Ske7TQvWgNtdhZDlK834NXyTeFjX9p+7+t5EJyYe4?=
 =?us-ascii?Q?3OuFKPsZayhIdWfrKi4jVKW1i8O0G4Wb6fb0VpJSa0SIDSOLJI04xHDehvNg?=
 =?us-ascii?Q?6Kyueg84BRLzGvsFWBy9Lyasw4pxNVjbKIjVgGtqkzbyKtX2nJ1te0AfT+fD?=
 =?us-ascii?Q?hCeRDUOCR8XIHDtayZ4q5lyqOfNRqIe/JplKjfdSEMkZvQ0izFjj/Hglu4lg?=
 =?us-ascii?Q?RP5JytHCGRKifxWltlUPcx81m7nYq3n2j26oRrzJpOBQ3I3J1aC2GE1ZyrF4?=
 =?us-ascii?Q?5PVw2hb6qmd1uaG0+UtYDvtpJWR/yE9p6aQXvL1GvQ39b4RP2ILfRn9KDFDo?=
 =?us-ascii?Q?6kOImxe3BrwYsozOGfwnePgEVqZC9BFaZ9pAjuPVUIHS+ou6//cKZMCHRRL/?=
 =?us-ascii?Q?ESNbVgzySFzUl+fSEDY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OUCmTUE9BHzyusRJU6MQPTmucQxYc3HqVL+N66fRYRaPaMWv5tIR/bk7o9lR?=
 =?us-ascii?Q?jEDUfTfEx5Y2Y1EkOwAwfRItz5RckZOM8p7nSvcOuCfrT1s74awqb4NhDjdj?=
 =?us-ascii?Q?v8DNiy5srAqMQlnZQXcPitTHGJ0Q4E4uCDXeSKYi1/qgZtJ4a+nZB55iPO35?=
 =?us-ascii?Q?qIG+LoJ+P0vSp51XgYNP6siWTxzw9XLbn3/+e/p8NrRT4YezVEpssM6zp0sa?=
 =?us-ascii?Q?LODtDIa8t0o7iJMc3w+vQd0+lB0SzOmibaznkrHwGRLMZqIP40Ec7uGgWOPb?=
 =?us-ascii?Q?e/RrvjUAz9a8sCiHfL0bnWdIb8Z1IlFJmezzGMnA/O0vY8Onnaj3n8/0Jq8x?=
 =?us-ascii?Q?ffi5ecp/VmCQ4qqVHkmGJ3//0Wl8ANndaUYIXN7Prp3KXLOQft5iZjRcF4OJ?=
 =?us-ascii?Q?qznyL2Jx2I3tazYtBc3u1onhkRpDbxiX7RASqFvodQexb/J+qvT187QPgNIo?=
 =?us-ascii?Q?7LAzQaOK2F7nk4fB7VhYe4b3W7W5xHakOprBUd1dEESLn/7nRjuuJhPpAz7P?=
 =?us-ascii?Q?lLxp7hTfmoB0JEzSaFigAuFcwos+lp0/OhSHfWYvDOHgkQta0XpFnzjlcaav?=
 =?us-ascii?Q?lO6DQ9ehjfTKsbksrFl0W39uadvryt6NMeR7MV6yxvxMIwOYgSd06WFHlByT?=
 =?us-ascii?Q?UiHLSEzTwN/qIVNZdx99wSQ8nKtvBvknQZr+S5CtFvAhBD1s6a/j77s/KP8Y?=
 =?us-ascii?Q?r3Sj/VcGycF80ukkqJNuXT80ifqSp3ch2F71cddBf/dJJgFTLatQbld4DKZW?=
 =?us-ascii?Q?TvwmGfcNUGe1IdksPD43Fq45i0OrEkxKRV/wD2l7xylSVR8WR34FQYFGHCwj?=
 =?us-ascii?Q?oQb5eR5A3Y8epK1tLYXqKd/0+Iz/T5Y9lCUVrDwnGjBhwnrbLIW7/tEim9w7?=
 =?us-ascii?Q?O5D3ViuleBLgt43TfaO8inODEVEmaYjTmHX2rFi3hkq6NaUcKhCR6/dOgg6O?=
 =?us-ascii?Q?G0IvW2lCv+WJ/MFLFU7xvEikBecOTEfmjCDbhBUXJ47FeKMsnmL4/lVKMqMy?=
 =?us-ascii?Q?5EAHHmqJa0ectfFRB0Xi25B+EmxjNQq8XAVEkf4qz1D3/A4X7pX3dyisDzky?=
 =?us-ascii?Q?rhjIPpAK6EOz/ifQziouMboK6xFheov5JsjxZHhKaXShPCuLWfmVwlNBX6lI?=
 =?us-ascii?Q?i9/JSrY2LRkVYX0J0tNkfi1HFr7Ar+QzPp3xyRUBDQoKsbYrYfxr4G8a1xTU?=
 =?us-ascii?Q?Vl4dmWd2TV+ohHHpXaXSpwNBxn95Vk6/b+fAqQaGdUYX0VlJYe5EJIHVQ8X2?=
 =?us-ascii?Q?ERhMtrVccXw3j7gbtX9b+xF1i7sGzBEdvrWG3Zou7gXvwJMf+qFIKxGzQrWL?=
 =?us-ascii?Q?jF8GIqi22ZCvsvqVzlzWidnoNkGmZZapMWH7QtLwvdjQVoKydPy86e/hx4ql?=
 =?us-ascii?Q?I9YhDn3pwgpTJegTSdzRDUiH12uln0o0+2RVvt1LCykT2cVAKSlmy4B8Mg9L?=
 =?us-ascii?Q?zjbnEXSnHQqEY/D55VSwTVDYaacayd+YJPTqygLaU4u2eY7Oppmbe9GvW+GU?=
 =?us-ascii?Q?8xd3i0XB4oClHFrmC7YsYT0AGmZOdCE/EGTc2HkktuZrwrZua+fFbLHWTYxJ?=
 =?us-ascii?Q?ifI4GqUO5OmH7LZsyknm83f5nqa88TRMfPtAT3PPArlCe7h8oi6OptPugCTR?=
 =?us-ascii?Q?4PTcaF9UaNYWFgQzM4ngqGJqqRr0iqYSugax4w63vhm71odz++UFOx7hbUU8?=
 =?us-ascii?Q?F6vZkAEXnp58DjEDRTOaRGkHpF1o5ML18hBnYz03kNU2Jfl5GpdP9/O9gZ5s?=
 =?us-ascii?Q?9LeHjAciY7Ro6iwjlBCA5M+SchIXa3U=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 13ee1b18-aca1-4188-ddbc-08de62b3f54f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 23:36:58.8829 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zP0uxSbdSQH+Qb1zL4cePy9CX7dX5udALcJWavR6g+SVVIcXnxaAKYDIosqPs6PubtXGElnZWPvvaZe0TXcSkMY2ZG726LEIZS2IligxrxA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5992
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,mdroper-desk1.amr.corp.intel.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6E253D2AF0
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 02:11:04PM -0800, Matt Roper wrote:
> On Mon, Feb 02, 2026 at 06:43:07PM -0300, Gustavo Sousa wrote:
> > From: Shekhar Chauhan <shekhar.chauhan@intel.com>
> > 
> > Add graphics IP versions 35.10. Since there will be features enabled
> > that are not present in graphics_xe2, already create a new
> > graphics_xe3p, although currently it only enables the same features as
> > graphics_xe2.
> > 
> > Here is a list of fields, associated Bspec references and eventual
> > comments:
> > 
> >  .va_bits (Bspec 74198)
> >  .vm_max_level (Bspec 59507)
> >     The spec says "The PPGTT is always a 5-level structure even when the
> >     virtual address space is less than 57 bits."
> >  .vram_flags
> >    - ~XE_VRAM_FLAGS_NEED64K
> >      That limitation that does not exist for Xe3p_LPG.
> 
> These three aren't part of the graphics descriptor anymore, so they're
> not relevant to this patch.
> 
> >  .hw_engine_mask (Bspec 60149)
> >  .tile_gsm_size (Bspec 52961)
> >     This is queried directly from the hardware.
> 
> I don't think this flag has ever existed, outside of some temporary
> development patches that never moved forward.
> 
> >  .has_asid (Bspec 71132)
> >  .has_atomic_enable_pte_bit (Bspec 59510, 74675)
> >  .has_flat_ccs (Bspec 65255)
> 
> This one also isn't part of the graphics descriptor anymore.
> 
> >  .has_indirect_ring_state (Bspec 67296)
> >  .has_range_tlb_inval (Bspec 71126)
> >  .has_usm (Bspec 59651)
> > 
> 
> We should probably add a reference for has_64bit_timestamp (bspec 60318)
> since it's set in XE2_GFX_FEATURES.
> 
> Is there any reason not to go ahead and squash in
> multi_queue_engine_class_mask from patch #12 here?
> 
> 
> Matt
> 
> > Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > ---
> >  drivers/gpu/drm/xe/xe_pci.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
> > index b5e8935fff1d..edca562462fa 100644
> > --- a/drivers/gpu/drm/xe/xe_pci.c
> > +++ b/drivers/gpu/drm/xe/xe_pci.c
> > @@ -106,6 +106,10 @@ static const struct xe_graphics_desc graphics_xe2 = {
> >  	XE2_GFX_FEATURES,
> >  };
> >  
> > +static const struct xe_graphics_desc graphics_xe3p = {

One more comment: we may want to name this "graphics_xe3p_lpg" to help
distinguish it from graphics_xe3p_xpc below.


Matt

> > +	XE2_GFX_FEATURES,
> > +};
> > +
> >  static const struct xe_graphics_desc graphics_xe3p_xpc = {
> >  	XE2_GFX_FEATURES,
> >  	.has_indirect_ring_state = 1,
> > @@ -148,6 +152,7 @@ static const struct xe_ip graphics_ips[] = {
> >  	{ 3003, "Xe3_LPG", &graphics_xe2 },
> >  	{ 3004, "Xe3_LPG", &graphics_xe2 },
> >  	{ 3005, "Xe3_LPG", &graphics_xe2 },
> > +	{ 3510, "Xe3p_LPG", &graphics_xe3p },
> >  	{ 3511, "Xe3p_XPC", &graphics_xe3p_xpc },
> >  };
> >  
> > 
> > -- 
> > 2.52.0
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
