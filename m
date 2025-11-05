Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D34DC382F0
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 23:26:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BD5710E03D;
	Wed,  5 Nov 2025 22:25:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A7qOOMJ/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C89810E03D
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Nov 2025 22:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762381556; x=1793917556;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=4Oq9sGpXkaimrEttH4QgQTBcmdFAJy1tyZL541LknoY=;
 b=A7qOOMJ/Zi97pQuzaN571alAf7ByKzF4rvSKiEvXUK6LYxlQvD4zEWlw
 zNL3pmMfF7VO0c8zA7pqDjCU8W+oB+zZPls1dYATh824NUjUVeSy2y54N
 dJqaE8rCeCLt7wVtzkIHjvkPnUP/+EB+VPJkhaB9iDo0/w5luIcJ/7AQ1
 FZDVAPCn8pkb2+c3iz2vMBvoyuPLixJ6uMNYmJF1jUcJf+Tu6VHJEAIK3
 n1H6R+zKXUfykELtqsvAqU5wM9UGZOVlLqzfRWzHX9CnkyAaLSFvbaWhr
 jdFmVEPvJ6MziQSxkP3zEB+TfNgNK3cSG0fwTRT3EjsXTILTNJhD5crZJ Q==;
X-CSE-ConnectionGUID: liWhPgbJTiSYLsTsP9TOXA==
X-CSE-MsgGUID: IlLeW8qVTqWwFADlsWPuUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64608354"
X-IronPort-AV: E=Sophos;i="6.19,283,1754982000"; d="scan'208";a="64608354"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 14:25:55 -0800
X-CSE-ConnectionGUID: /qQP5eyXRHWXzVmAfC72EA==
X-CSE-MsgGUID: GTstYCqZS1uIqI+RwiEBkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,283,1754982000"; d="scan'208";a="191866349"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 14:25:56 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 14:25:55 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 5 Nov 2025 14:25:55 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.63)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 14:25:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IfNnZEu4fSAFygL6mSoarzq6sYk2QGStN8/WzSNRGHBeM55+JOmWVUXFcleemOLf+bR7vlvkiLn7U/sH8ib4Bs20Ci9IOFt5TzZEr8TrZn1i6aOalMvNc335Cqo01M9YLt0kn3FVR4PPcrGtU4JgOwe7yDvOe0KzXmo0rW9bcNUg2WrMLLL2n49zLJAwzbzEPAx7AKi6lBdxdbXQkuZY5AvmlL3iaep0sTld4uEDdZDo5olGgRVax6AuYLDntohBpCAMa3FtYgWFEEdJ0I5I/iVK08B0AVKJyaphp026WnjLycJptVRRWZjEJ9Tn9phGWtt1BxXpCsx25PHbGv+TYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i0S4Cs3SotWb267lyiOUbjuelwv5rAQPXkU3z2eKUZU=;
 b=FA2+7zI01TbzHQ/Nxx+Lx+DFjOtQiA/ZjC3IKu/X7EDdz4Ez1UsXn2xXF7tx8pQNXYDHXPOqIKLgbyp7BpgINkMShATxZmoYyfSGZC20WXlBcED3T3syp3cpE+YGAyn0R/yX3tiPqxCfuV1WKdbbfuhzADaGfXbIx86YbHs8SUp1k9bEHlvDXThF2QZTmbAM0UI/MbIAR1oMVdOvo0MZ9P2iVt/fMkMFXP9mSndMw5SAk7GR+xgg4KABHda0n3lefHOx4PoO0iiYZg3wyvnwaGCBxufhGzwQn43cVrBcLBaTKbaHoE/M65h/bSWz2J/HxhvJCRzcKNjGMZnn6bDFSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CY8PR11MB7060.namprd11.prod.outlook.com (2603:10b6:930:50::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Wed, 5 Nov
 2025 22:25:53 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.9275.013; Wed, 5 Nov 2025
 22:25:53 +0000
Date: Wed, 5 Nov 2025 16:25:49 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 3/3] drm/i915/dram: Fix ICL DIMM_S decoding
Message-ID: <5nlmnkl3qcv2kmjeew4wsi632dharewi4323iu7jf6scxpjgj6@sq33zos5nnfl>
References: <20251029204215.12292-1-ville.syrjala@linux.intel.com>
 <20251029204215.12292-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251029204215.12292-4-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BY1P220CA0004.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:59d::15) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CY8PR11MB7060:EE_
