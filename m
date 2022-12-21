Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 138636532E7
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 16:08:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BA1E10E457;
	Wed, 21 Dec 2022 15:08:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 422B910E457
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 15:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671635329; x=1703171329;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oNIy3wULm9f37oUpH52ePgQUc/8S4VsNI2jo7hTECTQ=;
 b=Tic/6a7uplEMsf9m3To8EhElu2zmodG+aVmQN88Uh7WdUUbZZm+aawG3
 TjtBJvVd8fCRshW5N1uvXEaoysLQXEDXcb+xCjHgUcRR+GrQkcHYDIxBa
 x8UWQzwh+7ODbwx6+gvXYGuHueOkBE+4ZNaPg88T0rVfByImrrUB7rjsg
 sE8Q+nqrPif/sPTrjEyJy3cEGKwmtcP/PrbQf27wYVBR+PxJaaKEanD/p
 RUjvnKda6dYYABx21/x7w0oAYBu8ex/QDQWsImFO8A9NmEgHuQi9RosaW
 dgECfcEUNrf7fPumibsjzex8kk1CdFWEDOoseVSUg+/kyYCAsyuZtn8gR g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="300231431"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="300231431"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 07:08:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="793726923"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="793726923"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 21 Dec 2022 07:08:47 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 21 Dec 2022 07:08:46 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 21 Dec 2022 07:08:46 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 21 Dec 2022 07:08:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DL6vgh2V88kVwpQtrFJzP9Rh7XDKCsynqZOOpiOtkrC8zqW7lZu0nY8uZZI1qyNdR8nDCEeEKOaefLMNzjgnOB0BEQLE25Lw4DkfXJKs3NntfZcK755wBZ9gOSui2D7+Y7UdGgFHYyGuSBmCad39ZX5NW8FuvydXyxxlyGk78lqiOQAWaAf4M/Lvr44q330KmSOoZ0WafRDqfdSP2MrzdcNBna7Eu5AAg4sNUxmD5OCpX1OJyZ/2V2LTWziH52JrjaUcwh7DfNJjXJeDfb5GdcQK7KIHIQltLVXqlo++/5G3ZnaRPznHDQnjFz5vZLMOHj6bU3EwHI2Fw8U1Rb/bcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UryRGx8mE9FnuI78V2Uv5q/g5JjjBWW8ZhlgKVgSBfo=;
 b=Lkeunt1P1ZxhyjGutk3LguN1BGNGEduOKdmhaUlxr3gjV+B1/roMQFqvs5KC3gBtwDZMqp+B4KwAtWpV2EGyofXhFtk0WiLUOs6dkb2N4Cczi9flEnudDUZMh8rRpjjIAED8k2X5jDX+UXBjwx5tLNovswkBNQtyRbiAqT6Jfgcto5YYw1uQmVw8SSXmF8RkXc5xXWcqMhW1vhWdEeu9SjzIgrbVNkJnhCsmA6tC31yP1LlJon0CnqikzoirVT2Ccz2Bq8ouaBgd4ZoNxA2SBTpP6db8z6e8L6b3W/XDlKStJ2dr5+j765wX2xTvEjBV0CWcD6QgYQ8WBnJ3aEamiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:388::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Wed, 21 Dec
 2022 15:08:44 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.5924.016; Wed, 21 Dec 2022
 15:08:44 +0000
Date: Wed, 21 Dec 2022 12:08:36 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <20221221150836.vgzyogiyv5oogawi@gjsousa-mobl2>
References: <20221220201104.339399-1-gustavo.sousa@intel.com>
 <20221220201104.339399-3-gustavo.sousa@intel.com>
 <87wn6l1299.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87wn6l1299.fsf@intel.com>
