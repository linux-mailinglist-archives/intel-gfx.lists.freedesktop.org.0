Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAA03CFC50
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 16:31:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B09A6E408;
	Tue, 20 Jul 2021 14:31:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 331EF6E408
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 14:31:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="272361454"
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="272361454"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 07:31:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="462065367"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 20 Jul 2021 07:31:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 20 Jul 2021 07:31:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 20 Jul 2021 07:31:00 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 20 Jul 2021 07:31:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X3n2WBxxWpd3ggHu2QFP5NQW8tkbuLEyVczqIqxXQK5d5/oCB4Eiz92GLYIr9qIv67TfvqWD1frhx9W++l4n2jdl1VtDct5u7+JlXMT0N55f56C53ead5bCqRiefYiXrvTZqDA9tip8XHmEChC7liyUdiw3v/pgyORv/sR9ar2UR7F3oKzMLAhHGRLNsiIqwp8He1yuvpZuBpGu7cs5A/J653uylNaprevf7+k4OIPKgVxyyfrEzC97r9X2MzMJEsd+t46uN8AOMZlmgtyoBpqIrmPZKWG3PUqRHSEAJW/nTksuP7GZMvkRM9A0kuAGJJ/JgyfC/4EHdsbvkQngd8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pr7o0EKksD00yKZOLMQFzJiyVZE1WcJyazNNhZQj9/Y=;
 b=k06c5A8ThibELMfsIImWNjZshSbIAtEnb0xMMpT/6NZTrvXqwetsSOx2HAhg/SD9RtiK2cI8RpGrJzroOBg7wtK1ZxlJILTZWBKQRpfzVOmGwk3K+Q8vQZvhpuELiknqmHXufrZzJk3juRBA60SDgeQYiQwhWcicWiCp5MMhmQMLL2FuCv9WBRHfeRdk+uEy8EMAF44FTI3LrRBm6q5yo0mxlkp4zAIDvIvcSZAm/La8uD8EaiO+IhjI5kmCSZfmLwMpMdzZVNpnP0/l0ceMzZOAma+T4zJJzmXhL4WAZ8V9vjxOaQeyZqeFCyorTFkFj6APcgEn0EudVbjbGOc/nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pr7o0EKksD00yKZOLMQFzJiyVZE1WcJyazNNhZQj9/Y=;
 b=m+P4ctrjP6XXpxii5QPAo5ZF4CQeHxafA0fT6i736K6ckjNVu7y7tjs8B+9Q9Qi3A6KwqV5J96V1PxoBf1lX0tvLDQ87TCMPiD3+w7g0RQZCW1sBuM737ujS1l00ybD9sqoit63h8o5DCOgz31DwqQtGQon8O5j9w4ymIIMytQs=
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5617.namprd11.prod.outlook.com (2603:10b6:5:35c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21; Tue, 20 Jul
 2021 14:30:57 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::396d:8a2a:b789:55b7]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::396d:8a2a:b789:55b7%5]) with mapi id 15.20.4331.034; Tue, 20 Jul 2021
 14:30:57 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 5/5] drm/i915: Get proper min cdclk if vDSC enabled
Thread-Index: AQHXfG4Hj7cjCMYlnUuQ3/deXTVUi6tLsw8AgAAugbA=
Date: Tue, 20 Jul 2021 14:30:57 +0000
Message-ID: <CO6PR11MB5651A3EF71940549177F4D2FA3E29@CO6PR11MB5651.namprd11.prod.outlook.com>
References: <20210719072222.13369-1-shawn.c.lee@intel.com>
 <20210719072222.13369-6-shawn.c.lee@intel.com>
 <8ce6abcb8840407c87c3856dcb021e72@intel.com>
