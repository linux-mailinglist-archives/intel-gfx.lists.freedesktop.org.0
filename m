Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7EFAA4BDC
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Apr 2025 14:52:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D689010E7A3;
	Wed, 30 Apr 2025 12:52:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BFQmO3W5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 977FA10E79F;
 Wed, 30 Apr 2025 12:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746017562; x=1777553562;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=TldoCMSvu11VwkC1Rlo8vHn7DAcEA151M5VartmLkkM=;
 b=BFQmO3W5Wo5HJWNKZisb7QInZDrAvEXTlL8RcoPze0Dotx2WJPkQQpQB
 Cf5IJBDevJuNlhUpPLXiFUrcnUkMlb+wZpwFbCcRempAwVdrlBsf2N2/N
 WuoQCA9ppHX4mF5oAU2cKaZJ1JtFUFOmN0bYgkzRBs1QMj7tXwTsZYZuy
 BN+sjkcfZ9ie13PisuCI9gk9l9HsIP7wPt/sUWQRKJSk3XWJEmex0VXK6
 JaTZHXAGOWsC9YUk+4FdedINgQcjjYohTc7JEoT+MenuHtBTT3W+7Thcx
 VEvY/uwUMarsetA9tf2/EAxiTeIYBWW6RthMWxPKQcVraDPbOPesMJjm2 g==;
X-CSE-ConnectionGUID: ZFff9sXbSKuq3iUawSiQWw==
X-CSE-MsgGUID: 0duhwkk3RoucGXXkwIH75w==
X-IronPort-AV: E=McAfee;i="6700,10204,11419"; a="51488751"
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="51488751"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 05:52:41 -0700
X-CSE-ConnectionGUID: FPfgLyHDRuSTq76eT96tbA==
X-CSE-MsgGUID: 1cZHZOdeSbGii/9Jgg4N1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="138926236"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 05:52:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 30 Apr 2025 05:52:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 30 Apr 2025 05:52:40 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 30 Apr 2025 05:52:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YelpZlcfOE6ppqlPWmqbae+/Dsg6z4LSyDTvW5xtE9K2git3KUgpFPnJ228FCS+wtcOgMDGcTtFviBMj2S/C2XL6M57mLw6QX5XbrU4Eb2i4xZKkWsuBcTzXAAR1OSFM7molwFV8ed4qEbK4QP4CYlYx3Tve3f29po61C7NJPCc6iFrhw5sBbwOuvONkAnUvuh9bbtaWBjR7qHblAWWBoGbdCRjpd2SpEroFTpNhGfd/173Iro06S9lfdDgoYKHWpD5+z2hggxoaeEe21ydyfqN/zmUw/WUAVDJ9lskqJT1LWiZzsr4MhN8iYhvWVWVaQO8dMQwxbRy8cGnSBTjcjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mtGllzteU/bKL6o/fGliBPYXfu9l4aB5L2xwbDx6JwM=;
 b=tyKFMF7/rVe6y21T6fC5agTV539vw0//oE9Z30w5QB5SmeZ0IlFh/riGhFJRP77YHdDtrfeG/TsV6+ly+x/VJuGz8jw1Q0TZ6fdUI1lterp2mYPBFh9uim7eYivseDeP6VxyWuwJBprcC1VEJTyHP9kU26U88K8F1r7xJkEtSlMb/zHeAfO5f5PtJiaqQ3rsW8EWfkOEvnupMAd9slafEOnuSpTdwpPhEXkKbzMndAc3TK8fmowTThbNRuDwpi2eQfUK64vIknoliKw+0b4oGgOsbh5RaptG3e/MFg8ouzEAgN+Qa9jFP1SjqYVLsn/0zPYB0rE2SJiw8pjD61DU+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM4PR11MB7759.namprd11.prod.outlook.com (2603:10b6:8:10e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.19; Wed, 30 Apr
 2025 12:52:38 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.8678.027; Wed, 30 Apr 2025
 12:52:38 +0000
Date: Wed, 30 Apr 2025 07:52:35 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Harry Austen <hpausten@protonmail.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>, Thomas
 =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [PATCH v3] drm/xe: Allow building as kernel built-in
