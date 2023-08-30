Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4708678E169
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 23:29:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9801810E5F4;
	Wed, 30 Aug 2023 21:29:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 663E710E5F4
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 21:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693430960; x=1724966960;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/Mn6mgRiVNSBciHzTarzeZkqlIwUvkh93x35rFHrpI0=;
 b=UPfT0I+IscUQ96kvxTwXk5+D4dwYhtmec5VBjG1mGn5I8ZKBUZendtj3
 SzBo4uCGa38gDN0tQy1J7rfDkowqCj0Vbjip2eojaebeiBRDpKvYTiAJT
 xtwpbC4i6w7sGZY7+j5nbmHm5JejvQ0xal3ZboamUI4nGZd0LASj29kG9
 kuLtQlFpbHEhX4UDMdCw2yB0wBYy9FsUniPt+k9CBQesFoRlCWjrzHchq
 Z6BqExTv2YPwOJh92dgwmycR3xFQai6I/Kkdx9NAths5SstmdOrpbKZmX
 e5GPzLnIU4fSJnk5t2SjrT9G6dwW9ek63jxzKGbSvnJCsnON049lbzXZL Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="375704977"
X-IronPort-AV: E=Sophos;i="6.02,214,1688454000"; d="scan'208";a="375704977"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 14:29:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="882893511"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 30 Aug 2023 14:29:23 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 14:29:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 14:29:17 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 30 Aug 2023 14:29:17 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 30 Aug 2023 14:29:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BaERJ1avtTvWzt4sgVgAWh3VdFIUxG5qwOqWcQ8Ta8gJqmUMBd8EZcCHRFsmq/sdLOBf2NciKO5V4p80HhMXk3omYS0RRx+Yg/dOCWA/gOUooNi3w//rJJcxLDzE5O2BqIG82FdKRmhS4td8Bb+Lbwgk47m+fkIAYSO5xg6ULhLk5mM7km0rdS7jwYhE0W7OODVJY7BI2qs1xaT8my9sAErkg42DnSFGU3i9sGBT2UI6VVKbvq+kUV+7TyaswYls6UE5l79P0LM9H5F/neAIQXUhXh6pG8Roz2xtLdmfEtdy6nrNnKkSL88XT57J0PMv7w5ukMcAvZfdYkEPYrIcAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ihv02KjZ2fxxu96Mg0xIlJpeB7Fbh+Iul/imkXpKTlY=;
 b=KwfjV9j6BwG34ESI5EKeYgi8fM/4dDZYwUfDMQyu/Tu6ya4q9WoaC+i0hgvEo14Y12oqCOBp8mMNVbffl24ynoK6SLLzOG0nD5LodM/4U7RwnHrGHFLupQo9nNcphxhWc6Em8uFq41nMFiKVTaXN0e4I3CXlJgPNy6uPL9MFnbyam4wfsVfyY8Ma7+7juuom8ezg9d5SmupvaZQ6IQuDMkrBsZnymYPZXi7hkweWSU28z58MdJVthy83oo9Il8TxycgRBIQvSj271Chdz2YrBIcrPHXjuVkfkxLP4cZBlTe1NX18sUetrUJ4FHWlFiRkXb9V5wNFywqYOMYWN6Pdrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Wed, 30 Aug
 2023 21:29:15 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6745.020; Wed, 30 Aug 2023
 21:29:15 +0000