In-Reply-To: <8ce6abcb8840407c87c3856dcb021e72@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f227694a-cd56-4d38-9ad9-08d94b8afd3c
x-ms-traffictypediagnostic: CO6PR11MB5617:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB561750ECDC988B31F72DAD74A3E29@CO6PR11MB5617.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PTfMhG7yQYZgqVj/JQmoFvAKkBhCKG+7qI1nz5OCBr1Hn4+d3U8SbSjpSWBlJNMkPT1cHGy8M97p6YA1GD7xUjJ1z1Xkt8K6awZR1zkEkZ+fbMUuGjGLBlzvU23ppVJm3sVZF2yuUG9MSovTz9Qkxh2OCvpbh5pCt6iMCzUOwlR2KlqU0Ws/ZJ/yowUJTZ5CU6ofIUABdW5xv93ewf0DYnZQ3JbWzUcmjDj0O+AaBRS3FXhBs+Jqqq/Qfg2Y1flMdqh6FFDMch8Il5/++WqVn0UGbjN2ZFIPI1pQhtVFVAjSkmMKHXVtNhKGFr1qvItWNNHoZz4g/rJAAG1YVHjs9WvZzXtVYtT2JaErz0Cl9d8+57M5/gTR7Ilf1orNJx/OxbBOr1ngAKMTTxbSgqi1mZYbxWvPmvF6WUBulVIdZ9SaCbmN3/fQvZ2Uex/CHrqZ81u658bqieDMtchcYdKxYk+nrZzeNTxXyLRPRM+RYqgb2wlup/ONWu9cqzEL+MZ8eiUo2Z+WCO/AfJHprrBFXMjLTypHxNtdrGdqdzq1599lP+MZ9JNAJH55jo4b2LGRkVEIlf/5DYcklsZYGBnA5yY/5+S/8+xddywNvuvoNQRoJkd5zbj9dy7Y4G33IaRzo5X8tIzih0/gzqWBxRz6XE+hzyPafk/wlGZkQuXCFaq4f5rep5TKbzrap8GlEKGRCKtyWGxldOA6digBzYSLjA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5651.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(478600001)(54906003)(316002)(2906002)(5660300002)(110136005)(52536014)(26005)(55016002)(66556008)(66946007)(64756008)(33656002)(66476007)(66446008)(86362001)(6506007)(76116006)(8936002)(55236004)(7696005)(8796002)(8676002)(83380400001)(4326008)(38100700002)(122000001)(9686003)(71200400001)(186003)(38070700004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5SgPt/zhSZ/E8nVcxsXZg8ut2uL7Bi/XHIc0ZCdqljdkIWFdYGnISBGOmADm?=
 =?us-ascii?Q?moKMjZBbwXIdP2luA2YJgZMTCF6z8R1qSRNAxhqh9ryyiKTqQ/eiskSdnFJB?=
 =?us-ascii?Q?GIdfovtJXcPh6BqpvHtkM3dT4TsjqsHa26bEmG+fX+oEJlndTC4P5F5rkYi5?=
 =?us-ascii?Q?RE3xtLoSfGPKBDkiSpWuO3jcl/eVrS1z2ioBj3H53Ne4Qdw0DinFHc5NwwVf?=
 =?us-ascii?Q?+oNJndUaizmY+0qc0pisvg5ARdsiUvSnG/rDL2vFpX8SmFGyxaZI20ZpNz2j?=
 =?us-ascii?Q?o6JancQD2oeZmoPjACAF5LtPPSC0TKikA2DzcPV+D+pcYoSbXxle44DozReG?=
 =?us-ascii?Q?VXuDzfOOJzcDI2C+LY64JoszbFyqLOmnScUAKnx7BUn/m+ztpjCzb33ncgmq?=
 =?us-ascii?Q?RIbwtnQwUz7yLODtSn0+ikprx80nTXt+fqIDwxv/IKuWYZkqukON3weKS98k?=
 =?us-ascii?Q?2g7CAWfMe4dPS8GWeAbYJaAuPb2uiTOrNnOpIqcA4TMzgrujcHHoyRi7CPLU?=
 =?us-ascii?Q?RB4nCng2fsmp6AcU+qYq792EpPQ6wuXBFmCW/N2bmHUfwgbt+YKzsd/Yha3s?=
 =?us-ascii?Q?B0FWZYQffkB/Nuc1VPU5m2D3MUxnRwwqe9ij+TV1sOsH1IXSm7TFa4En4ufi?=
 =?us-ascii?Q?elvXeZiUF8YyXCpObrhNyNBpW0BwvFCfAKXAixzgpodgrUWPV01Fxq9i4om2?=
 =?us-ascii?Q?Ldcozn03wY0NNGCgOlFWnQEFXar4dl5Q0kFFWwJSVMSoT55EQfL4TBqjZITW?=
 =?us-ascii?Q?DHv53WPOjC9KUcZVKnN23a4nLVqWCl5GIN1vAOMLwFN3Rv99JZG4+wRR2OqX?=
 =?us-ascii?Q?JpNWJMHxcSxH30y8MYH7CemfMdZMjxXnmCEiKxk4M0xytQLTNKbUlNWgdVQ0?=
 =?us-ascii?Q?UkJyMJD/b+sAWow9xOD8WiPb/xsA0PdHNGOPZ0RSK/2VIGerdGzXiBWOBxG/?=
 =?us-ascii?Q?WWI2LRUAJaX5HD6b8fmSXro6QhKzMo/R7p90RnGNW0BAG8HgN1FF8QNizRvV?=
 =?us-ascii?Q?374i0CZHI5xWRPlbu2rRkMKxHObPDAVJCd/yYb8IHjD+JfBLoTzd2vLs8Jp1?=
 =?us-ascii?Q?B5LVSzbvkAr7BA2LLgq7UdKFwYjfiuE8Maj9iJJo3oXRYdW64gorihAEXNoL?=
 =?us-ascii?Q?2irEJnMON5UZ4HboVaHLEJac8ItVYi32t7amNhDUWVVzrxjgtozDsGyxGl3G?=
 =?us-ascii?Q?tbZrlD16xqw8vDpOzCiiqGII54o7+oyUys4LM8nKqyC5DttMA/GcYXAINBpP?=
 =?us-ascii?Q?NREkDPmZ9MuIu70b1aQBR5UTv9WyMqxCFWQSAGLUDX5x+2ugtvw06euv5Ak3?=
 =?us-ascii?Q?/BYUjjzzB/TJZt4FFyKq9kZp?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f227694a-cd56-4d38-9ad9-08d94b8afd3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2021 14:30:57.4578 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B6BdvmjU//QyLXW0HZx0xsQqk78zh1n1X9eujjWOjCFXlD3brmd5e9tiMD45iKgPZTXZetMDfAZWpgYmgXzOyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5617
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Get proper min cdclk if vDSC
 enabled
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
Reply-To: "20210719072222.13369-6-shawn.c.lee@intel.com"
 <20210719072222.13369-6-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>, "Tseng,
 William" <william.tseng@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Tue, July 19, 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
>> 
>> VDSC engine can process only 1 pixel per Cd clock. In case VDSC is 
>> used and max slice count == 1, max supported pixel clock should be 100% of CD clock.
>> Then do min_cdclk and pixel clock comparison to get proper min cdclk.
>> 
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Cc: William Tseng <william.tseng@intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ++++++++++++
>>  1 file changed, 12 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> index 71067a62264d..c33d574eb991 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -2159,6 +2159,18 @@ int intel_crtc_compute_min_cdclk(const struct 
>> intel_crtc_state *crtc_state)
>>  /* Account for additional needs from the planes */  min_cdclk = 
>> max(intel_planes_min_cdclk(crtc_state), min_cdclk);
>> 
>> +/*
>> + * VDSC engine can process only 1 pixel per Cd clock.
>> + * In case VDSC is used and max slice count == 1,
>> + * max supported pixel clock should be 100% of CD clock.
>> + * Then do min_cdclk and pixel clock comparison to get cdclk.
>> + */
>> +if (DISPLAY_VER(dev_priv) >= 11 &&
>
>I think you could just check for dsc enable and slice count ==1.
>

DP and eDP would apply the same thing if dsc enabled and sink's dsc slice count ==1.
Is that right?

>Also better to have a check if crtc_clock exceeds dev_priv->max_cdclk_freq in dsi_dsc compute_config as well.
>and return -EINVAL .
>
>-Vandita
>

We should have this checking in dsi_dsc_compute_config() just like DP driver did. What do you think?

	if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq ||
	    pipe_config->bigjoiner) {
		if (pipe_config->dsc.slice_count < 2) {
			drm_dbg_kms(&dev_priv->drm,
				    "Cannot split stream to use 2 VDSC instances\n");
			return -EINVAL;
		}

		pipe_config->dsc.dsc_split = true;
	}

Best regards,
Shawn

>> +    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
>> +    crtc_state->dsc.compression_enable &&
>> +    crtc_state->dsc.slice_count == 1)
>
>> +min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
>> +
>>  /*
>>   * HACK. Currently for TGL platforms we calculate
>>   * min_cdclk initially based on pixel_rate divided
>> --
>> 2.17.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