Message-ID: <47kdwkkmejb7ot6qbfvto6heunnosggyn5o76gaaqcjdiviqt7@4h6u3hdxy3jb>
References: <20250425115148.12815-1-hpausten@protonmail.com>
 <874iy7w58c.fsf@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <874iy7w58c.fsf@intel.com>
X-ClientProxiedBy: MW4PR04CA0321.namprd04.prod.outlook.com
 (2603:10b6:303:82::26) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM4PR11MB7759:EE_
X-MS-Office365-Filtering-Correlation-Id: b8d9f8b6-15d8-44d6-4d80-08dd87e5e2eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?kfbMQpKbempIiYM75Q3T8CHQh3RuMcpu2p7lBu2ldQAD78exG5id7MbTAf?=
 =?iso-8859-1?Q?HDz1H5HMvmwbvSndfxAf6WGSbeTyma8cuGy7Cyl+DQt5bAtFTf3EPwCDIU?=
 =?iso-8859-1?Q?OOVFmkXc9tw3WYbl3gzTWm0pO1CyNiBxpcnwod0P357G/pfR8e6WNh0Twf?=
 =?iso-8859-1?Q?RwTQiZBg5lY+m2Z6zABqpdGbJnJxZ5+lZS0+NZpXL7KS7eHQjz9JJ4RF09?=
 =?iso-8859-1?Q?t8qAIpIOLJGqfPjIQWoyBZ+Rrno5GIWJQWw5rpVatjpINkMC4gITCzI9ir?=
 =?iso-8859-1?Q?0q5+lyPzmLd5jDJOhhcqmNmZhWsphgyIkiS5tbeJUsWg3tCtku9gz8M8T3?=
 =?iso-8859-1?Q?kDDrvicPhCrAN6FWbCwtZTwtzq7Wufs6Gcn7jUta7tQiL3OaAtvy4o9Cz8?=
 =?iso-8859-1?Q?mCTRkgPJitx9KrnPok0LTe/P/meQJmR15FWi/DIOxE4DTXSLdTRlkgJs2m?=
 =?iso-8859-1?Q?KjHSYWThQ4mtA40/dBAk2FFO2aWQdXk3ntU9OUU4jl41fxrlfzj5hBBo9H?=
 =?iso-8859-1?Q?gEnIuyTd+W52H9lrWWECx0BX1j15InJ6sbuIcSNjeew/uxaQJWlwUBTVwI?=
 =?iso-8859-1?Q?EgQq4FWPaRPxyPj2z3NlPsKMKVNi+dFN2XeVdt3Y9K0Yg4JCGqTDNWZzKt?=
 =?iso-8859-1?Q?aEjzDI+6vHya9mVliLp/KyDU0KbEbbhJRgxqqKmHKcd43uDyuMVjEeqCm9?=
 =?iso-8859-1?Q?ZUgPES07oAEzK1vHhjttfstM/YkARrUn840d6PcYhy8t6gAQq4hfFMFxpX?=
 =?iso-8859-1?Q?xLMWfCsV6QpHWjIc9qD5DD20d4p4Qz1oJweX5Z7fpN5oegfkOGgONrUhf8?=
 =?iso-8859-1?Q?thybdsTb1KI73d9n1W4GXDdHsXnID+a/Ebi+Ojygzi1vdBkP3eeyE0uS3j?=
 =?iso-8859-1?Q?Ifo0NyO6ZBKd8pyvivaMe36/1RYEIVrNNY2YMjNhYAY+0irHazQ6IDAVZE?=
 =?iso-8859-1?Q?cnFl2RIyoOQxu+GDv7/yQsZtNPSOtAHPzAkxbdBbrmenQqgeJbRMqpOi8R?=
 =?iso-8859-1?Q?tA13UApxdWYvEyeaMQGc/AyjxyMsCTSbq/nk9ChEGa/XQYOnaEpkuDlzkK?=
 =?iso-8859-1?Q?4yuxehyLM9wJUlMytI9B4R9osLtzWyPZ2IAgUSLmAphYrOnra+Eh473xG+?=
 =?iso-8859-1?Q?DCKbDVpEk1nyQzm7/3KfFAED1RaeqjctclOebHuR85cHQPtSTloei6ur8N?=
 =?iso-8859-1?Q?6qbxTHLcZM9PT9GWBzfQfQXOEYFk1oqtTSkeBEn+ulGqw+5AkasegMJH33?=
 =?iso-8859-1?Q?h/4/nUjYsFkoUfx86F274kh8NsYMeZxiRpqA05UYQ3/rYC9KRiX2VWodJ4?=
 =?iso-8859-1?Q?Wq3as3f83PVFJaVtP4xVuuScimyhzXo0Q15HR2MovJ29KggYzoIp99u+Xf?=
 =?iso-8859-1?Q?IyuniK9ZWOwkq2XHtBQkfp480SBIXA7s1f3ZMvT60zgbso537VDqHldIAf?=
 =?iso-8859-1?Q?ebcMnGzAuuBwhwDM5QCwT0qOJACsbLDWtn4e/MulY17Io0/Z0D0Aq0YvFK?=
 =?iso-8859-1?Q?I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?C6WfiEzH7i9ioo8vsZ5FEMn8F9gclygwkGSvbHKZmrtc3Y+kOcWvAHmIWo?=
 =?iso-8859-1?Q?+/5mlfJhems7sq1ZePNiOtavHsHdnCBGNRicFRTxwHDYTsGcaks9X1S6tQ?=
 =?iso-8859-1?Q?kdMJbsy2C87EHN/OGDULuAzFeNUnTgfFsJjVwYSQyp2qQTJyBELCho5ulO?=
 =?iso-8859-1?Q?wcp9KTw7sgZf0rO5aLZLG9Z5zvTI1IfwG2POVoG+BZ9z/+N08O0+Rmd+he?=
 =?iso-8859-1?Q?FGkIdK5iAR+9PEfOlv94udrxLeoOZqTPB8AsRhf8cjGas6SFG3jm3D+ljG?=
 =?iso-8859-1?Q?HD7xyJUs1QgJVaRd3AW91qMvDlbdiZzMIEOzUrRq6LrawxnOBaJiDf2ecd?=
 =?iso-8859-1?Q?WfgpntKIHapt48k5FB9zOjbHNm0rXWGf41DRjQAILy5TaufVFWFXOskUQG?=
 =?iso-8859-1?Q?H4CUyGLMrErfLBC/FbHoWWN4Kk9+3j8JAF3XYy8OHwKLFrKJK2gZR2PJZn?=
 =?iso-8859-1?Q?lneiD67RD6zQnkwROQWfFhQyyYVh0igxY3Z/gz1P1Q7XADgtwaoZxUoUM2?=
 =?iso-8859-1?Q?6HivC4Fnj5cOxyOmofs0I0ZcUaivC3zK1HVuACFKoUtbmRC31onzuShsyv?=
 =?iso-8859-1?Q?y4kKWtucQzxY51BzVjZuP02G+YHbZZhHoVYLHs6HJOdfh7wILfve9RiUPa?=
 =?iso-8859-1?Q?ZViS9+cD16ektTdimk0WXvRuhLW/FUp+wQYtgr8J5hRfpO21FZZg2eePKs?=
 =?iso-8859-1?Q?fhc8e8+gFPGFBNzc1gn5zA6Xls3HYxMRugapfA6Sk5DUF7GeFUdMVcrJJ6?=
 =?iso-8859-1?Q?5vY1VWXnNbk0WiPUBTJgJkyuDOi7DwdoMmR2MYI+vb7rzFvVgIG/cvvjO7?=
 =?iso-8859-1?Q?+Yacq2n/EPmMW++H47jOxXmYaPCm2yUkCwxIE8GwvLeyPJSfXoff7TTrAM?=
 =?iso-8859-1?Q?tYlQeV9Gpr5uxqTy1w4+G18/G3aw3b14eOzNxzCOCxPokOGqIQcMiRYen8?=
 =?iso-8859-1?Q?ll1XHnVOmpbIj/cGmHReOpS0evOYXid+HqOKkWxsKeNw0S8Q+9gEsCKeQH?=
 =?iso-8859-1?Q?Bv4hXiDsMvdzGGI4ezNYpzKZpXuzVoiTYLj+DUggBguOcpjMjL2abANkwe?=
 =?iso-8859-1?Q?4MSQXjZt8nASAYoV1nO21+lXaJpZ1gRMjHF7pETM87hisiP8wd4it3zS0g?=
 =?iso-8859-1?Q?oN56uJOM8TUsWnXOD7Q/+U7lxoNz8puqbx/BN1IMwfMpADtFe/O42re/py?=
 =?iso-8859-1?Q?/gHKVUtP5AMcRLa275fRPj1A/FG3JNsCvh9mpGNCM1IkQDBpYenTvI1+xR?=
 =?iso-8859-1?Q?dpJnd839aK0U33GzdgAsEUXUGOX4+dChpGEFInfeBjjHyWa7m/1s5NESpo?=
 =?iso-8859-1?Q?MOOMhUn5BXrgTqZl0oqRlr3mF5N1e0/N5KA8WQ6oea3HWXfd+jjnJ79Fq/?=
 =?iso-8859-1?Q?7z5G7OmyK+MtbF68UH//hG4iNOAmiVWAL6VoUVbwE/K9mpTmf28hXskQ2Z?=
 =?iso-8859-1?Q?x7KojHV+ccjqeTeUxr++FaHKwhWT/TG9iGLkSwVK9CEWvOQg+MvGZa8EQ3?=
 =?iso-8859-1?Q?iRHhC1KeNdukyTY/jC6hpE6SSTg0l7O8DOkYVMQxSCLoFqEqS3cpaNlr67?=
 =?iso-8859-1?Q?YzUyiv+naFYSQwAD2qpmbvjtf2CL2TI37/LfSn8TMgHJjcndcyQqV+kYDh?=
 =?iso-8859-1?Q?aSfHH3/z268E2dYu+Ou82BJ/okm5KBUZFE2woLljE7GzYZUgkFO0S5cQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b8d9f8b6-15d8-44d6-4d80-08dd87e5e2eb
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2025 12:52:38.2737 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WPWjgN8wiRR6cKGRw1O55w+tCwK0gh8vm3pbZXYZw/2IJK7Kagi7AkbjEqDBVK8xFOywWVMqfnoVlHIWnIrS+0jp7cRgifcJhFJyEMuY/jw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7759
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