X-MS-Office365-Filtering-Correlation-Id: 97b48c50-cf92-4d6c-6b2b-08de1cba47b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?kGYkMlavCHPHhNpVQYdTw39zl5XAazW7Y37QcNC3iKf0Ffkb09qLDdGZk1?=
 =?iso-8859-1?Q?DXwcnaWjeLr7yrHo7VEJAlM3BBtFiKiQCqDX0EJmaKoREnxpp0Eo6OdQw+?=
 =?iso-8859-1?Q?4VrT31nTpXhXOyPeLgHLnLkxYL1HkRIa2TYgB09cfys0zaC45JrInPJBxa?=
 =?iso-8859-1?Q?gEmaDyRs/oYQ2PTriAZYJNOJkhjW+hISmAN/fXxEsyEaYMPQYJ8gecVLHZ?=
 =?iso-8859-1?Q?8/QsuDjClYdo+zsAnxBMCAdjN33z7p4dnSFWF2ZYQDzlqYm5YlbPvbbsLc?=
 =?iso-8859-1?Q?p0E4UlirOuEXpgBB2gABkQzu1dAMwlbhZvCqxAqzYCe9GtASH1MGXvxc7w?=
 =?iso-8859-1?Q?CRsp3TnHqjiO/app6git7qafjG0OJ+8jK4m4XEELUv+XCWjVNrMi2nIYHC?=
 =?iso-8859-1?Q?bEr2h2SKQ3GmOQtzr1oAZHHF5XqWDJmvx4Hkwopb7Kh/QdK534iI0/ske3?=
 =?iso-8859-1?Q?b7ZTEGuWRN4K1KTok+DGUB2ptckK5TJOvot4QatHkx/u17awV9jwJHgEil?=
 =?iso-8859-1?Q?QJd0sqlKW+ad1xcukkEBHkcahDpbLHWTXgGFsGxdpvAwFOXinZjfKbSUXx?=
 =?iso-8859-1?Q?c0n/Dku34p8pdBSgCe7LJdVvHkUgV0asjZVITd3FWJ7VxwUr9UbFbz6kOt?=
 =?iso-8859-1?Q?sPgQuObK1+nnFmwmqh0MVabXcyQxzZpKNeSuWIe0sB2Kz2f4lJKy9K+OEt?=
 =?iso-8859-1?Q?EzXwTu0PaJS5N0sNzzf4ftwXbaKo7PtP7RmUVMnnTciykZPXMAJPhYIiEu?=
 =?iso-8859-1?Q?4fVMcSDIGhsx/r6ue190VzYPCodfNoCeY3YtDTpZ1EhqRTiR8Dp3bpz0Z+?=
 =?iso-8859-1?Q?3lbgo6D/4SR4pE7sIjE3yyCL/8f3pVt6q/otrvg9255p8Ixl/K14eiZ3Hq?=
 =?iso-8859-1?Q?bCrGyhpSCxq51GaS0lW6KHOH7P5/Ej9zu2oLUol6Yd31uWOZSino3EsvhE?=
 =?iso-8859-1?Q?ImAy6D6DCXMwKXMX2QLK4F7NYEuo8P+dXRENwmW6ffSxxJ/IUhOFbnH3xE?=
 =?iso-8859-1?Q?nKJQDI8kuuvddyrrFio44hDUSAkOOg6Re+0bwIBybzDMyPLKGjBBfftYzH?=
 =?iso-8859-1?Q?kSNSxVgaRMi8FSiMR8PNwv0f8rYnRUACmTfSjdp0z/Lu1s97v2051En17+?=
 =?iso-8859-1?Q?g2m7XPUtzbBTrxQhZ8aemWApYbxcigu7BV+VFHB5lYQ2pwhw/KYmxK1bBH?=
 =?iso-8859-1?Q?tRX6H4CqMctne+AS16GQ5P1yMGbMPrKjA/QX9KKHJblhor7rS/ZRuC06ns?=
 =?iso-8859-1?Q?1ZZ4KHUbADoIkgK8FrBM2Wq+dPq63MLaKdCOWociewr3wfRVVYkKSJf9Of?=
 =?iso-8859-1?Q?+FV/766qODKw4C80vr4YK5zj3rOSS6QfcaL9wnMDWgzRBzCazgwZ4H3fQE?=
 =?iso-8859-1?Q?HuLEumFZXY0/B6dqCRALGIKRQevaL5q41oNRkAYg1JAP5o/17zTCA922y3?=
 =?iso-8859-1?Q?RhLTFnPSKarDy8nw8kXjVUwZrUtcVNgKf7y3bsAAkqCtAVCjh4gWu1ORy6?=
 =?iso-8859-1?Q?eyYZx39Jlc4j6jPoBuOYFd?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?5uKvoKUNr5NZ2QM/wgvzAb+DNdL4lJL6jEco9EDNb6Sj6vAf75PfkJ0EsH?=
 =?iso-8859-1?Q?OosRtxXQFB+kjcIkn+R9Y1rRgnWa2wKlZWG5PGaEsUnA3bccDQE3WSmyCn?=
 =?iso-8859-1?Q?MJ2k3mFERN5syi4G9403WJKNcqaIkPXN1sbT3Uajp4WFyFLaJgvfDtZjyl?=
 =?iso-8859-1?Q?IUG9NWL/wNiJaEKXoT/DD9T5GwEYMmDP2SoLr+v28XWnfHR6WIK3LZwiQs?=
 =?iso-8859-1?Q?pUjxwU1i5QAgggUB6pQOok3K/GJBg8huez0Y7BPlkfcIP1p+6m4wC3/nqN?=
 =?iso-8859-1?Q?COm8mx5gXPkpOpHlfUwsTVpbFA7Bnxwkvr2vE80GlL72aqzD9K69/8ltHr?=
 =?iso-8859-1?Q?50G9b9XZmmLz6l2Is8C7bs1afjdHBijwF+k/gGA2Hcd0X90bbllylxZKwo?=
 =?iso-8859-1?Q?XXbItmZTRlV/3LzAiypNu4Yx8++2Dqecux78msjWpsLGHxdM3KRYwPL+uY?=
 =?iso-8859-1?Q?4zf8BWn6nGic/eg5VhzEX0v99BWnyjYERJSwHgsJ/cBwS2GzO+UJXx6/bj?=
 =?iso-8859-1?Q?WNfRcGss9glt76FgXgHZwuD0DVqAK+45izvA3SlPZtKuUab66X0t76JGLY?=
 =?iso-8859-1?Q?p36Tq5IAKywa+NPA20MvqpB4Pxnf6gZ8fjgdZLezB/wHEt/4RCexST3I+b?=
 =?iso-8859-1?Q?h/WnWs8C7ugUQOzg/8ADoT2xb72CZ9yVdSzpLih4cJAevpQvI1HqkNKyyW?=
 =?iso-8859-1?Q?fuz/tN+4kZyG/LiNTc9jCSTidCvTZ+kkknCWAR3GwMgqhVBnaiu/lGrS4+?=
 =?iso-8859-1?Q?EE5TBsAbR/v7GStohgd8j6SnWxvA8A8pBvPi71oWc2cNeK8+5N7pil0Akm?=
 =?iso-8859-1?Q?HQihBYDRy0eB4HWgy67197sLdsG4x7rxtB3iHiGb27Mx+n/Ps9lHJUobXT?=
 =?iso-8859-1?Q?Z4cGhnFtE1Gw0w2pkICFPbr5FeL+ujLyZxhDNoXfMK+l8qUzmTwQaRfefB?=
 =?iso-8859-1?Q?QpJvNpwtcbVMe76izeMms2uqlE9lh6Wr7ROU4Kx4kqtEMegL5J/kxG6JBL?=
 =?iso-8859-1?Q?jxagPAaaADkdcoA8jLeLy1XWbD3b4JBne7Kfiqc4CvCeMnJ+iJd1NQHkBJ?=
 =?iso-8859-1?Q?haHma5V5obiHue2t2ySujYAfWY13pQxPo8MpkKUT0nquDT8jaDuXSWoosE?=
 =?iso-8859-1?Q?kB8+xmBp6im/Su/GmKx2bNco/ER7hQji1hbpY2Exo5m93X4amedONpgSmq?=
 =?iso-8859-1?Q?EUshsWtFTLMd+qh5x257OCx9hXhs49hmDKsTuuLzHq8dvkWlNy/142K9hk?=
 =?iso-8859-1?Q?+NdE14v8BSy9xdAwXeBbA+97k5psltzcEroJUQ2g9wLZxOgQfLxK4rWD4d?=
 =?iso-8859-1?Q?NEJfCsuJ4pLjD9jeGofQZbcCm4SkbUb7FC3IXorFdJIHrYnYUqJkg2P5El?=
 =?iso-8859-1?Q?z6VVPb0az/CIroPNrMQB2E53JVuLouIHIz5t9Cf8zVuMxgcq+KTl4TxFWI?=
 =?iso-8859-1?Q?78jbozSsFZlNg+nfKYcAkfl+a24ZOS4lu43MkWiKPzGpWBzN9erD43rPv1?=
 =?iso-8859-1?Q?UaZVXcwj9I9NIKu/KC/iUS0TMWsjCBopFJZXp2cc8KkIT3+jKVUkV0fALh?=
 =?iso-8859-1?Q?s3zptdQRLq+0Xip2c3rKEADmPjccaO0vM2RYfSjIAuaUQ1jRq0iqQ4LxrA?=
 =?iso-8859-1?Q?XG1lr3QbMQByukUjdr6p3RExyluYwdm+SxuwYToOFu0SdGSp8F3/BYbQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 97b48c50-cf92-4d6c-6b2b-08de1cba47b6
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 22:25:53.2381 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v8D/zygMCzjdbIC/1UITKsG7tmFpZ43f8uK3/rG1J3NoNZ6/27yKzLwkh6N/4h9ZOTrKEe3TwnUMKM1Aq1L7EnwXK1hLRTOd+vgY0FdjprA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7060
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

