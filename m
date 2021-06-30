Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 244B53B7D6F
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 08:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 878B36E93E;
	Wed, 30 Jun 2021 06:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81C1B6E93E
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jun 2021 06:29:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="206474328"
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="206474328"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 23:29:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="408691369"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 29 Jun 2021 23:29:35 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 29 Jun 2021 23:29:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 29 Jun 2021 23:29:33 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 29 Jun 2021 23:29:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dsSdB20vUOlFamX9gGxM0dgjKLFg/Rvz49h4JOb5Sut3WG2aVdTh8rSl8peMAsXz5Aq1OIIWCoT0INI2u1gKxb73mqCqBlbHB3VIeeMvZH4amndvfNZyQxmYpgUH9ijBJu6b8oOkABQikPf4SNLgJ7IbgMg5ahmpULSIZMeT08ZrkEQCKmmW92jYlnH+cNiYacmL/A3A5L6KG5yd3yybl4TkzpvRIA9QnapTI6TnbZ9xmwZ4p9kWCCtecRFh8+phUqPNkVMGWBtSPzABDKovb2Fyo8Kb+ddSwFNyOo9UfLiu4vWb67ftsDJlAuzLY2NmIQOHHoO+SmKMr/XmHBSndA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9L21LlhOw91y+C/xSk7XqdLcNJlTYKpBggkF+a4d308=;
 b=RMDFCF00Xf9x2PptYw2ya6vM5t5SC27KPgOlXMsUPYfpWpKxLoiK9Qq1Hz+ycDBP9ZRI/INbT9YwFGhOuCFc8DQ/TLdxS2vps7ZTfZq2gd83jDyOL5DMpgqu5kLSUVR8JvBXeHRV6LIhASasuhW1cETVBqPo4Lt5zjD1rMOOpxeKJk7NP6Z2o3tj/9Z+xV/UiCA3I8K9xSo3BDokNjHpR6XnNndEWec1Lgx/U0D7vDN6t45JtD+PvYU+5d1iY2JOgAlR+6Nb1/u4K5gKVGLiO9SwzBOVnKFeltzanxKfVMKjjmguJPrk7svczPCeiII6abzaB9F7kOydTzbVpj+sIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9L21LlhOw91y+C/xSk7XqdLcNJlTYKpBggkF+a4d308=;
 b=zN5uaAsxZqqVxLRopCD/tqQdVhHTV81Y8BakGw3L0taasJ7w4lflZjM7F46G8iSYomezjGGBTJu/pKN+VQS2I6tH0/LwnBf+AeslszBNhGo/mwt1m27kQcGzUdlfzaVAIXFIXDcccsX6CmE2MhAAdRRAV9qD0lzlG8BRv8VHgvg=
Received: from DM6PR11MB4594.namprd11.prod.outlook.com (2603:10b6:5:2a0::12)
 by DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Wed, 30 Jun
 2021 06:29:26 +0000
Received: from DM6PR11MB4594.namprd11.prod.outlook.com
 ([fe80::1918:2232:99e4:e088]) by DM6PR11MB4594.namprd11.prod.outlook.com
 ([fe80::1918:2232:99e4:e088%9]) with mapi id 15.20.4264.026; Wed, 30 Jun 2021
 06:29:26 +0000
From: "Patnana, Venkata Sai" <venkata.sai.patnana@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Navare, 
 Manasi D" <manasi.d.navare@intel.com>, "Kulkarni, Vandita"
 <vandita.kulkarni@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 1/2] drm/i915/display/dsc: Add Per
 connector debugfs node for DSC BPP enable
Thread-Index: AQHXbLTDpeAaWdo77kWdqFxdYU9+hKsrDqGAgAEJU+A=
Date: Wed, 30 Jun 2021 06:29:26 +0000
Message-ID: <DM6PR11MB45947698BD6584B1B56912A7B3019@DM6PR11MB4594.namprd11.prod.outlook.com>
References: <20210629065156.30301-1-venkata.sai.patnana@intel.com>
 <20210629065156.30301-2-venkata.sai.patnana@intel.com>
 <875yxwspqg.fsf@intel.com>
