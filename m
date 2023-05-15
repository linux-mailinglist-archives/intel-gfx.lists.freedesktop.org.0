Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6707702A55
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 12:17:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 531B610E193;
	Mon, 15 May 2023 10:17:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2457A10E193
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 10:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684145823; x=1715681823;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WH9BYdZGSiWw+Dtnr4X7fA34qSCj+C1msdwoVpnRqeQ=;
 b=DM9gWk1pdOtJjytVZa9YItNqlBde5QcqT19jzywpRa6qAxvOjYPsygHD
 YhwRjSO7Aggj+SvUm9OGwnEhLRCMkNp3ZfY1D7cMcMeXVaW5SdP9iJmpP
 +3Vka+BoNyZtbTDZ+O2e3dQzdtA6V+ocBDiy8SrK368E6pWhQjeVHW6tZ
 hFAHaQfa/J9EuWhDOLndp646ADpmRNKZ9a4ex0h+mW7V81wflMIPu1Ebw
 dVll92BAenf9x+xgZA7GNMUBLir3pu+yoXLQkCEXxYcWIgPpvhMbjEECm
 1lE4smnWlAQLyGAea2xne/ylONDIDCEXIDhaqdNJMA9uyHvtAmeM6Dy80 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="354321002"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="354321002"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 03:17:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="731581494"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="731581494"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 15 May 2023 03:17:01 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 03:17:01 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 03:17:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 03:17:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 03:17:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fZMThKVOEdiDM0N8QL9YX9HYTcFtIxm9dAKr5Paq85ZeZ/L583axhT4z2y8TEmzga59cLZ23U2hgESwp1YvDIf7wVUJEobc0f68TvJio2Q2cuivkTp8s+v0h2Fq4ZeBWRzbYCklmU4IQHeWrsSKdIQNaGmPUksmMb41y7LTJ7/kSqWfcbRjDmhGK76MBkh84jphIdKCLWRI2GY2R3odIgtZnXsiCJ2DQtlUqjo6z6hTjadx1HGUPFZIPJ7qVsEKk32uzWSEaxKo6XWMI4eSOJVdVWaqgW+LM0xIgJ7fGLTBBu2YBMq2oRDnCqJIbj1Zb413MjRgUAxs1vJ/xz3j8OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nNdtg13GpziPNA1sJxZDF3SGDhmV7eJamON6dgf+Fx4=;
 b=AhSDbpeHpXAEuSoPqma+4APkmKosB9SzcMitQz2vFAvf3LxanAu6xpZDuFvwoUWE6FEHMdZEjGf0DwLu3pq4oiBmWJewxYDgw63PPEbN/LU71MER9ANBTHlmQWx4EuE4zM1jEmvgx3Hp3O1RNQ3QKaLvunr85KuUek5h4eO6JcbqX7251jmVx1moKxOGoe9Wru7X93mrd+TQ9rb2Z605W89c/70zKGzo9p583pG4pHgurbepb5MxS+GJzg+ukaeHQgNiA7zuiY0+00fbCKCRLbKA9AVoczv77pDv9rpODa7u2ViBqC0GKbwMl2CkG5Q/jed3QS1/lqF0mmXBmJG0aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5125.namprd11.prod.outlook.com (2603:10b6:510:3e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Mon, 15 May
 2023 10:16:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%6]) with mapi id 15.20.6387.030; Mon, 15 May 2023
 10:16:53 +0000
Message-ID: <cc64817a-cdb1-53f5-f328-dbff599e2439@intel.com>
Date: Mon, 15 May 2023 15:46:44 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230515051557.672109-1-suraj.kandpal@intel.com>
 <20230515051557.672109-5-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230515051557.672109-5-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0212.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5125:EE_