On Wed, Oct 29, 2025 at 10:42:15PM +0200, Ville Syrjälä wrote:
>From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>Unfortunately the MAD_DIMM DIMM_S and DIMM_L bits on ICL are
>not idential, so we are currently decoding DIMM_S incorrectly.
>
>Fix the problem by defining the DIMM_S and DIMM_L bits separately.
>And for consistency do that same for SKL, even though there the
>bits do match between the two DIMMs. The result is rather
>repetitive in places, but I didn't feel like obfuscatign things
>with cpp macros/etc.
>
>Broken decoding on Dell XPS 13 7390 2-in-1:
> CH0 DIMM L size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
> CH0 DIMM S size: 32 Gb, width: X32, ranks: 3, 16Gb+ DIMMs: no
> CH0 ranks: 2, 16Gb+ DIMMs: no
> CH1 DIMM L size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
> CH1 DIMM S size: 32 Gb, width: X32, ranks: 3, 16Gb+ DIMMs: no
> CH1 ranks: 2, 16Gb+ DIMMs: no
> Memory configuration is symmetric? no
>
>Fixed decoding on Dell XPS 13 7390 2-in-1:
> CH0 DIMM L size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
> CH0 DIMM S size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
> CH0 ranks: 2, 16Gb+ DIMMs: no
> CH1 DIMM L size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
> CH1 DIMM S size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
> CH1 ranks: 2, 16Gb+ DIMMs: no
> Memory configuration is symmetric? yes
>
>Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/intel_mchbar_regs.h |  53 +++++---
> drivers/gpu/drm/i915/soc/intel_dram.c    | 166 +++++++++++++++++------
> 2 files changed, 155 insertions(+), 64 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
>index a46a45b9d2e1..614d4017b57b 100644
>--- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
>+++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
>@@ -160,25 +160,40 @@
>
> #define SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x500C)
> #define SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5010)
>-#define   SKL_DRAM_S_SHIFT			16
>-#define   SKL_DRAM_RANK_MASK			REG_GENMASK(10, 10)
>-#define   SKL_DRAM_RANK_1			REG_FIELD_PREP(SKL_DRAM_RANK_MASK, 0)
>-#define   SKL_DRAM_RANK_2			REG_FIELD_PREP(SKL_DRAM_RANK_MASK, 1)
>-#define   SKL_DRAM_WIDTH_MASK			REG_GENMASK(9, 8)
>-#define   SKL_DRAM_WIDTH_X8			REG_FIELD_PREP(SKL_DRAM_WIDTH_MASK, 0)
>-#define   SKL_DRAM_WIDTH_X16			REG_FIELD_PREP(SKL_DRAM_WIDTH_MASK, 1)
>-#define   SKL_DRAM_WIDTH_X32			REG_FIELD_PREP(SKL_DRAM_WIDTH_MASK, 2)
>-#define   SKL_DRAM_SIZE_MASK			REG_GENMASK(5, 0)
>-#define   ICL_DRAM_RANK_MASK			REG_GENMASK(10, 9)
>-#define   ICL_DRAM_RANK_1			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 0)
>-#define   ICL_DRAM_RANK_2			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 1)
>-#define   ICL_DRAM_RANK_3			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 2)
>-#define   ICL_DRAM_RANK_4			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 3)
>-#define   ICL_DRAM_WIDTH_MASK			REG_GENMASK(8, 7)
>-#define   ICL_DRAM_WIDTH_X8			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 0)
>-#define   ICL_DRAM_WIDTH_X16			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 1)
>-#define   ICL_DRAM_WIDTH_X32			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 2)
>-#define   ICL_DRAM_SIZE_MASK			REG_GENMASK(6, 0)
>+#define   SKL_DIMM_S_RANK_MASK			REG_GENMASK(26, 26)
>+#define   SKL_DIMM_S_RANK_1			REG_FIELD_PREP(SKL_DIMM_S_RANK_MASK, 0)
>+#define   SKL_DIMM_S_RANK_2			REG_FIELD_PREP(SKL_DIMM_S_RANK_MASK, 1)
>+#define   SKL_DIMM_S_WIDTH_MASK			REG_GENMASK(25, 24)
>+#define   SKL_DIMM_S_WIDTH_X8			REG_FIELD_PREP(SKL_DIMM_S_WIDTH_MASK, 0)
>+#define   SKL_DIMM_S_WIDTH_X16			REG_FIELD_PREP(SKL_DIMM_S_WIDTH_MASK, 1)
>+#define   SKL_DIMM_S_WIDTH_X32			REG_FIELD_PREP(SKL_DIMM_S_WIDTH_MASK, 2)
>+#define   SKL_DIMM_S_SIZE_MASK			REG_GENMASK(21, 16)
>+#define   SKL_DIMM_L_RANK_MASK			REG_GENMASK(10, 10)
>+#define   SKL_DIMM_L_RANK_1			REG_FIELD_PREP(SKL_DIMM_L_RANK_MASK, 0)
>+#define   SKL_DIMM_L_RANK_2			REG_FIELD_PREP(SKL_DIMM_L_RANK_MASK, 1)
>+#define   SKL_DIMM_L_WIDTH_MASK			REG_GENMASK(9, 8)
>+#define   SKL_DIMM_L_WIDTH_X8			REG_FIELD_PREP(SKL_DIMM_L_WIDTH_MASK, 0)
>+#define   SKL_DIMM_L_WIDTH_X16			REG_FIELD_PREP(SKL_DIMM_L_WIDTH_MASK, 1)
>+#define   SKL_DIMM_L_WIDTH_X32			REG_FIELD_PREP(SKL_DIMM_L_WIDTH_MASK, 2)
>+#define   SKL_DIMM_L_SIZE_MASK			REG_GENMASK(5, 0)
>+#define   ICL_DIMM_S_RANK_MASK			REG_GENMASK(27, 26)
>+#define   ICL_DIMM_S_RANK_1			REG_FIELD_PREP(ICL_DIMM_S_RANK_MASK, 0)
>+#define   ICL_DIMM_S_RANK_2			REG_FIELD_PREP(ICL_DIMM_S_RANK_MASK, 1)
>+#define   ICL_DIMM_S_WIDTH_MASK			REG_GENMASK(25, 24)
>+#define   ICL_DIMM_S_WIDTH_X8			REG_FIELD_PREP(ICL_DIMM_S_WIDTH_MASK, 0)
>+#define   ICL_DIMM_S_WIDTH_X16			REG_FIELD_PREP(ICL_DIMM_S_WIDTH_MASK, 1)
>+#define   ICL_DIMM_S_WIDTH_X32			REG_FIELD_PREP(ICL_DIMM_S_WIDTH_MASK, 2)
>+#define   ICL_DIMM_S_SIZE_MASK			REG_GENMASK(22, 16)
>+#define   ICL_DIMM_L_RANK_MASK			REG_GENMASK(10, 9)
>+#define   ICL_DIMM_L_RANK_1			REG_FIELD_PREP(ICL_DIMM_L_RANK_MASK, 0)
>+#define   ICL_DIMM_L_RANK_2			REG_FIELD_PREP(ICL_DIMM_L_RANK_MASK, 1)
>+#define   ICL_DIMM_L_RANK_3			REG_FIELD_PREP(ICL_DIMM_L_RANK_MASK, 2)
>+#define   ICL_DIMM_L_RANK_4			REG_FIELD_PREP(ICL_DIMM_L_RANK_MASK, 3)
>+#define   ICL_DIMM_L_WIDTH_MASK			REG_GENMASK(8, 7)
>+#define   ICL_DIMM_L_WIDTH_X8			REG_FIELD_PREP(ICL_DIMM_L_WIDTH_MASK, 0)
>+#define   ICL_DIMM_L_WIDTH_X16			REG_FIELD_PREP(ICL_DIMM_L_WIDTH_MASK, 1)
>+#define   ICL_DIMM_L_WIDTH_X32			REG_FIELD_PREP(ICL_DIMM_L_WIDTH_MASK, 2)
>+#define   ICL_DIMM_L_SIZE_MASK			REG_GENMASK(6, 0)

