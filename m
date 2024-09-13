Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED76D978B55
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Sep 2024 00:21:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B44510EDC1;
	Fri, 13 Sep 2024 22:21:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YBBufXdK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 609E610EDC1;
 Fri, 13 Sep 2024 22:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726266103; x=1757802103;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OQ7dq/fl6ATwjNaFouxvpBmpIorNNyiT119mMYcy82A=;
 b=YBBufXdKVdBLsdVCw0k4NARSGujIldcTqsRSSpJ+m28ZYQuLPmJiYlMx
 GCVZ7+pmbNuUzX1R5Qzk8fj0FMKE6vylh7L83z0PG1ofuzZX98g2vT+x5
 LTkJHjFl/MdUVSZFDPEojZfO2aUL5EDQOqTAffi9r+ADSaLF2De+Agcqo
 wG9dvWIDAoAb4KVWiyX+WLL7KGfnCWnEQgVNLqsmR0e+bBr8fI9XoMtKb
 gv53j7hdiChuim5UbE27lzVWwmdrK7oQy8ZB+Z2AbJhpY+kIG/a7bt9g4
 yODwjFEUw+XqY1F8w2q9dbfUuSCIcer8NvY76Q/x8LmeXn6XAwepo3BmW A==;
X-CSE-ConnectionGUID: jeoISfHaSEejBGUq5c4Qlw==
X-CSE-MsgGUID: P7yfoX3EQuKmVHI4rI2EeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11194"; a="25008470"
X-IronPort-AV: E=Sophos;i="6.10,227,1719903600"; d="scan'208";a="25008470"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 15:21:43 -0700
X-CSE-ConnectionGUID: umGJ4E8NTZCf6jVTglNCew==
X-CSE-MsgGUID: 6mn6sVMlStyKc9bxEew1GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,227,1719903600"; d="scan'208";a="68157130"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2024 15:21:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 13 Sep 2024 15:21:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 13 Sep 2024 15:21:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 13 Sep 2024 15:21:41 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 13 Sep 2024 15:21:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BqdZETcO6kIZvia2W+VN28CmKWTS1CY21Y+L2SpezMujYzJUfB8+M37G2svu5lrTSgXfz0GrK4omT1+42uTVVBx9XZ2BDxeq3t+e1Pok88ShIbTccgZgmU/sa8+b1NryGm2BACa4GrjrSe4DJ5o3s6kf5iqEO5t4N9YYic1ZPb0C7gH5u4Ik8e5X5dMJkLMenPDOfUftIHWs7UCrrXwCexK0OQlNaMn7CnPLnfjt/pOJkO+JaKV2fymW4UF/Zuo/KGX36AFDuQbqKsNFqBzaadrBx0yiZM7xaDpNqruX0YK9OhFfio/oc5mI1jCH18YJqxyFEDmksNBpHg9KY0ekrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WN+rpS/WBhNdW/zTR3dhRX3AhvEBFUBQfHzrK96H+n0=;
 b=O23vgfXI50DtqJhSlRjEvJ6Ikx6l9/aHtco1P8JrRgWH5M+6d6ysxOmcsjaxo8SxqlO/nPBYED471uVUnDrZFSd1yilErKL7p9JlccVzGgZem0nOWv5fioJbymI/xBwa1iZRY6pAt/RuCi+BKVtQB7AoOkGqBXuQRsyyIowdiLid/tE5lTct7LmcCHjYZUcFEacpEQryK4t6GUERMMDfACsGQ3YfZYYVh7L7jHoqyQFAE6EOqrZk3h5cKHPXlFEvtrh3BRL+YRJ6sG339B73NzPMVWYFYJlA6bvtAp3lEEQ43ZmkB36J3KUzBiw6vH2FvcKfKy5yn0KWjGX2cb8WKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by LV8PR11MB8747.namprd11.prod.outlook.com (2603:10b6:408:206::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.18; Fri, 13 Sep
 2024 22:21:38 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7962.017; Fri, 13 Sep 2024
 22:21:38 +0000
Date: Fri, 13 Sep 2024 17:21:33 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Bommu, Krishnaiah" <krishnaiah.bommu@intel.com>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>, "Upadhyay, Tejas"
 <tejas.upadhyay@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, "Joonas
 Lahtinen" <joonas.lahtinen@linux.intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, "Teres Alexis, Alan Previn"
 <alan.previn.teres.alexis@intel.com>, "Winkler, Tomas"
 <tomas.winkler@intel.com>, "Usyskin, Alexander"
 <alexander.usyskin@intel.com>, "linux-modules@vger.kernel.org"
 <linux-modules@vger.kernel.org>, Luis Chamberlain <mcgrof@kernel.org>
Subject: Re: [PATCH v2] drm: Ensure Proper Unload/Reload Order of MEI Modules
 for i915/Xe Driver
Message-ID: <rfyw3ik227ftv3tafebepvq77ekwyvdkl5ddlet2lmk2ffac6c@mpwp5opxft2p>
References: <20240909040317.17108-1-krishnaiah.bommu@intel.com>
 <ZuBfwqpIX4HAGwb1@intel.com>
 <3zgu3edmrjum2rbhu7tv5xo7xans2uper7qn3lswca3nsc4tdl@gevqfr65js4g>
 <DM4PR11MB529387DB2FBB0A5C1064895C9D9B2@DM4PR11MB5293.namprd11.prod.outlook.com>
 <b3gmlgx6tl5uyzsdsp6q36blhzchvhpvno25tvwrj6nnu23dmz@rkacgyjoxsru>
 <DM4PR11MB5293DCB20388C7BA5950369A9D642@DM4PR11MB5293.namprd11.prod.outlook.com>
 <txrby642v75jkffzgsc3a6k5hdkcv3ebf3wuksg4v6ojgpcpvh@uwsjr4ihmi7i>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <txrby642v75jkffzgsc3a6k5hdkcv3ebf3wuksg4v6ojgpcpvh@uwsjr4ihmi7i>
X-ClientProxiedBy: MW4PR04CA0296.namprd04.prod.outlook.com
 (2603:10b6:303:89::31) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|LV8PR11MB8747:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f58e145-0d99-4754-8f76-08dcd4426f53
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?DRSGWlud9TkllVcJ/VX+/vMidzL4XwkPyxAakQONfXY4acOo5ozzNTi2OdjE?=
 =?us-ascii?Q?QdiFE3LJ35atpWfn5lji0R1id11/3TsSywH08bV0Tzf/12/+UViguGGz9s6J?=
 =?us-ascii?Q?ngptaRRVAlz9R02PCDX/IGJ+CG1C22foyHYmO4qtOxCVOXcebT8bJ5IAkBaw?=
 =?us-ascii?Q?o/6z3NqXbNFATqjqdxR/uZ37z0ihBPTRENdbFNSwxBpobVxwa7jeBnAztvGd?=
 =?us-ascii?Q?YGWZctuME1aiCuTdQpksx7ZnNHcOqGE4Q7rbXFz2lmx5jNyDiiOTOvflrywZ?=
 =?us-ascii?Q?IilmrNNNSDx11UHMrn2i2bjBfOiro+2Rmc+begTKiXjDQWU93Ox2sqmpW4Ni?=
 =?us-ascii?Q?hOP3i4dAjPRQ/5oaCmJiw9gmQS0mYMo0z7Ricjc0WtU7iMj18g0CXdYjjaKQ?=
 =?us-ascii?Q?+mzHl+3rVw11ea5+QYcIB6v3mCarhzOI25z2OcG1bRTVjXNzpD1vzCiW2Dbt?=
 =?us-ascii?Q?7SWGWtpftKmxgYEM9FgIoKmHTjFiYkO8te5TX7J/J0UkcH+4piHl/VDfBWLV?=
 =?us-ascii?Q?LMyd6EQAnUdbEh23qOR89/iUj/LxwUSysHE/eUXx/iBEKs0KkeWn00XSfj1g?=
 =?us-ascii?Q?o7sn7PoW/Hxg23Xm91DAvn/pdAr1aVXecl0enbghYbnmwobX6wBM9cX+Mkv5?=
 =?us-ascii?Q?KwcgQLko6PLH0lO+UNfyDwMjF66TG7+tihLpjyV5mjLmc3JNuVPxblTRyJ5h?=
 =?us-ascii?Q?6G28L0QEOU+gx3+N6UUGzYc5P7eNFnIKN5umeFNf+eLZEIkidr7hTauZdLnx?=
 =?us-ascii?Q?KBFe3Pd4fgJ2yqJPctosE66gvDlp21v4oPd2pOPF1fKx1RuiNiLAwl2Tj2g9?=
 =?us-ascii?Q?/K0wZf6yHnIW49FCdRrpeQT99tjAy1JbAckFKoKFUwtdjQZZ3CpKWJdu5uYZ?=
 =?us-ascii?Q?Ssdb/er1Q8o0xdOQNnj1+gAjhJ6ZBn+kko0iVACSof0iIVjBd4koJbNFquqJ?=
 =?us-ascii?Q?9WUAO440nASVkHDeNvKfZKSfHguPlmuovvn+liIpxij4qov9RRO8LeJyBPsp?=
 =?us-ascii?Q?gk/lC2BKXYkAvKfc62ZeSTCzPF4zkmpsijp/WIYQSJr2tC3Bf/5JZcBwhDut?=
 =?us-ascii?Q?HkyCsfNsKS/Qjk9kRonUXiXX5SkYufagZh3oKB/SefLbDit98U52uce8Z3UM?=
 =?us-ascii?Q?MXwvR3Txegre2ttrb8OI9n9H4VFLZbYSKLej13HrTQ7oSUbnw2qqbs2wmc+0?=
 =?us-ascii?Q?gWLJ6m5ogwb90z3etEALe2ajomJlmKGYLnkN8mMpmOlFf1IAFjqax/xVZ0kx?=
 =?us-ascii?Q?VPYk+gujKQwmdfVEs05QNIPQWvHXK8vcw8OzhZZFWA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tC2oyJ6WCKvEySygf11IiR3pptdfA/ZXN8TqIm6Q8YucDzQ0KMPcRz6/dayu?=
 =?us-ascii?Q?1RwFkyXoobJ3edr6uvOBIf+atRr3D76LwzQvj4N46S8v6i0k6Qxa1NjaTc1v?=
 =?us-ascii?Q?Z9/+QWeMOnDnM7FSFDMMoJQ6tBq6n+aJ/WB9pL0dZaAm83lKYpqefcxtu9pd?=
 =?us-ascii?Q?dUJ4o0XiuZff9GjlolLKnxG63sTh44gN75XduD6ttINQ5JUlQwitqXqq73AT?=
 =?us-ascii?Q?j2itRvOF0SrClkYwE6e24MSoGrvcIcy7+dknjBu979phObVuVIR85DCK6OUP?=
 =?us-ascii?Q?CNQKXpkbhDILpa6P3OZC80S5+ugr524ykLMC4IiGvDU6tESv8/Xg2BoAWwRQ?=
 =?us-ascii?Q?GydMWlnD+r9dJYNTi9mewxG1QeztluwZA9L8dQu/Vklr7dw+MUBEtcxM2I7w?=
 =?us-ascii?Q?oUVVfY3vgdHCxUzmkPD2UBDSOBgcC+tytoNMr9BguIYi6Fmsb2lLD2DryBip?=
 =?us-ascii?Q?r3YJBg64PT6ANqMIdmWkD/5Ic3OEwwGB3ziaLcMk5rWYQC/LgVTvGQh+mPLe?=
 =?us-ascii?Q?8Vf2Gz9gssRqCdat5U7dCX64w3uuSXqSbXFFzo5qnloJITvH9HRmcKWH2nst?=
 =?us-ascii?Q?umyZbZJ3kdJkNQyHhF+37kGbsSvLwAQPwYYnrfn7/jQRraHF8/lEpMeVZNQ+?=
 =?us-ascii?Q?E5UzPRooZElbjHfPFSYXRCkCL4C2ex2bd9tR+dkZ2jZht4VZio79wZEHsE9J?=
 =?us-ascii?Q?/RmHLLWHC2kU6RW8iccfPLHjo6o39MVVHZOzZNn36GEJ9njyl38opPLUvne4?=
 =?us-ascii?Q?nfqDLgsYLLb2/7+LAb0DYBSHLIcSGRXb7GvnjUAk0PtM4Iz4J2a76z6yyfTQ?=
 =?us-ascii?Q?aMiXCcaxprCplIGrnss1jiIuVQ+nMzqt6wlfEE80czS+otMVG3I2OEHwjD85?=
 =?us-ascii?Q?gE28xFwYXJdycPE3R9D7veNS2ByxeFLrJXQK8ufjvjMFDPjiT7Dh2/xS0wtv?=
 =?us-ascii?Q?k0BAqKiKNoyl6yDgTADK60w+9dQRct37vqUyZUNoJXKlX3GnlgRYm9OSJi3h?=
 =?us-ascii?Q?w5LuH3EzRrBJvkQsF1+aGwED7dZz6pJPu4cFOdOFLlwyq2jBHsHL+vVma4Pm?=
 =?us-ascii?Q?69LXC7Xjj8uwrK1/vuZL0nVDPA9jAFU75xJ7jhHDRCG/nHUHxL0No0GaT342?=
 =?us-ascii?Q?5sPhSstf0plmX8sv7fOmEC0yPjKw5hBMRLX0Rs+RH9jkkjcXVXifWrWTLAcU?=
 =?us-ascii?Q?1n+qrC0dhIpWITd0sKxPAJy9buRkomeEcOz2wn4yRfcKjR6L4CLZucnSIofA?=
 =?us-ascii?Q?PfqwN3YEvf01DO+8VFcgMGbhYIngNWrsPx2Sq8tBZ3b6hZ8P0/1CVUZsCSsq?=
 =?us-ascii?Q?dSHd65iIRwuvuTW76TJeqTHNz8yPXy4ZMH2dXFr8TO9ss1ANdPRzwA9dMrjY?=
 =?us-ascii?Q?qUfaepOqMEOBIs4/l6HS/PkKcl8hyDJhXbS3w6B9Vs9luCQA2ap6JNk825mu?=
 =?us-ascii?Q?KLU3wbMfc5jLtqCOX2EwP3jikfwafprcE4nfaLq/j1CWtfZEOENkDCQwatXN?=
 =?us-ascii?Q?XYHWdZMj9jowBP1y5+jhWSgVi9wWPX+1hJHXMNGW30ZbXtJNq20FQypV8Qxl?=
 =?us-ascii?Q?eii++iX/ONhQfAdZjFO81M+HjFz1solsso/G7qDZ8hxDL5FW9EK1woJn5NMt?=
 =?us-ascii?Q?6Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f58e145-0d99-4754-8f76-08dcd4426f53
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2024 22:21:38.3392 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ISwq1edWW6xoJHJH/1SW/bX5pn8nHaSGUDOklcgvR3PaVzaPSAmsnLcDtfZy0tAnXzZLNzhJKV3N2wdEzlWmHMnSA91hDxIkrT/eBXg8oGc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8747
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

On Thu, Sep 12, 2024 at 03:42:52PM GMT, Lucas De Marchi wrote:
>unbind function is this:
>
>function unbind {
>        vga="0300"
>        display="0380"
>        pci_vendor="8086"
>
>        while read -r pci_slot class devid xxx; do
>                sysdev=/sys/bus/pci/devices/0000:$pci_slot
>
>                echo -n "Unbinding $sysdev ($devid)... "
>                if [ ! -e "$sysdev/driver" ]; then
>                        echo "(skip: not bound)"
>                        continue
>                fi
>
>                echo -n auto > ${sysdev}/power/control
>                echo -n "0000:$pci_slot" > $sysdev/driver/unbind
>                echo "ok"
>        done <<<$(lspci -d ${pci_vendor}::${display} -n; lspci -d ${pci_vendor}::${vga} -n )
>}
>
>
>So... for igt: I *think* simply removing the array with modules to
>unload first would fix it.

I decided to be more useful than just giving the sketch above and typed
something similar to what I'm writing for kmod (soon we will have
`kmod [bind|unbind]` commands):

https://patchwork.freedesktop.org/series/138676/

xe_module_load@reload-no-display works for me with BMG with that patch.
Let's see if it passes the rest of the CI tests.

Lucas De Marchi