X-MS-Office365-Filtering-Correlation-Id: e7e78929-580a-4720-9e68-08db552d80fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iOjmc5aZ7RrQwA6YU+Da3+lIspYzNEBcGVJSBBuH4tnOQMnlXzDBGtg/OWZqzV4hoKPZL/D43U8fgzW/6/g4H4FlMqAS9bLbhRhE6CeeWGCW2ZQBO/042kvfL5VlS1FlzK+IaPo/7RhjUfIkEQELcd6qbK5SL4pI8Kuc6+2T+kd5L0J2PZY5eWbIIVRWtkEYhcs7SDpB3FMiP4NE/vvtwSrJtWLav72XcPTJKzxhoXYgPV/NxUfnT0yxuCgDeDY0t+MAEMdynG6bY40AhxGLvahiSfDvo8Dnb3scYWLHDjuqVJScjkLhlK+/lz19eTcWMPT/elxD+rCSj9nBliNax++7y2JlEuNVaKwYJ3Svl3xsjsnJArM1kFhDLFvYUdgRQMpD3hmQfOVVpdle7zt/XBbPJIJxP3/1jxtmeJM1G3q9VT82Xzqn+ajKbrsFpiYm4FoKzaBYBX4jSyxqIsCGUzWwiO+Dr/E+1lMWb/8BUFYapawfOdHDiO4sKXICLkZqk3NkYnZ7abE5F9MAXwJP0K0ruYME4TKfKEE8nMPiza0OppdpatHo12N7Y5Pi1OkMZB01AF3B+CpokTNCs62BnPTs9Zfd632U6JEDNIGkvyL10wWPUXAaTS4Fh27rHHfdODu/ddEcCE4uS1ffaOGC0w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(396003)(366004)(376002)(346002)(451199021)(55236004)(53546011)(6506007)(6512007)(478600001)(186003)(26005)(86362001)(6666004)(66946007)(66476007)(82960400001)(66556008)(2616005)(31686004)(6486002)(83380400001)(8676002)(5660300002)(2906002)(41300700001)(316002)(31696002)(8936002)(38100700002)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ly9BZC9Ca3dsWWJvMkdYeS9mYVhGSmxNWGNLTlJjUS9MUFhTRzNCSzNPZk9U?=
 =?utf-8?B?NEx3SzFOYVdybG9CeVlLNnhrR0FVdHhOY1lmVjRuS0VSN1FTRzBUb29aMGpX?=
 =?utf-8?B?d1lrNC9PcGdxL0Z2TzlrZE4xY0R1MUdrY1V1NHVSQnNvTUxpUlJwaVZVdlJE?=
 =?utf-8?B?dkh6RHNDTDlrbVEwWW9Dc0RpR2UzTG1RemZHTlZYUHJYazJaVTRUTFNqc3Jh?=
 =?utf-8?B?eHlrWDhZaFBqQmNYSi9wY2xqaFF2aFY3NWJGN0U3a1ZiMEo1MEQrc3RkK2s0?=
 =?utf-8?B?d3c1dnZFRFlEd2o0aFROMXhOS0NxclkrMXdCQ0RwYTcvdTVieEptZGtHRjFN?=
 =?utf-8?B?UjZ5bm9yWnRaMC9RTllQcklYRDdkY0pTcEFBM05GN2tFNFVSN21Md3hvSUpQ?=
 =?utf-8?B?RFVpKy9VWmc1SU5yYzZHZlJBU2JXWGFOVU9EeGdHMlNjaStuWjU3WXF4Y25T?=
 =?utf-8?B?YmZQR0RCb3pDWVJOREtkR2hOTTJkK0NQYm1mSW5OQStML3hjTE5SaFAvWmhZ?=
 =?utf-8?B?Vk9zVVkzVHZwQzB4T0pHMGVWd1VEbGtGMmpiR002eU9vbVVqaWJzek5ERDQ3?=
 =?utf-8?B?NXBVajZtdkk3UEsxTzBGUjRRMERqcmVDN3FoRHFLbzhFMUdXWGF1cXhOT1kv?=
 =?utf-8?B?Y1VMaFVTc2VHSDcrMm5McXB3c3JwbFphdDhWZkZEYUNycldid3NyVzlFWkhJ?=
 =?utf-8?B?OUxJT2kvTzM1MUF2c2VEMHRWNldYZEdSdHU2ZUlpTnVXY2YycHZNYmd3SWFP?=
 =?utf-8?B?SEtGbStXck1kYUxrQVhKNkNVb29JaGNPMWk4cjhsQmpUc2NlbjA4ZWQvUmN4?=
 =?utf-8?B?OHNsdVNWSlVMRUpxeUFCYjZUTVd0eGUwVTlvNjJFSXN0QzcvNFB5TFp3Nm9x?=
 =?utf-8?B?eC9qeXhTRzIxdmRuUnk1Q3EwdDlMeUF0T3lYZmMvSEdRdzQ2cFJlNHdwNEl1?=
 =?utf-8?B?alJlaG5pdXo3Rjh1S0RCY3pMYWVCMUhEQmcvSlB1VXZHT05DWEVzakwvUWd3?=
 =?utf-8?B?aGc3MVRyOCt1ZDlnTU1KMC9QUVRWNmxhSFE4YnFPS3hDaGxDL3g3aE91SjY2?=
 =?utf-8?B?ZStpa2pMcHZGa2QwSzROU2VqSmVPRUZrZktjMVEzczNBWUwyUGRBMjlmNDQ2?=
 =?utf-8?B?MitVbGhTYjR0TC9wK0paaUwzZE5BK2d6SGJZOVR2dE1MeGpLVU1HNHFMcDZ4?=
 =?utf-8?B?ejh3U3lPUkxyVnhrWHNoSG5DY0c0WnM5YXM5cEFxejgvdkZNVHV4dE5JQ1RO?=
 =?utf-8?B?OUd0ZG4xM1hWWE42MlAwM29aOTNYQ2gyT1ZGS3IxSnhKMnBJRUsxbE1ZbXB5?=
 =?utf-8?B?VnZqSXVvQnZLUDhzTm1NT2tUU0c5TWtUTGtDcE9zTEJCUDdXVm1lODZ4cnhm?=
 =?utf-8?B?VDBhY0tpNXcrc2xpNWhYVnlhQ1pETGJqd25saGxDSGtJNFE2cGR6VU1aTWxh?=
 =?utf-8?B?S0VPY3I4NG5NM2h2WEdWVFFlU3FFRGcyamRoNnNhZVZMYkFQSGZvSW83Um1t?=
 =?utf-8?B?SUZ2M2lnV1VOS0QvM2tFMkozR1pmdEVLUEpMZ09SNFJhZnNFVmVNYW84T0U4?=
 =?utf-8?B?V2doVkVkdmtXQ2RudXlKeHUxWFpYMVd2SDQvT05wbFBmbEtxUkZkOStDZEZ5?=
 =?utf-8?B?TkdONm1XaTBPWXRGT2VhN1VKR0JKaGFhS2ZjSGlHVzZ2MmtuMytCcHlwdUZJ?=
 =?utf-8?B?b0tKd3Uzak9mMHlOdjZHeU4waVljQ0pYQjM2Y0hXK3VqMG55MGRobDhwQlVV?=
 =?utf-8?B?V3pLOVA5eFlaclVrSndHWkNUc1JhZ0RxUEliRkpvV0pWNU5TVStMdWJUQkZF?=
 =?utf-8?B?RXRWN0xBaGgzWTB5Qms4a2FybXB5bmFGZDFQZHFLMG9PQ3JuOVBscDhTRDcw?=
 =?utf-8?B?clBNVFpHZTNGcVlsZ3ZWYS8rNklLUU14YmlESzZnc3h0ZXBHa0hCUHdleUts?=
 =?utf-8?B?QXo3Mmp5aEhJZ0hXVjRQdFprUmdVWXNDU1RxSTEzN3BwWTJjWmVtMEd6ZGdz?=
 =?utf-8?B?bkJBOTd2LzVBNk9yOWpRSVJuQlErNHZ5TnorQytkRk5ORXMyb2NlTnVYVGhO?=
 =?utf-8?B?Vmt5NTJSSzhsM2QrZUlVZGFPSzNweG12L1FGaGM2cUE1ZFcxcTlRYlY5Vm00?=
 =?utf-8?B?QXV2eTlVR1BoS09xaHFvTHV6eVJKMzZvMno0UmJ5Z1ZRQmlHNFZGcmYzcktS?=
 =?utf-8?B?elE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7e78929-580a-4720-9e68-08db552d80fb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2023 10:16:53.7065 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jbm8vX7xha9odSGM61GXoU7d5xvxl0Ayh7ecbOKnwXrWv+JyUhnJzXcT2gnc728zIQ6Mjeb/8WcNGwqaWdKmRL10HTgrjQjGwd5LF7ejF8c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5125
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 4/4] drm/i915/hdcp: Fill
 hdcp2_streamid_type and k in appropriate places
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 5/15/2023 10:45 AM, Suraj Kandpal wrote:
> stream_id and k(no of streams) should be set in
> intel_hdcp_set_content_streams. stream_type should be set in
> intel_hdcp_required_content_stream.
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 10 ++++------
>   1 file changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 64875c33832c..8c068a9c0a30 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -102,8 +102,11 @@ intel_hdcp_set_content_streams(struct intel_digital_port *dig_port,
>   	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   
> -	if (!intel_encoder_is_mst(&dig_port->base))
> +	if (!intel_encoder_is_mst(&dig_port->base)) {
> +		data->k = 1;
> +		data->streams[0].stream_id = 0;
>   		return 0;
> +	}
>   
>   	data->k = 0;
>   
> @@ -143,7 +146,6 @@ static int intel_hdcp_prepare_streams(struct intel_connector *connector)
>   	int ret;
>   
>   	if (!intel_encoder_is_mst(intel_attached_encoder(connector))) {
> -		data->k = 1;
>   		data->streams[0].stream_type = hdcp->content_type;
>   	} else {
>   		ret = intel_hdcp_required_content_stream(dig_port);
> @@ -2215,7 +2217,6 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
>   {
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
> -	struct intel_hdcp *hdcp = &connector->hdcp;
>   	enum port port = dig_port->base.port;
>   
>   	if (DISPLAY_VER(dev_priv) < 12)
> @@ -2245,9 +2246,6 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
>   		drm_err(&dev_priv->drm, "Out of Memory\n");
>   		return -ENOMEM;
>   	}
> -	/* For SST */
> -	data->streams[0].stream_id = 0;
> -	data->streams[0].stream_type = hdcp->content_type;
>   
>   	return 0;
>   }