so we have:

ICL_DIMM_L_RANK_MASK			REG_GENMASK(10     , 9)
ICL_DIMM_L_WIDTH_MASK			REG_GENMASK(8      , 7)
ICL_DIMM_L_SIZE_MASK			REG_GENMASK(6      , 0)

vs

ICL_DIMM_S_RANK_MASK			REG_GENMASK(11 + 16, 10 + 16)
ICL_DIMM_S_WIDTH_MASK			REG_GENMASK(9  + 16, 8  + 16)
ICL_DIMM_S_SIZE_MASK			REG_GENMASK(6  + 16, 0  + 16)


I can't really check the soc spec right now, but this fix seems very
verbose. Maybe the first patch could fix the bug in the simple way and
then have these refactors on top?

u16 lval = val & 0xffff;
u16 sval = val >> 16;

/*
  * Some cursing here for format change - "fix" it up by making it compatible
  * with the lower bits by doing shr where appropriate
  */
sval = (sval & ICL_DIMM_L_SIZE_MASK) |
        ((sval >> 1) & ICL_DIMM_L_WIDTH_MASK) |
        ((sval >> 1) & ICL_DIMM_L_RANK_MASK);

...

> static int
> skl_dram_get_channel_info(struct drm_i915_private *i915,
> 			  struct dram_channel_info *ch,
> 			  int channel, u32 val)
> {
>-	skl_dram_get_dimm_info(i915, &ch->dimm_l,
>-			       channel, 'L', val & 0xffff);
>-	skl_dram_get_dimm_info(i915, &ch->dimm_s,
>-			       channel, 'S', val >> 16);

Which would mean basically changing this function to derive sval and
lval as above (untested). This could easily propagate to through stable.

Lucas De Marchi