Date: Wed, 30 Aug 2023 17:29:09 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZO+0pV+B05Q7ea0x@intel.com>
References: <20230830140421.2031111-1-imre.deak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230830140421.2031111-1-imre.deak@intel.com>
X-ClientProxiedBy: BYAPR01CA0001.prod.exchangelabs.com (2603:10b6:a02:80::14)
 To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CO6PR11MB5651:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a27df2d-2142-4fc7-0e5a-08dba9a028f0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MB1k/rhBQeJVgBCY0nrS6otaD2VefnSaYexnIX3dU+oCTJp3m1AbVVitkeDQOENV1gwtfuNlkqtJnBM5xAfA9hUSbeAcUPxrvbEXUEcrGdEfCEk/crhx/N3Fkg2w+I9B+TUDnESUk+tb9qDQ/lCQNNGluLnDhSugE9eMKP383Itrx3qcxx576hrL577SJvVO9daYpe4KQJykb9LMJueljPsL3jVAmOnMskGutcy3AI3msEeh+b3o4wn0WeP/EPPOpqdFh9jE2JXaVoxEaRTnsA0QpAw8TNMJoiPV88ogLBkfdYijbipSL7gq8QUYDE8x8dfc9uhl0hCY2hvt0KD/c/7yRaS/XYm0iWosPItmuz2vFrGc4RZDUpc9MCIoOtH+UQuys3t9YsQy3F42Qzd1hnvRyO2wFxLph9fokvirtJAxfkH7tLZwkhnswq7dZJKD14IhDxUSK4+hiOBQJAVuhPhLfv8ZxjPdh2MxUvtFpW3t2ZOFkqtyV+AswiK4PFjGQIy5ZlbyfZbGKgR20irsdWw6hJ/79MYkjHGjskl0Ids=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(396003)(366004)(39860400002)(376002)(451199024)(1800799009)(186009)(6512007)(6486002)(6666004)(6506007)(36756003)(86362001)(82960400001)(38100700002)(2906002)(478600001)(26005)(83380400001)(966005)(6862004)(5660300002)(66946007)(4326008)(66556008)(44832011)(66476007)(8676002)(41300700001)(2616005)(37006003)(316002)(8936002)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?X8NZvl4q09dccPEiCxiCZDkmahZ4tXviM3TemAA685UHfhZUfXQZRL4AbEyO?=
 =?us-ascii?Q?irM+5d7zm8qrP6MX3LluQwSToDQEFtQFd7MZOz7NmiILoP5/9rgjH9ReTuu6?=
 =?us-ascii?Q?6qEuF2fEpVCgW4PcpnMhT9yK+qor+LAJ221vbUulGkkua3PprKg/mYAMrE2v?=
 =?us-ascii?Q?xS1vcFv4LtKpdcoYkCXHBjPZ0CRPJ6fKNJng7FM1qJxkWC7/WTrSZVPYyVtl?=
 =?us-ascii?Q?mHkcCwtSrpVVotS8F0XTFnfqQUc06FkH9+yaQRsHxT4jJ+Fg5PExwUWn8q6w?=
 =?us-ascii?Q?2NYdNSTdWx28KOFf92barOoHzVQaRTHmsu8k5wINp3We3Nf8BmsKExVILC0U?=
 =?us-ascii?Q?blGbhXITkvxTvvkGbjTicP5gqxop9VOXuNIzSokZtblCs/fD4sLw9322IkvS?=
 =?us-ascii?Q?nw4wblnlRArMiT7qmK1tYNKR4Stwp/z9Q2V/ajTNUi+AJTiPRXEWGUg5N1w+?=
 =?us-ascii?Q?kTvKfQueEuGi3DO8U20XPoKtqzjGn53HfiztJcpmx4mJlRCQNocObg9VitT9?=
 =?us-ascii?Q?E3bf19DtgflZR7KDk63ugVOAi3bN2A+/BemGJDDpU7F2WSvkyHGyCHzVs3O7?=
 =?us-ascii?Q?Bi2yY5vuuMkufnyba6GNP6ZnM3oMY/uRorbLBtb1RgfqD4R9np4vI8Ia5mud?=
 =?us-ascii?Q?ei1DcnMyb2FwTWd7shvGnm1zSNeHJkHVaIXSEVS48eBZTcoH5qfLoBfBgGG+?=
 =?us-ascii?Q?TPvYlZPlHGHSWa4zipZFGII2xE9MsaCXZKqh5d2gyrh1Tfjh7t8jV726S7qv?=
 =?us-ascii?Q?wuInT21rEeqg1Ma6xHE/rv8Yya+5WK+qTbjTY8r4OAS4RWtRv+2TaQrb1k+0?=
 =?us-ascii?Q?S+rHA7RvD6LtaAB+ddHOgPryjpKnxhnnoDsmKeMvLr6Q8TangC7E+ZFfQuQT?=
 =?us-ascii?Q?ZEzTYdg2bD7wOpbppBkVsd5V9xpMmHbuEnmMvoPNNEgEHPSIsHTzdS1ZSeS0?=
 =?us-ascii?Q?dZtNdWwFwa83rfxKki54045DmpYfYvcBW8WxF+ungK/vucwaynt6+FTwyrUu?=
 =?us-ascii?Q?Bf5Pf4HvM6SMhtnmevKoXkdOXZFavsBCKoNkuwC4RTDexErM78ml0eZkXPNr?=
 =?us-ascii?Q?nSXPTGbhaO7A/Yf8wJ+uwo9m1mJ/68wuswE4hUuplXGZPgFZpna041kBTdbB?=
 =?us-ascii?Q?M2C/gq1McMErQ3APSpnIsbroMZ8PPio0qXGuza+v2AFfooxbAtjfwcDInAkt?=
 =?us-ascii?Q?nmJ5d/ZxV+x4SUTkpyLgXwsglLMwGGTJUHq+DN4+h/pBIKrLv0nx6CQqlR1v?=
 =?us-ascii?Q?BcA2qsyRovNNOtBeyv71Pj4JdwXPKTPmxgsi9oAG0ENgNq18MS7MENDoGaRE?=
 =?us-ascii?Q?ZITqru5P2LRH+SrAzYkMqzhhP5Mu40VOo+DR3Vw9zRzcOq2rrH6KsVVHnqoK?=
 =?us-ascii?Q?/XnpTA5Y0gM9FgjcZm6yGtUrTH3XPk2PQ+m0Yl0/hXo14aAOIEseu9u33sZu?=
 =?us-ascii?Q?sWA5uD1Kf60CCanbOUbwwPPaPEva19dGKJGhMgfQEEFcoghkncFG/6KnF5lL?=
 =?us-ascii?Q?eDVdK9tN9L0a0R03BQ279jbuc56/7rRcxhI8E3pIKeASHY0bIcX8am3982Ku?=
 =?us-ascii?Q?FGD6WxgEGsTElCbfR0EtLw5tCtNWLKBn0uVqQC7WKMuyuAON3MbllJTQkElk?=
 =?us-ascii?Q?Bg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a27df2d-2142-4fc7-0e5a-08dba9a028f0
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2023 21:29:15.3150 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: picsqKjGoAdlmbLe5+qM2WcSNKbk9PGfDQOvNczfSE8MdHcKi2gRdyBcXY/PT06lxsO3+Cu198xXr6AmpT0QOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5651
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Drop redundant AUX power
 get/put in intel_dp_force()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 30, 2023 at 05:04:20PM +0300, Imre Deak wrote:
> intel_dp_force() takes the AUX power reference as required by the DP AUX
> transactions in intel_dp_set_edid(). However the low level AUX handler

you mean intel_dp_aux_xfer right?

> takes this reference already so the get/put in intel_dp_force() can be
> dropped. This also fixes a problem where the TC port mode changed while
> the AUX power well was enabled.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8779
> Signed-off-by: Imre Deak <imre.deak@intel.com>

It makes sense to get that in lower levels, so

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9d303caf969e0..16fb12d187a29 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5365,9 +5365,6 @@ intel_dp_force(struct drm_connector *connector)
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  	struct intel_encoder *intel_encoder = &dig_port->base;
>  	struct drm_i915_private *dev_priv = to_i915(intel_encoder->base.dev);
> -	enum intel_display_power_domain aux_domain =
> -		intel_aux_power_domain(dig_port);
> -	intel_wakeref_t wakeref;
>  
>  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
>  		    connector->base.id, connector->name);
> @@ -5376,11 +5373,7 @@ intel_dp_force(struct drm_connector *connector)
>  	if (connector->status != connector_status_connected)
>  		return;
>  
> -	wakeref = intel_display_power_get(dev_priv, aux_domain);
> -
>  	intel_dp_set_edid(intel_dp);
> -
> -	intel_display_power_put(dev_priv, aux_domain, wakeref);
>  }
>  
>  static int intel_dp_get_modes(struct drm_connector *connector)
> -- 
> 2.37.2
> 
