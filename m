Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6491D686CD7
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 18:26:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83DE210E43A;
	Wed,  1 Feb 2023 17:26:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FB0810E439
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 17:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675272407; x=1706808407;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=RN9dO3wA49nSl67k/JaQbN5Qeg2kqrbOtvvxq/b+c1M=;
 b=Tk5BGd2FigB6u7Ng4SCD0L1dTNfd6oYi4Qytzvfw9GV3ezoVwX1yAhis
 3TE6tg+z0NcQwGz9H3X/eXh00e3BsWgQUqwSVMqeDLqsVJwWbonClWVJR
 mn1RlRaxDY6CP50UVWfLJnh6JjKjd+bWRkTHwhVNaPAdeOnoxtSdA863+
 lWKwXFEeqYLjdTvK28fQ+vfZQ4HCUpdvv0BGg4q+qsTdHuEvA9yJtk4tH
 380JUidpfZ+jACjnlRkbp8VgpKNREvwpuc+B/CUiRAL6Yq5dMQTmJ1fF5
 rDVx8vFhK6wjdLdmhD2VQ9ifjKuNRKNkukocnkko6xpGPIqm3f5hPuisS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="329500435"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="329500435"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 09:26:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="658403971"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="658403971"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 01 Feb 2023 09:26:34 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 1 Feb 2023 09:26:34 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 1 Feb 2023 09:26:34 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 1 Feb 2023 09:26:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gGwJX/R+ejQs2hBWTOslrcJmChFjUANJdkqY9+bJfbnqDDlwn9vRI1IUc7ugIgvLNd0lO74d5O6L/XiTiM6TlktT9LpaDzjNGH3ahl2q3X6wmztZHkYWArplgTWjC4ls8f5dcrbsUGBshErDtUcApvqUpCKkRPI8uYUD2uAYPqqODCvlJZaNUS52XM8cBRsb7OJrlWJwrXS0e2vHhq2bn0nInsEfZjjys6KYMno2J9g+0r+vQKfnCIWjpE01qtOiqObHLApJ1At6Xi/UdExcffM/Kw0Cn/Y55RsTFsPXz5JZck/0VXaJgP+fmDAcPKcy6b7S9PGv0QvqHSM97kYq0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jfcue8QjS+ygDirRX08gl6cIitH+al30LL6gwcr09vY=;
 b=YNM6ZVog0HcyBPRNXpfnaijkyWaMZLaEU0fqkVd6lAiey6S3yf3Y0bm1UZqJSl4Znl2DaK3hedhdR0Ll91lU9h1tLBz8BlK9mvKp8gF3IgOmFZxTyjRSTmZCGDQGTGigxrIFeJ6subpjtyauAgfWzCAvsBo0y6MIsydgalDm5QToWGHLBjBafFsZGauf6iMMZ8hB/NwKfrL8mjmpMOi/r7ug+AoojI4963BWnYVvX2kuPhTVBV+S8zBXx1ng40Bb3vCul+UHxlerRVRLZCUef30TP1gXI75JMPzk5sv00/P2YaZivjskb8EWzKyo86HpACvfWZLtKDBsvwY30GNiNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH0PR11MB5643.namprd11.prod.outlook.com (2603:10b6:510:d5::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.38; Wed, 1 Feb
 2023 17:26:32 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a%6]) with mapi id 15.20.6043.038; Wed, 1 Feb 2023
 17:26:32 +0000
Date: Wed, 1 Feb 2023 09:26:29 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20230201172629.mfhwzwxcaiu7ylze@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20230131191542.1695398-1-lucas.demarchi@intel.com>
 <20230131191542.1695398-2-lucas.demarchi@intel.com>
 <878rhh3dvs.fsf@intel.com> <Y9pWkvjdZUqre5Pk@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y9pWkvjdZUqre5Pk@intel.com>