In-Reply-To: <875yxwspqg.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: manasi.d.navare@intel.com,vandita.kulkarni@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [2401:4900:4b57:d9cc:b4a7:c47:934d:15d2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8cafc229-da5a-47d1-1e19-08d93b906879
x-ms-traffictypediagnostic: DM6PR11MB2890:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB289081AD868DB905AB37A373B3019@DM6PR11MB2890.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:669;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6znqMbnuoADoMvUnGxhYphTNkoXLSnM8WXcdwHykFZSBLMAhYKR9QIi4/HgmMMpir38LcLN+bBcLSRZyYd2wNaQvEUQxMM9dG8PsX+hSRGrAbKFSbIV4G2TjvepRG3qm0vH4Bnzhq8AT22BlSLfCo824Y+EeHBVRQLZFFXhY1xuep03SjexQREZVa70c67Xj7/zYU9j2Eo6hYqRPh68Cfgakb7UlOYhq5csF3XB8payCQ4BGi33lUfCcQHGNNpcwgghYocbUnuiXqDaqtWavlY9LchK0IBg/E3S8gFupcavrLwkLuSt8bktAQ0sQ4sJBLepsD7Mw2hLaUE0nXdMtw2evwpgcyFsIsIU+JKaKWASXIHnFt9xtfOKXuAxLo4Fo0fi2BlBXxG8nn6fYLBPYrFuuycxmg6SNfsluUGFF5und8CWqFNsWvyqUPbR3gPjLtj64bH4Yjg0S9MR6iU3a4QSTjvR36KZBGm+ygqrfGYjbuO5dGF01aMEwDuuGFR5cLh9lNAR/r64hhWJCDeKJUzUsmCwV9gpigtroYqC2aZBmse+HwKoL83fCXwA21ASTDqyrVa5wx56A0RGpmF5QdngFQbeD5I6/PvY28YKe/dUZmQC/e+z2wbPuq+asDHmeZFmypREQlcPW+X4KJpSp3w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4594.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(136003)(376002)(366004)(346002)(396003)(186003)(8676002)(83380400001)(86362001)(5660300002)(6636002)(9686003)(71200400001)(52536014)(33656002)(110136005)(6506007)(66446008)(55016002)(64756008)(66556008)(53546011)(66476007)(66946007)(76116006)(38100700002)(316002)(478600001)(2906002)(122000001)(7696005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oMWnbE+fl8V4nc/NYGbElvB8Bgcn1iwfSJU1MqInUNcw7SQHABOcfP95JNpE?=
 =?us-ascii?Q?NfFDur7nj3ffLD+popDwcEi/gw7n6BcfFJtSg/jDQTWobh7m/2uXFKlWa86s?=
 =?us-ascii?Q?xaiaigtkdutNjY/m4R9nykp3C/8uKJUDClh86bVOlAWpgfMRnRik9cI285zW?=
 =?us-ascii?Q?HuJF7nOaIBnvbshDs+nK6C9pgLab3l7TXnYX3Vo4UxPPjfVe2apWdDjF9K4U?=
 =?us-ascii?Q?QVxuMVeYmKlHk10rXp4+qYABoUmle6+X/IEQVbjWad77HVb7hPvc7dirZXUL?=
 =?us-ascii?Q?UJSz6YX3q0A/kVoGPLpAy5hHABZOWA+6ILQKdtGSUSlJmZOdpZXnPrxUWZTS?=
 =?us-ascii?Q?A+MXl+MGfRKL+zshQddZGyMTu+IsXBLS7fzm6mzrnHp1FvBW1YJRCxvWg4QU?=
 =?us-ascii?Q?EzIwIytXvO9hTx+574kD5GOEEuZYpFUoRPOODI/MG/Qn66OB1Y3UbRbd4GJz?=
 =?us-ascii?Q?OjBIPp+BfhbevYPUl/D6eK6kAICrRi69b2/kw7ALVuF/HcQX9YmMVeKJRzwJ?=
 =?us-ascii?Q?cirGYbGwM3tgspjK/CrpnRPwhG4/FJbTAytLKhEYh7cMx2xqkAnlsd3SDoZ3?=
 =?us-ascii?Q?rHf6CrQ8lcoPz6/HrEo/PAKkfTIB1mK08wvTE1G+GYAQ32/2EDTc1nT37/n0?=
 =?us-ascii?Q?ZbZKunbtL/hTH/QBJRaJ6uKNik/K+X1vZcWZulIrtNZB6xRzB0rfpO5NWZ+X?=
 =?us-ascii?Q?Znq4WT8tcNxAIrEdqkz7R9qzwB4C2qq1/jibrvb8+Tr0t2nbV0Vle7y4NfEy?=
 =?us-ascii?Q?ke4xAfXM8tGAMiqAuFlIHMMtv9CMUandPy4/D/t7OtV0geys4s22wHalfykP?=
 =?us-ascii?Q?HXvDVVhbSQCXnfsudIpjV6trqRf6A0eCzG3Ay9g4RCEiy5Mf9j74xs6Bo1my?=
 =?us-ascii?Q?GGuKbWpQCUD/8dssfKr/hVSpBFP+KUkoFq72hljarSVM1XXoXYuA8grympks?=
 =?us-ascii?Q?amxuZ2ojBZEYpNcK4lJdZCccEJGoork1GXztwkbxCJnS9zhpy3SEhkBcn5+R?=
 =?us-ascii?Q?jAnL5VcJ/ZvJhriQWCJkTpF+b/zIn63iqy2nvgapXKRdqEHmWcJGKDpnJ0ZQ?=
 =?us-ascii?Q?/YRE2RydaOvCnwwYu/F039QVVj/W4kukjgPLzXj5xW9hWCImWq855oLX8hJC?=
 =?us-ascii?Q?e9LZutvy2kIyOKdxkAz2saIxqspAWIgT+MB65yMlHAUtDf98TOvVUvyEeoiY?=
 =?us-ascii?Q?oTEHCxrzkFPUBwwUgk5BWRDI+KajnRzJf7W1PgQQ7Tb8Zw/g/j+Q9YIQA/nQ?=
 =?us-ascii?Q?SGEFQIXjxnhODlzI7Sj8WUl2AppgScHfxutXp/KVb9ssUiS5OvkQzjT5CkOd?=
 =?us-ascii?Q?Ilv7lTym0oeHLzRGmxbEBo68pNHVe9CdlgXY3iunAQJhqXH9Fwaeo2qUCM5J?=
 =?us-ascii?Q?m9QwlMKskVAagTtzJXOU6KmBKkFB?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4594.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cafc229-da5a-47d1-1e19-08d93b906879
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2021 06:29:26.2568 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N898b+6ITSIyIZgH6Icv0HL8/9SKtL6ko5CMDb7QCEa2lam6KiFqPo+osbi10KBL4iSlorSJMOf68NZzgLlUz51eIW1qpGYUNBBxFU8f7Wk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2890
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/display/dsc: Add Per
 connector debugfs node for DSC BPP enable
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, June 29, 2021 8:06 PM
> To: Patnana, Venkata Sai <venkata.sai.patnana@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/display/dsc: Add Per connector
> debugfs node for DSC BPP enable
> 
> On Tue, 29 Jun 2021, venkata.sai.patnana@intel.com wrote:
> > From: Anusha Srivatsa <anusha.srivatsa@intel.com>
> >
> > DSC can be supported per DP connector. This patch creates a per
> > connector debugfs node to expose the Input and Compressed BPP.
> >
> > The same node can be used from userspace to force DSC to a certain
> > BPP.
> >
> > force_dsc_bpp is written through this debugfs node to force DSC BPP to
> > all accepted values
> 
> This commit message only describes the "what". It's nice and helpful to
> summarize the code changes.
> 
> But the key question the commit message must answer is "why". Why are you
> doing this? Why do we need this?
> 
> This looks like it complicates code that is already complicated to add a debugfs.
> There needs to be a justification if it isn't obvious.
> 
> A couple of comments inline.
> 
> >
> > Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > Cc: Navare Manasi D <manasi.d.navare@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > Signed-off-by: Patnana Venkata Sai <venkata.sai.patnana@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_debugfs.c  | 103 +++++++++++++++++-
> >  .../drm/i915/display/intel_display_types.h    |   1 +
> >  2 files changed, 103 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index af9e58619667d..6dc223227eeaa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -2389,6 +2389,100 @@ static const struct file_operations
> i915_dsc_fec_support_fops = {
> >  	.write = i915_dsc_fec_support_write
> >  };
> >
> > +static int i915_dsc_bpp_support_show(struct seq_file *m, void *data)
> > +{
> > +	struct drm_connector *connector = m->private;
> > +	struct drm_device *dev = connector->dev;
> > +	struct drm_crtc *crtc;
> > +	struct intel_dp *intel_dp;
> > +	struct drm_modeset_acquire_ctx ctx;
> > +	struct intel_crtc_state *crtc_state = NULL;
> > +	int ret = 0;
> > +	bool try_again = false;
> > +
> > +	drm_modeset_acquire_init(&ctx,
> DRM_MODESET_ACQUIRE_INTERRUPTIBLE);
> > +
> > +	do {
> > +		try_again = false;
> > +		ret = drm_modeset_lock(&dev-
> >mode_config.connection_mutex,
> > +				       &ctx);
> > +		if (ret) {
> > +			ret = -EINTR;
> > +			break;
> > +		}
> > +		crtc = connector->state->crtc;
> > +		if (connector->status != connector_status_connected || !crtc) {
> > +			ret = -ENODEV;
> > +			break;
> > +		}
> > +		ret = drm_modeset_lock(&crtc->mutex, &ctx);
> > +		if (ret == -EDEADLK) {
> > +			ret = drm_modeset_backoff(&ctx);
> > +			if (!ret) {
> > +				try_again = true;
> > +				continue;
> > +			}
> > +			break;
> > +		} else if (ret) {
> > +			break;
> > +		}
> > +		intel_dp = intel_attached_dp(to_intel_connector(connector));
> > +		crtc_state = to_intel_crtc_state(crtc->state);
> > +		seq_printf(m, "Input_BPP: %d\n", crtc_state->pipe_bpp);
> > +		seq_printf(m, "Compressed_BPP: %d\n",
> > +				crtc_state->dsc.compressed_bpp);
> > +	} while (try_again);
> > +
> > +	drm_modeset_drop_locks(&ctx);
> > +	drm_modeset_acquire_fini(&ctx);
> > +
> > +	return ret;
> 
> Looks like copy-paste from i915_dsc_fec_support_show() which already makes
> me cringe. We can't keep accumulating this kind of code in debugfs.
@Navare, Manasi D, @Kulkarni, Vandita any thoughts ?

> 
> > +}
> > +
> > +static ssize_t i915_dsc_bpp_support_write(struct file *file,
> > +						const char __user *ubuf,
> > +						size_t len, loff_t *offp)
> > +{
> > +	int dsc_bpp = 0;
> > +	int ret;
> > +	struct drm_connector *connector =
> > +		((struct seq_file *)file->private_data)->private;
> > +	struct intel_encoder *encoder =
> intel_attached_encoder(to_intel_connector(connector));
> > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > +
> > +	if (len == 0)
> > +		return 0;
> > +
> > +	drm_dbg(&i915->drm,
> > +		"Copied %zu bytes from user to force BPP\n", len);
> 
> Just no. Again, copy-paste from the fec stuff that we shouldn't have to begin
> with.
> 
> > +
> > +	ret = kstrtoint_from_user(ubuf, len, 0, &dsc_bpp);
> > +
> > +	intel_dp->force_dsc_bpp = dsc_bpp;
> > +	if (ret < 0)
> > +		return ret;
> 
> Check the errors before using the data!
> 
> Also, how are you prepared for fractional bpp?
> 
> > +
> > +	*offp += len;
> > +	return len;
> > +}
> > +
> > +static int i915_dsc_bpp_support_open(struct inode *inode,
> > +					   struct file *file)
> > +{
> > +	return single_open(file, i915_dsc_bpp_support_show,
> > +			   inode->i_private);
> > +}
> > +
> > +static const struct file_operations i915_dsc_bpp_support_fops = {
> > +	.owner = THIS_MODULE,
> > +	.open = i915_dsc_bpp_support_open,
> > +	.read = seq_read,
> > +	.llseek = seq_lseek,
> > +	.release = single_release,
> > +	.write = i915_dsc_bpp_support_write
> > +};
> > +
> >  /**
> >   * intel_connector_debugfs_add - add i915 specific connector debugfs files
> >   * @connector: pointer to a registered drm_connector @@ -2427,9
> > +2521,16 @@ int intel_connector_debugfs_add(struct drm_connector
> *connector)
> >  				    connector,
> &i915_hdcp_sink_capability_fops);
> >  	}
> >
> > -	if ((DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv)) &&
> ((connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort &&
> !to_intel_connector(connector)->mst_port) || connector->connector_type ==
> DRM_MODE_CONNECTOR_eDP))
> > +	if ((DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv)) &&
> > +	    ((connector->connector_type ==
> DRM_MODE_CONNECTOR_DisplayPort &&
> > +	      !to_intel_connector(connector)->mst_port) ||
> > +	     connector->connector_type == DRM_MODE_CONNECTOR_eDP)) {
> >  		debugfs_create_file("i915_dsc_fec_support", S_IRUGO, root,
> >  				    connector, &i915_dsc_fec_support_fops);
> > +		debugfs_create_file("i915_dsc_bpp_support", S_IRUGO,
> > +				    root, connector,
> > +				    &i915_dsc_bpp_support_fops);
> > +	}
> >
> >  	/* Legacy panels doesn't lpsp on any platform */
> >  	if ((DISPLAY_VER(dev_priv) >= 9 || IS_HASWELL(dev_priv) || diff
> > --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index d94f361b548b7..19d8d3eefbc27 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1612,6 +1612,7 @@ struct intel_dp {
> >
> >  	/* Display stream compression testing */
> >  	bool force_dsc_en;
> > +	int force_dsc_bpp;
> >
> >  	bool hobl_failed;
> >  	bool hobl_active;
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