X-ClientProxiedBy: SJ0PR03CA0213.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::8) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DM4PR11MB5501:EE_
X-MS-Office365-Filtering-Correlation-Id: 55f03ac2-fd1a-444a-b416-08dae365408a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7aNoJpa2kOPUQ8R/SXwk3pnFQAan5bRMBY7hLcGcVuhLkSiaHTo/5UcMZ+2iNNXWmDd2KvGny21mRT+CTW6k1/Z7uLSWbXjXPmJhF4aP4kEIkiYRLx4Ai4wsVJJirOB3n08b/PnHm4mmiJikLXLtafm0plu7zCsLib9laCkuV8MTMzrz/8qeEqJ9TSYXdkYfajSTNUQgSV7qUrTSXy4zCfNfkH9rgIMqfj4IO3svJHCjsFRjnXg/IPI49fx1mwwQYzZXq+DeXPsM/ByPHFJzr9V8S1tnXRI4xyRzZCt36SnDdIR23ggbyInEUj5co2qxwaspbrjIv5eFGMCNSK97T/GyeaoDizA7iu6f+MgmEXNw8hhNdlSfp0rmxLtSSq1oYPf7eRV8MtRXD48VY5/NBvzW9BzUl1Fu+orCqDo9kO6KDYqjyuPBWqxZdTX7rv10eK6kcz78yCnflkpS1vO1YD8njUHTMtnxZe9wn2Vwc610xqsB41Jh03mqC5VvlrnvYs+KWL6dtm8gvw0Hp/je4RLg0C2z3COO9uWu7mELEdcIm/CZLi49TEmLm+th6PvFq0wMzILFP/U/tSliWWUaW/KxOloOS2q1BSrdnTninu5om3RFs0nvSD99tIfKu4XB1x8fVxMz02Hvgb4aKQ3neQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(376002)(366004)(136003)(39860400002)(396003)(451199015)(8676002)(5660300002)(44832011)(4744005)(66476007)(66946007)(66556008)(2906002)(6486002)(478600001)(186003)(9686003)(6506007)(41300700001)(6512007)(26005)(6666004)(86362001)(83380400001)(1076003)(33716001)(82960400001)(38100700002)(316002)(4326008)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NQzcJCGxV4WkdJ0pwT4CVTv65w32LXlhp2HootezsFiQn0kn06OCF6esSrdX?=
 =?us-ascii?Q?m0hfkZxm5JyaCHzCqyBKsPYBLNL4+hG3yPwhI4TxcxQtx1PaFc7FK07hgE7Q?=
 =?us-ascii?Q?1DfNooSlJ3CoPZtytX/dR05B2fJMuq/2Ms31pa0dPCg/Ped/8cw2W6mlGnJi?=
 =?us-ascii?Q?fh3czMQFv1KWJbLHcQjUEtaDmYs7ggscX3m36s1EVxlyWARNE67gyw67oO7K?=
 =?us-ascii?Q?lp+s80C1nC2huYybhyadH5VdygpaCm5v6Lbcuh+ZaQIQSWnpC6jgwq2a8ALf?=
 =?us-ascii?Q?WuQJHc7DLK06wIDCIU/xf8e2LkcbJguKrTOL1cp0JK8ujhb2JmwK3YQOv4PP?=
 =?us-ascii?Q?n452ENNJ1ZNhgKq+vnx5mO7Bzh6llka8fbm1k5XihlcLqBoGJOM5BtjzWR0y?=
 =?us-ascii?Q?jZgEiQfduI6qLt54oJBZIJOA+GCP+qtzGXBrgbkkV1SXMrT9GaVq1rTRzqey?=
 =?us-ascii?Q?EJbg5wajsa9xUHpdesVYJniMUne5e9jiP9AcVLJ4feQvdZ9gDMgllnORX6Yy?=
 =?us-ascii?Q?36/PYmms3FH34IBGUZxyQxXGkzGW0WSa0aBmHQheSGl9CnDUBllbCAwi9aEa?=
 =?us-ascii?Q?bzNijRc9WJwGu+qINiQWE2354WRDOPGi07FlItvB2XtcpyAEl2bOEkrvi27v?=
 =?us-ascii?Q?OuXXCaqTFqm1bxgw6XYl0ZrUtMlp8lVW3ntwsTz0NmZ19QpqBmBsiAfHU1Ix?=
 =?us-ascii?Q?pa1EJ8VLyeVNnOTIAQ4Q6JMSwF2m1RPGTYn673zpA1ZYUvk5B4dzreEuuYwe?=
 =?us-ascii?Q?4+MUwDnGZReK7/GlvK+akt55/597HI8JEAeRWoKvvC4Jw5Ri0s+NHlpTmUhq?=
 =?us-ascii?Q?awXnGdAjhXnBrb0QPz/lFuwUY4KG9c3TNjhvEpoyY07nLJRl5i6bg2UqnHqv?=
 =?us-ascii?Q?I0wT1Gg3fH7F9ztReLexHJClsXRABOaZIueqCnpgYqT06ek2fdAU8oLCen+w?=
 =?us-ascii?Q?ibDz+V2def6MZ6J9Q7hk9CgJ4z15qlauI4sAV76+OeSPPBRjBWbWx50xwrw0?=
 =?us-ascii?Q?bozVAGOERJiUy+pBdnwWxiuGAH0gqSqUexTw7WjsXyVrDOaj8RjCTYUVfS4/?=
 =?us-ascii?Q?vcRM2z7NGLrunrZcCYpN/WzVKy5zD6O2EHd72t70MmhQsHpinVpGEpoROmd+?=
 =?us-ascii?Q?OutX8pm21QdGD6/MIe0tyPi1Dkq6n0MH0gaWdKGh+zQt8O2yKYPk4gWIiein?=
 =?us-ascii?Q?5wUQuRpf4VE+WBvxn3D/5bhdZwvyEnkCWgye4otZv4UKGySm1MumyMP6RxwZ?=
 =?us-ascii?Q?3OYprXVtUq0BltBwNjqO0gQrMt18+Hw/sMBsepXJ8IWUJtnU8aRlUEdfNJDG?=
 =?us-ascii?Q?rKOlbBp74TTPPSanCr9M5Je6YpEcYfUPOUCNg1irqW2dKw+a6P6Rk8uCYa8D?=
 =?us-ascii?Q?mTF5ovcz0X266VVLEMOiOop8ZBwSq80WHDSK6wpySornSdHqr0G7/pr6uxZL?=
 =?us-ascii?Q?h9iNukfrmZjVi7W3gNKIkBr1KYSJawRP2G2OuA+WFEPiwdYpVt0a2QwmN4RO?=
 =?us-ascii?Q?mfNlQVCPNQF0rTxu3O86dZq2/yV71Cn61GdCrIk3mvmwhtzkUorQl+QoetWf?=
 =?us-ascii?Q?+KduR4bm7peu1I9Ijk3sN0w3Io8hVW1OXYAEXsIqA/3pJqhqMWDozgwKKBDH?=
 =?us-ascii?Q?FQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55f03ac2-fd1a-444a-b416-08dae365408a
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2022 15:08:44.4130 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5uIiGCoz5f4HzumPL7c8/XHz27YIFUpZJUcTbXa62MpoP+9B1skb4lZbmkGHJwTCZbByltTowB0jX8Bhz8mE1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5501
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dmc: Use unversioned firmware
 paths
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 21, 2022 at 12:26:26PM +0200, Jani Nikula wrote:
> > -	request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
> > +	err = firmware_request_nowarn(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
> > +
> > +	if (err == -ENOENT && !dev_priv->params.dmc_firmware_path) {
> > +		legacy_path = dmc_legacy_path(dev_priv);
> > +		if (legacy_path) {
> > +			drm_dbg_kms(&dev_priv->drm,
> > +				    "%s not found, falling back to %s\n",
> > +				    dmc->fw_path,
> > +				    legacy_path);
> > +			err = firmware_request_nowarn(&fw, legacy_path, dev_priv->drm.dev);
> > +			if (err == 0)
> > +				dev_priv->display.dmc.fw_path = legacy_path;
> > +		}
> > +	}
> > +
> 
> I'd keep the request_firmware() with warnings.

Thanks. Just sent a v2 with that.

--
Gustavo Sousa