On Tue, Apr 29, 2025 at 02:56:51PM +0300, Jani Nikula wrote:
>On Fri, 25 Apr 2025, Harry Austen <hpausten@protonmail.com> wrote:
>> Fix Kconfig symbol dependency on KUNIT, which isn't actually required
>> for XE to be built-in. However, if KUNIT is enabled, it must be built-in
>> too.
>>
>> Also, allow DRM_XE_DISPLAY to be built-in. But only as long as DRM_I915
>> isn't, since that results in duplicate symbol errors.
>>
>> Fixes: 08987a8b6820 ("drm/xe: Fix build with KUNIT=m")
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Signed-off-by: Harry Austen <hpausten@protonmail.com>
>
>I didn't test this, but it makes sense to me.
>
>Acked-by: Jani Nikula <jani.nikula@intel.com>

humn... but the end result is very odd: from my current config with DRM_XE=m,
DRM_XE_DISPLAY=y, DRM_I915=m. I then select DRM_I915=y and it (silently)
set DRM_XE_DISPLAY=n. So this would now be forbidden with no warning:

	CONFIG_DRM_I915=y
	CONFIG_DRM_XE=m
	CONFIG_DRM_XE_DISPLAY=y

Considering some distros have DRM_I915 as builtin, I don't think
that is a good outcome: it would basically block using display in xe and
a "make olddefconfig" would break. I think we really need to start
spliting the module and move the conflicting symbols.

Lucas De Marchi