X-ClientProxiedBy: BYAPR05CA0020.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::33) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH0PR11MB5643:EE_
X-MS-Office365-Filtering-Correlation-Id: 8091b313-8595-461c-3f54-08db047975ce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tiY4Etr0CnMYp1YS33BkFgwXzJgiUZuYEx5RKIAmB3UqZXWPv0OKRa/xc4o9qlRUKwjKsMD06QU/5AjWIZr2cp5bvBV38mKQDBddeDrqgCvYJSD7+OcXaHtiQPJOhYpqTgQqli06r3HVkltTvI1fURMYlz/zhRjDaiK3GynfJh9fuuxltomVaPlrhHzwFYdLS2T9zr6B6CHTNOI4S2SBm3S72ELnod5KrN11oiPKcniSCudy/9G4OvTLjCH1KcldjoKJvrsTbYA2F9zkaOQX6/Cu3QkuR+qFH05QLxpkmE2Cu8ZDEBqRflXgxCnpuA3S7fnXuMuGaY2qYQpcxIAzqy/k/LWMx73U9k8cJJq45OA8BfRxn6Jtg19/KF/hRY7dHmOMe4jpmftNa/kHsddT8mfjJdmpX7h2uzHOVMq/1NpxdobtmpU/IjChVB8J7pEWuBFgeilKUWVXYJeBj0+zbPCVIKf3Zl7QLgxq0oJtaByzJG9uDKThrdfYqZxkjm82qbOxqcuZX5XTetk8z/v75lMXiW8ruw00Zw0beGCToMNNbFp4TDfcE/ggZa+gTGu+JBkAsYV0Sl6DXNWlgWzS0+PX9eWR7TV81JCmRCwXXxuxnKU5BbxWgS6Ip4yENdleWX4PXan2rO2jDCd6Blw+Pg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(376002)(136003)(366004)(396003)(39860400002)(346002)(451199018)(6486002)(66476007)(4326008)(9686003)(2906002)(6916009)(1076003)(8676002)(478600001)(26005)(66556008)(186003)(66946007)(8936002)(41300700001)(6666004)(66574015)(54906003)(5660300002)(316002)(33716001)(38100700002)(82960400001)(6512007)(83380400001)(6506007)(86362001)(66899018);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?9Vi/+eW7Wyx1e1ATNLKKVpn43D52/SQJFI3I9gFZXIuc4CUqzB5/Woo7ky?=
 =?iso-8859-1?Q?tkg3p6LyxgGPF2ioq3z0kdYofVJ4KbsSXkKF8Il/T53S74XvCw8Rmy5isS?=
 =?iso-8859-1?Q?TwAntyqPqziH3fMPnTYv3KxeJlCfo/IUdR8vUykmw4cpbNLC51tsrw9YNT?=
 =?iso-8859-1?Q?wsURMF7XTRs4pvyFNCM6zv7v66YXUor7Pu05RGykx8xEerVDk3c6NX3pNw?=
 =?iso-8859-1?Q?hCBAxlqjYmpbfZQT72hLe3hI40qhWkjaIjC5le3Uu//cQK48wb+uGcOJ/E?=
 =?iso-8859-1?Q?erPg8NTbqTPBA61ZE6Eqx8reSdlAy3bzgEFd48B50ghy+Dxb+RcRlCXw6y?=
 =?iso-8859-1?Q?6xNoDaAKCf285agvy7LpQPvcEFN4ywsLiM5Wk1a1f51Dk1NSfrq0hT+Jdq?=
 =?iso-8859-1?Q?OC5IQKBYSBepkD6VNnuhHJU9P+w6Xs+fiRrpBcrvhD4tG9iSIBZztU5OkL?=
 =?iso-8859-1?Q?90QJaUohU0lVVP1Sln2mcyvDkQv8fZYeBgEIMKaJJM6Kt5v4xNO08nby7u?=
 =?iso-8859-1?Q?QygpjiQK0pcPPKrGevTgbBIzwumLrn9VR9CMur8Y3zANDOR80zCEhLX6Sc?=
 =?iso-8859-1?Q?x13vyFkNp0jXyOX8SXwNQu3pzx3Rc5pof16aea7BsfvBYjnNIddyP+1cKC?=
 =?iso-8859-1?Q?gLoROQeIwnOLNHYAJLM+SEtVWtO1SWZYq3e3GcbeU5xQDRfn99vM6C5ltw?=
 =?iso-8859-1?Q?mRyjJzHHt0vlsCXNZztkaJZXSo0iOV+OmlKkAYILt8gVJNzUum6rRJqDJp?=
 =?iso-8859-1?Q?d+LTiYsmIsxaCc2eb1RED2lGWVAd4/P5Xvvzpd7lJSkGEEK8o9rg/Vd6ec?=
 =?iso-8859-1?Q?GEDnqciJqtyhJN58ZbP/qvs3FEpFe2F5Y0bWoKVmmyg5MyIFXr33WGLGHy?=
 =?iso-8859-1?Q?Azq97soBEm7vWiinnron9Oe62ISnHwXi5IFecRhVquxC0bgMbq2TyZB7a1?=
 =?iso-8859-1?Q?/+tPWcutyRtnY5eRygQGZwQXtWDqOO9WC3cSxFtDJYSMy2WnuUPsBrgKnV?=
 =?iso-8859-1?Q?yMXhAqfHarozfm5HydElTN3D5zmD0An6QVDp1A6j3PaKD14aFiO83VUH7O?=
 =?iso-8859-1?Q?AZqVO/7HOeYMTKO3Jda3Uo602WyOksyO+EV+oLWda+62ibpf+LFWOrdRcq?=
 =?iso-8859-1?Q?fU1755/4kiLZd+BQHvWZ1/OG9Cnst63J8NBCOKRbzIRSPCpIXM2pBUxxx1?=
 =?iso-8859-1?Q?w97sRw7viS93phLfJpfAt0vgB0GEeLiuHlBEMDkmjCqYz5KfyqsSli2aF2?=
 =?iso-8859-1?Q?q9EhOCoFnXGgqtmkkOFvPR0yok2pBbuWlfeVpNkxbdKjmGen4U5FPPzyb/?=
 =?iso-8859-1?Q?1qrdtRWKRxRHGFOI1jbgpgU3xxGS3KPEFfPYzu+dTHpyBk7Cp7ut59yD3G?=
 =?iso-8859-1?Q?owIAybYv1T5aDzejxpkzwabDZugbLYU3EWiUkkmUQUvKmienJW+w0Zc2/3?=
 =?iso-8859-1?Q?aFdblzJYqqxubyBgDwHs8RMp/U6Dv6IrmAkN8Mp4t7O4RTudU7pMsZgBiF?=
 =?iso-8859-1?Q?79nPEWpmzMRyJlNL2kIMitgCKrma4pEZNMJP20fu+bnOU0R0xGkAOpi7aB?=
 =?iso-8859-1?Q?6qplFG1mDzdmQLLDwk6yT16dQkper+cmN/dyHmg8HzFgqNq3eAWE6pK+oI?=
 =?iso-8859-1?Q?JrTZQ46nqEtRthIl0qpdmweGVK6k3WNAsEWTEPd5ph6uHoZ9/MzDfaqQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8091b313-8595-461c-3f54-08db047975ce
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Feb 2023 17:26:31.9092 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iYCQJ70Rx5VxKlV2jyrAJwL+br/QbIE8NPMvdv6i8UeNbheJ6xm6YSu9zmISquBEfHdquOHhrPEFD/zGKMcUj4zyKQq7C6a2zsnfpAlqjdY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5643
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Move common mmio base out of
 private macros
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 01, 2023 at 02:09:54PM +0200, Ville Syrjälä wrote:
>On Wed, Feb 01, 2023 at 11:59:19AM +0200, Jani Nikula wrote:
>> On Tue, 31 Jan 2023, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> > Instead of using the common DISPLAY_MMIO_BASE(dev_priv) in all single
>> > macros, only use them in the macros that are to be used outside the
>> > header. This reduces the use of the implicit dev_priv, making it easier
>> > to remove it later.
>> >
>> > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/i915_reg.h | 73 ++++++++++++++++++---------------
>> >  1 file changed, 39 insertions(+), 34 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> > index 943db8ec63f8..1cde3bcb9c88 100644
>> > --- a/drivers/gpu/drm/i915/i915_reg.h
>> > +++ b/drivers/gpu/drm/i915/i915_reg.h
>> > @@ -1182,9 +1182,9 @@
>> >  #define PM_VEBOX_CS_ERROR_INTERRUPT		(1 << 12) /* hsw+ */
>> >  #define PM_VEBOX_USER_INTERRUPT			(1 << 10) /* hsw+ */
>> >
>> > -#define GT_PARITY_ERROR(dev_priv) \
>> > +#define GT_PARITY_ERROR(__i915) \
>> >  	(GT_RENDER_L3_PARITY_ERROR_INTERRUPT | \
>> > -	 (IS_HASWELL(dev_priv) ? GT_RENDER_L3_PARITY_ERROR_INTERRUPT_S1 : 0))
>> > +	 (IS_HASWELL(__i915) ? GT_RENDER_L3_PARITY_ERROR_INTERRUPT_S1 : 0))
>>
>> Unrelated change.
>>
>> >
>> >  /* These are all the "old" interrupts */
>> >  #define ILK_BSD_USER_INTERRUPT				(1 << 5)
>> > @@ -1403,10 +1403,11 @@
>> >  /*
>> >   * Clock control & power management
>> >   */
>> > -#define _DPLL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x6014)
>> > -#define _DPLL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x6018)
>> > -#define _CHV_DPLL_C (DISPLAY_MMIO_BASE(dev_priv) + 0x6030)
>> > -#define DPLL(pipe) _MMIO_PIPE3((pipe), _DPLL_A, _DPLL_B, _CHV_DPLL_C)
>> > +#define _DPLL_A		0x6014
>> > +#define _DPLL_B		0x6018
>> > +#define _CHV_DPLL_C	0x6030
>> > +#define DPLL(pipe) _MMIO(DISPLAY_MMIO_BASE(dev_priv) + \
>> > +			 _PIPE3((pipe), _DPLL_A, _DPLL_B, _CHV_DPLL_C))
>> >
>> >  #define VGA0	_MMIO(0x6000)
>> >  #define VGA1	_MMIO(0x6004)
>> > @@ -1502,10 +1503,11 @@
>> >  #define   SDVO_MULTIPLIER_SHIFT_HIRES		4
>> >  #define   SDVO_MULTIPLIER_SHIFT_VGA		0
>> >
>> > -#define _DPLL_A_MD (DISPLAY_MMIO_BASE(dev_priv) + 0x601c)
>> > -#define _DPLL_B_MD (DISPLAY_MMIO_BASE(dev_priv) + 0x6020)
>> > -#define _CHV_DPLL_C_MD (DISPLAY_MMIO_BASE(dev_priv) + 0x603c)
>> > -#define DPLL_MD(pipe) _MMIO_PIPE3((pipe), _DPLL_A_MD, _DPLL_B_MD, _CHV_DPLL_C_MD)
>> > +#define _DPLL_A_MD				0x601c
>> > +#define _DPLL_B_MD				0x6020
>> > +#define _CHV_DPLL_C_MD				0x603c
>> > +#define DPLL_MD(pipe) _MMIO(DISPLAY_MMIO_BASE(dev_priv) + \
>> > +			    _PIPE3((pipe), _DPLL_A_MD, _DPLL_B_MD, _CHV_DPLL_C_MD))
>> >
>> >  /*
>> >   * UDI pixel divider, controlling how many pixels are stuffed into a packet.
>> > @@ -3323,42 +3325,45 @@
>> >   * is 20 bytes in each direction, hence the 5 fixed
>> >   * data registers
>> >   */
>> > -#define _DPA_AUX_CH_CTL		(DISPLAY_MMIO_BASE(dev_priv) + 0x64010)
>> > -#define _DPA_AUX_CH_DATA1	(DISPLAY_MMIO_BASE(dev_priv) + 0x64014)
>> > -
>> > -#define _DPB_AUX_CH_CTL		(DISPLAY_MMIO_BASE(dev_priv) + 0x64110)
>> > -#define _DPB_AUX_CH_DATA1	(DISPLAY_MMIO_BASE(dev_priv) + 0x64114)
>> > -
>> > -#define DP_AUX_CH_CTL(aux_ch)	_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL)
>> > -#define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
>> > +#define _DPA_AUX_CH_CTL		0x64010
>> > +#define _DPA_AUX_CH_DATA1	0x64014
>> > +#define _DPB_AUX_CH_CTL		0x64110
>> > +#define _DPB_AUX_CH_DATA1	0x64114
>> > +#define DP_AUX_CH_CTL(aux_ch)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + \
>> > +				      _PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL))
>> > +#define DP_AUX_CH_DATA(aux_ch, i)		\
>> > +	_MMIO(DISPLAY_MMIO_BASE(dev_priv) +	\
>> > +	      _PORT(aux_ch, _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
>> >
>> >  #define _XELPDP_USBC1_AUX_CH_CTL	0x16F210
>> >  #define _XELPDP_USBC2_AUX_CH_CTL	0x16F410
>> >  #define _XELPDP_USBC3_AUX_CH_CTL	0x16F610
>> >  #define _XELPDP_USBC4_AUX_CH_CTL	0x16F810
>> >
>> > -#define XELPDP_DP_AUX_CH_CTL(aux_ch)		_MMIO(_PICK(aux_ch, \
>> > -						       _DPA_AUX_CH_CTL, \
>> > -						       _DPB_AUX_CH_CTL, \
>> > -						       0, /* port/aux_ch C is non-existent */ \
>> > -						       _XELPDP_USBC1_AUX_CH_CTL, \
>> > -						       _XELPDP_USBC2_AUX_CH_CTL, \
>> > -						       _XELPDP_USBC3_AUX_CH_CTL, \
>> > -						       _XELPDP_USBC4_AUX_CH_CTL))
>> > +#define XELPDP_DP_AUX_CH_CTL(aux_ch)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + \
>>
>> Note that only VLV and CHV have DISPLAY_MMIO_BASE() != 0.
>>
>> This is an XELPDP specific macro. Just drop the DISPLAY_MMIO_BASE() part
>> altogether, and you've removed an implicit dev_priv. Yay.
>>
>> This also makes me think we should probably add VLV/CHV specific
>> DP_AUX_CH_CTL and DP_AUX_CH_DATA macros that just add VLV_DISPLAY_BASE
>> directly, and use that to ditch the implicit dev_priv there too. This
>> approach doesn't work for everything, but the aux channel stuff is both
>> fairly limited use and already has if ladders to pick the
>> registers. Handling VLV/CHV separately is not a big deal.
>>
>> (DPLL on the other hand seems much harder to deal that way.)
>
>Most of the DPLL code should be have vlv/chv vs. rest specific
>codepaths. A quick scan says readout is perhaps the only exception.

and then remove display.mmio_offset since vlv/chv are the only ones
using it?

Lucas De Marchi
