Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1719F79D584
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 18:01:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 739B410E431;
	Tue, 12 Sep 2023 16:01:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D3FA10E431;
 Tue, 12 Sep 2023 16:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694534481; x=1726070481;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DjXSip8bPUvzwaZH99waTWwty9Ai0HuYm8yMcEpdapg=;
 b=NJQW3eMblPIFCqo+4scLdEUM/W/yIfeJhZZUX7WhDWMa6I6o4W5bFrT8
 8RsB4QMxED0EQf8QcFDG2pp7o/i2enwOCc7kTeJb950gJEVTZ7ppYkYeE
 lEETfMKzBfiwWgxBoe9qH3cbTeKCi6pP5gQ5MqHRTeB5mIrPlMV1uWqpk
 UG1xAfNCOcnMEvE95JjXckcu45XoNGUOGLL8A61/ThFft31R5YpdYz6mH
 Wu4TjJitGWiji9AAnYygocqjM3PP3VW3PfxibE9JUF3XRx0J23jdIrgZq
 qPC039MOqJ+5DjPaERvVcQgQHC+CD8CrLoHHmqYp4J2P8DJ9lWaOFAW2o w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="363449412"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="363449412"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 09:00:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="813873104"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="813873104"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 09:00:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 09:00:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 09:00:27 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 09:00:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C55MFV5klTrzg/rGuLEHru9EC+/7cbGM2CT9gHSXMdPIiOnHQDcBgH0BisK4UZkfWBJcYBVGCBuvyFWOArSrO7NhZXApmJUqgEjBTUwrLBnsIUhi6uZH73orO7nvTJU5/FS22A2CXOFe9waXlh2eSsmPN9ZLxSdMyHfKL8bwolTgAvNdipEcQ+qo2uFo6sR1CRd7/0hDDMftWjDl7J45ZNfUUtgFBW1T2/U3loB13nRtAVypE3A6qgm3uqoFJH838gLzPvG9hB9UrdjB8zqrV1NKlJ/pT/urTjQRvKSURrF3ZP6ohOyzBiMlBsGFangLimRkV1yPO+JKXwHBELGJXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zfbg1pB00aubqIupepGQ6o9vx/tJAquYV5fenngdSdc=;
 b=gz5KDassUWyBmymWkqNsJvh5DLxmHAlnK7YVSeb2HaH9GWvU99JxmPJMAv70zs0CxlYQnJI/M6L21oaFIZOnmxe0CE0t82svX2NCxPKv6LKTm79Kp/PegOgS788AHH7jIIQzPOneU7neSDHTzYjOrVTjlnHvZx7xkAI+0VxfFwyXO9sfnbcL/2mdNB2VbHjnEC1hua3xUXyi2LuErg4m27y4lnIpmsZwmIW+CxSX6wA2Um1joRbzB2fyMfBZz+ohtZtJU+7vCJMRG6xABJDcoabUZ4eZXMtppMYt/WRF+Rqqx585QYipp4sDq/yjEFNbvikDYUTwQhosdMdEC1DiOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW4PR11MB7161.namprd11.prod.outlook.com (2603:10b6:303:212::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.37; Tue, 12 Sep
 2023 16:00:25 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 16:00:25 +0000
Date: Tue, 12 Sep 2023 11:00:19 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <mm2u3rh2xxdi76tw3nfdyha3zuhcuotl66pkxeedtp5u5fmwom@2mgaua36zbzv>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
 <20230912044837.1672060-14-lucas.demarchi@intel.com>
 <20230912153254.GI2706891@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230912153254.GI2706891@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: SJ2PR07CA0011.namprd07.prod.outlook.com
 (2603:10b6:a03:505::20) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW4PR11MB7161:EE_
X-MS-Office365-Filtering-Correlation-Id: 0cf84629-9220-44f5-3a89-08dbb3a95ee7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5ekHuW1lR5hLI2w9ybqKxU12TzAeI7Ycx9UE3397zcCPMAa7ZFP25gdWcE120iNFdDX91P/IF0NdKEqCHhjeBqZ4SpPxwMq0TV+Ohq6UGYx3MoPyyU+1LNdS3u2xcZZrQa3SZfFUfPia7knNIlhodhBFtcwL8BG1dirDlrAQwNEnstcx/Lmw9FAULUXB/OzAdIlh4WKmGoagFsG+h/yE2bY3lT005vIQRo0dy6QbtBtJ/VAIKe51B6YY05AGN2Z1wrIjEAquHUmj8shLd4imO1bTtALm1igmyB6LCPuehWKlS10Yo/RNIpo5ClUXTCfbGeTR+TQPwdbhruTayw3dXeAt83x8xCTiyQ2HaCahFtEFF9pmHG3vOb0cSrWqNtS9EIeKNI9/YMctFueIYiN96ELTbzqcAE/a1Yy7gzoIrXjoWxFcO5VP78/rLM4hI2Rrvyetle+X2GOfyJN2DZS7vbWUMvEaQxXzHlQbK+sxE7fLn6nKNYmUSUV8bNloN8BwYLCCMTPAwG9fF9Vs6LtMLrSo9NlgT5mDQkfV6lIEzoUhGFULUU+33kkrb9R50np7
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(376002)(39860400002)(366004)(346002)(136003)(451199024)(1800799009)(186009)(6666004)(66946007)(66556008)(6636002)(66476007)(6506007)(6486002)(41300700001)(316002)(6512007)(9686003)(478600001)(26005)(8936002)(8676002)(450100002)(6862004)(4326008)(82960400001)(5660300002)(86362001)(2906002)(33716001)(38100700002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EZDwjdXb29MAfVf2xfPc9XyspNo7qHsGjO/CY6D2v9Nz5ZlNy9+YJDyPBkZk?=
 =?us-ascii?Q?o/F4UhNNmxOaIHL1hjPbn4bpR3td9bW0sfNET4ekssaMth0nsl/0McQ6THn4?=
 =?us-ascii?Q?eoWnJ+NOOGeg7ENz71olwI6rI1dPQbJiSg7sGvc4OzPlqfGOHcQoYSKT9r/B?=
 =?us-ascii?Q?czCQbESH//uzjhaXUO05bRI4H53+lkkugiVRALIgleWfryzIM+NP+18SMeUJ?=
 =?us-ascii?Q?SLMy+uyLpOPBCNGhJb/q2org7Pw1A/vd4OwKOK2Lk3Ynv5iy3wYSNKcqjXlq?=
 =?us-ascii?Q?Ya6cp205FE7NfLMUUL4s7Ys5Iyv6nMoPoHkpr+zqUi2/cdHIGeq1FerkqI+6?=
 =?us-ascii?Q?3IhtSlnSaPGWVbEUIJR1YbWuP2Kil2q6MXlwF57lJ5mcpfH+1E0v85aokw8p?=
 =?us-ascii?Q?pWK8+yoBzw1tRcEysf91+CEhmeNYbHuHjrTeo7G03hOFUZrE8ZnZCM7ttHJL?=
 =?us-ascii?Q?L+piqCFwTK6SPjq35XSU5MyCniYPk1bfkhAfUUlwjIZTosQqE5IIfLV5nAHC?=
 =?us-ascii?Q?e67KqBkNsWTlD6voCYWt6XkShU9ASh2Ag62Yj+xsgR4KJ6YjDpASNme6XVK9?=
 =?us-ascii?Q?iHgMUu+bI8L2sDXoT9eBqfaLPAYQjp3Y6ypQYjxi8vGpiYlBJcFCDwZ0CM2W?=
 =?us-ascii?Q?fuqDy4jnY24ftaFQc6xiQUBN74gwrr7H7+6mnpM2DH8fgNhTkeIYuwIUwA3x?=
 =?us-ascii?Q?btRTer5F5sU8WTfsxvrcq1uMpD28RpPUwGgYqE35fIEda+Go4effAZtJTcMu?=
 =?us-ascii?Q?LMNBN0S6uKrHCsGUcYdj3ubkXj8V5g2XrszcPE5Sq3mXYwgaIqYnwmE+YdQE?=
 =?us-ascii?Q?diheRLry67JqXKFF5oIednQwA2ULtBWopcPXK5qO73mzTXwz9rT6YGMbwqCr?=
 =?us-ascii?Q?ZbGPr8G3+WO+rQn0zZU7hJXScrzyFDLXDLeJK5fMPkZ5JSkjjYwtEaDS0tmn?=
 =?us-ascii?Q?Npuwp+4EwnSdsG8dKCKvQl+So5sMs4SlY+524wJOmPg+X5feN9+OfN/tcpnN?=
 =?us-ascii?Q?PPRWGmcOA+TrFghoaMqJTwaAT/rMJXpd6ecd400+Sr3OxDzv6sPBuX4sXtam?=
 =?us-ascii?Q?Py+Cka0/Lq7IgEGMEe7LhE0P3mGEvx6BqanK5/1kx5qOdAM+MhAJgsfLStnA?=
 =?us-ascii?Q?4aHlQPz//Nt+WksadzpYPFcOezO2QDUI7uMqp3ofxTJKxw8rvt/UAL0Rpw4z?=
 =?us-ascii?Q?4wcnTHPa1tBOmdpRda8kbQwXnSfpZZVGf8s5wHRw8+AXincIrnQGdoHdi1j5?=
 =?us-ascii?Q?jXfMeW11ewYWLInfM0WKzuXiDU0icz6ItapEVriCOghMB3HgXJyLQIe7NPRM?=
 =?us-ascii?Q?9M5vp6sJmd6g11RxofMwfr0ipVBnrUT15gYirAaTQcUQtqZ+jxYnnBB/CWKS?=
 =?us-ascii?Q?KNpAtGLjMsGRPBD6rdK7Ys9hFwFxjxgBfnZKVS5SSDSz78+zMBJ/GZV8chuy?=
 =?us-ascii?Q?Uvwo0DHHPeIuAMTPaKFbmTj7GrKygrocnXEbziutBw5vnzxThg2Jj9qsh4QP?=
 =?us-ascii?Q?3es+zTNOJnPuBYV6mMQDmfdWrPqMc3fOWN8j8tIkp++9fhjYFuwfEKyRCrg1?=
 =?us-ascii?Q?pdWQc+hg2KWKwcKf20OYlk/cT7ztnNY71BXZFdSE03BYRtiZHExA+BY3TSq+?=
 =?us-ascii?Q?Ag=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cf84629-9220-44f5-3a89-08dbb3a95ee7
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 16:00:25.1036 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9M4nDbrXZ5IkyI4EYyhtxa6g5puftkn3EYuD9rZDlvONuXFykOlCtZ+SoiL6+Os48FVf0PA/0RCX9Vqi4fI7tEtLOozwmSGuHebvUvHf2W4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7161
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 13/29] drm/i915/display: Fix style and
 conventions for DP AUX regs
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 12, 2023 at 08:32:54AM -0700, Matt Roper wrote:
>On Mon, Sep 11, 2023 at 09:48:21PM -0700, Lucas De Marchi wrote:
>> Fix some whitespace issues for register definitions and keep the defines
>> for DP_AUX_CH_CTL and DP_AUX_CH_DATA in the right place: together with
>> the bit definition.
>>
>> While at it add a TODO entry that those defines shouldn't be using an
>> implicit dev_priv.
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
>In most of our other register headers we try to indent the values to
>column 49.  It looks like a bunch of the definitions here are only
>indented to column 41.  Not sure if you want to change that for

I think I prefer to keep as is. I don't think we have any convention to
align on a certain column. It's rather about aligning to surrounding
definitions and make a best effort between making the line too long or
with too many line breaks.

>consistency or not.  Either way,
>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

thanks
Lucas De Marchi

>
>> ---
>>  .../gpu/drm/i915/display/intel_dp_aux_regs.h  | 72 +++++++++----------
>>  1 file changed, 35 insertions(+), 37 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
>> index 5185345277c7..4503d94115d7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
>> @@ -13,48 +13,28 @@
>>   * packet size supported is 20 bytes in each direction, hence the 5 fixed data
>>   * registers
>>   */
>> -#define _DPA_AUX_CH_CTL		(DISPLAY_MMIO_BASE(dev_priv) + 0x64010)
>> -#define _DPA_AUX_CH_DATA1	(DISPLAY_MMIO_BASE(dev_priv) + 0x64014)
>> -
>> -#define _DPB_AUX_CH_CTL		(DISPLAY_MMIO_BASE(dev_priv) + 0x64110)
>> -#define _DPB_AUX_CH_DATA1	(DISPLAY_MMIO_BASE(dev_priv) + 0x64114)
>> -
>> -#define DP_AUX_CH_CTL(aux_ch)	_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL)
>> -#define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
>> -
>> -#define _XELPDP_USBC1_AUX_CH_CTL	0x16F210
>> -#define _XELPDP_USBC2_AUX_CH_CTL	0x16F410
>> -#define _XELPDP_USBC3_AUX_CH_CTL	0x16F610
>> -#define _XELPDP_USBC4_AUX_CH_CTL	0x16F810
>> -
>> -#define XELPDP_DP_AUX_CH_CTL(aux_ch)		_MMIO(_PICK(aux_ch, \
>> -						       _DPA_AUX_CH_CTL, \
>> -						       _DPB_AUX_CH_CTL, \
>> -						       0, /* port/aux_ch C is non-existent */ \
>> -						       _XELPDP_USBC1_AUX_CH_CTL, \
>> -						       _XELPDP_USBC2_AUX_CH_CTL, \
>> -						       _XELPDP_USBC3_AUX_CH_CTL, \
>> -						       _XELPDP_USBC4_AUX_CH_CTL))
>> -
>> -#define _XELPDP_USBC1_AUX_CH_DATA1      0x16F214
>> -#define _XELPDP_USBC2_AUX_CH_DATA1      0x16F414
>> -#define _XELPDP_USBC3_AUX_CH_DATA1      0x16F614
>> -#define _XELPDP_USBC4_AUX_CH_DATA1      0x16F814
>> -
>> -#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
>> -						       _DPA_AUX_CH_DATA1, \
>> -						       _DPB_AUX_CH_DATA1, \
>> -						       0, /* port/aux_ch C is non-existent */ \
>> -						       _XELPDP_USBC1_AUX_CH_DATA1, \
>> -						       _XELPDP_USBC2_AUX_CH_DATA1, \
>> -						       _XELPDP_USBC3_AUX_CH_DATA1, \
>> -						       _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
>>
>> +/* TODO: Remove implicit dev_priv */
>> +#define _DPA_AUX_CH_CTL			(DISPLAY_MMIO_BASE(dev_priv) + 0x64010)
>> +#define _DPB_AUX_CH_CTL			(DISPLAY_MMIO_BASE(dev_priv) + 0x64110)
>> +#define _XELPDP_USBC1_AUX_CH_CTL	0x16f210
>> +#define _XELPDP_USBC2_AUX_CH_CTL	0x16f410
>> +#define _XELPDP_USBC3_AUX_CH_CTL	0x16f610
>> +#define _XELPDP_USBC4_AUX_CH_CTL	0x16f810
>> +#define DP_AUX_CH_CTL(aux_ch)		_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL,	\
>> +						   _DPB_AUX_CH_CTL)
>> +#define XELPDP_DP_AUX_CH_CTL(aux_ch)	_MMIO(_PICK(aux_ch, \
>> +						    _DPA_AUX_CH_CTL, \
>> +						    _DPB_AUX_CH_CTL, \
>> +						    0, /* port/aux_ch C is non-existent */ \
>> +						    _XELPDP_USBC1_AUX_CH_CTL, \
>> +						    _XELPDP_USBC2_AUX_CH_CTL, \
>> +						    _XELPDP_USBC3_AUX_CH_CTL, \
>> +						    _XELPDP_USBC4_AUX_CH_CTL))
>>  #define   DP_AUX_CH_CTL_SEND_BUSY		REG_BIT(31)
>>  #define   DP_AUX_CH_CTL_DONE			REG_BIT(30)
>>  #define   DP_AUX_CH_CTL_INTERRUPT		REG_BIT(29)
>>  #define   DP_AUX_CH_CTL_TIME_OUT_ERROR		REG_BIT(28)
>> -
>>  #define   DP_AUX_CH_CTL_TIME_OUT_MASK		REG_GENMASK(27, 26)
>>  #define   DP_AUX_CH_CTL_TIME_OUT_400us		REG_FIELD_PREP(DP_AUX_CH_CTL_TIME_OUT_MASK, 0)
>>  #define   DP_AUX_CH_CTL_TIME_OUT_600us		REG_FIELD_PREP(DP_AUX_CH_CTL_TIME_OUT_MASK, 1)
>> @@ -83,4 +63,22 @@
>>  #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK	REG_GENMASK(4, 0) /* skl+ */
>>  #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL(c)	REG_FIELD_PREP(DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK, (c) - 1)
>>
>> +/* TODO: Remove implicit dev_priv */
>> +#define _DPA_AUX_CH_DATA1		(DISPLAY_MMIO_BASE(dev_priv) + 0x64014)
>> +#define _DPB_AUX_CH_DATA1		(DISPLAY_MMIO_BASE(dev_priv) + 0x64114)
>> +#define _XELPDP_USBC1_AUX_CH_DATA1	0x16f214
>> +#define _XELPDP_USBC2_AUX_CH_DATA1	0x16f414
>> +#define _XELPDP_USBC3_AUX_CH_DATA1	0x16f614
>> +#define _XELPDP_USBC4_AUX_CH_DATA1	0x16f814
>> +#define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1,	\
>> +						    _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
>> +#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
>> +							    _DPA_AUX_CH_DATA1, \
>> +							    _DPB_AUX_CH_DATA1, \
>> +							    0, /* port/aux_ch C is non-existent */ \
>> +							    _XELPDP_USBC1_AUX_CH_DATA1, \
>> +							    _XELPDP_USBC2_AUX_CH_DATA1, \
>> +							    _XELPDP_USBC3_AUX_CH_DATA1, \
>> +							    _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
>> +
>>  #endif /* __INTEL_DP_AUX_REGS_H__ */
>> --
>> 2.40.1
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
