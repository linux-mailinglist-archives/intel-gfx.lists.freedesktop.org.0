Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCBF1527B4
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 09:54:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B95A6F4D2;
	Wed,  5 Feb 2020 08:54:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 820C36F4D2
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 08:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580892846;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=j+JS/wG7TlGXrx7UZkM4Ekj9xXLH6+ZGG/sh0RSyPhk=;
 b=RBt5JKdNgGOD0VvlBu09mcNBjoDYnDxNKAAaYLM1pTsh06HaYOfn8moQjDNAPkrn8Ssxe/
 qXSBR6lZHmTp7NliW0MW/j2WVtiX2YobUBAyn0n4H9zRTf440xfOOuBDPMnt4/3Btp+3Pl
 wGd8AJIhD8f9y+t0NQpDYZQIbiyiTDM=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-364-6YU9-0cRM--0m1avySYORA-1; Wed, 05 Feb 2020 03:54:02 -0500
Received: by mail-wr1-f71.google.com with SMTP id x15so834598wrl.15
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Feb 2020 00:54:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=P1zbDMmNWsRdl0wiDV5ERCFdWiZj56Tpd7qwQ5f19pY=;
 b=UehRgMxBMY06G2o0cPi2U3E53SBpquuHyXRXeCr6sDE+zxH4j8Kpa6i8G1CIMgW7bN
 V9S0daPEafi5QcaPIvFeZ6dTFRL7+JhStJtGewApaCeZ2S6ml/OmqTO1ezSdt0QZDjow
 jiVUQJWQWzLgiU/XN+cuy9Vm2DtXYdpZrCmh5rMsAJrzWxrhSnw3c3rYmd9JubUvPEp7
 RuLXSlwIRvzdTRlSBNpwXXd7poXFwyrAbUglwI2EnMh5YrA7Jem1dqeVtOuv3JWto6Mi
 bTmV57HPwRRjFZViiL2p6lH579ERtNT4wH6aONniJrCaJ95/CtV5rK8pLrICYuTC2JGa
 amfw==
X-Gm-Message-State: APjAAAX97D2DcovPr1c7/qAdsmolsNqQf8PiYlGLa+2YCBJOEQyre0Gv
 IjRq8HVM4BlUF0udv+yiqSNsvQ9yv+6tLz6TEYVyqrV5ngWFU7i/XFGzgJfZOsgadgKhbU/UK5m
 nOVrJbt0b2lTxSo+Tvl8sle+Ghrsv
X-Received: by 2002:a1c:dc85:: with SMTP id t127mr4856626wmg.16.1580892840891; 
 Wed, 05 Feb 2020 00:54:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqzRBOE0r81cjz9wr1sssxDDX9aW6zBunHwnf0VaBNVbqxbe898iFySWLzVXCbXsiwAJsNvrbQ==
X-Received: by 2002:a1c:dc85:: with SMTP id t127mr4856577wmg.16.1580892840584; 
 Wed, 05 Feb 2020 00:54:00 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2c7-a62e-15d1-2bef.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2c7:a62e:15d1:2bef])
 by smtp.gmail.com with ESMTPSA id x132sm8298004wmg.0.2020.02.05.00.53.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Feb 2020 00:54:00 -0800 (PST)
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
References: <20200201103159.3596604-1-chris@chris-wilson.co.uk>
 <20200203131203.GY13686@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <a71d9410-87f2-e5b0-6317-212362ba6049@redhat.com>
Date: Wed, 5 Feb 2020 09:53:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200203131203.GY13686@intel.com>
Content-Language: en-US
X-MC-Unique: 6YU9-0cRM--0m1avySYORA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Defer application of
 initial chv_phy_control
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 2/3/20 2:12 PM, Ville Syrj=E4l=E4 wrote:
> On Sat, Feb 01, 2020 at 10:31:59AM +0000, Chris Wilson wrote:
>> To write to the DISPLAY_PHY_CONTROL requires holding the powerwells,
>> which during early resume we have not yet acquired until later in
>> intel_display_power_init_hw(). So compute the initial chv_phy_control,
>> but leave the HW unset until we first acquire the powerwell.
>>
>> <7> [120.055984] i915 0000:00:02.0: [drm:intel_power_domains_init_hw [i9=
15]] rawclk rate: 200000 kHz
>> <4> [120.056381] ------------[ cut here ]------------
>> <4> [120.056621] i915 0000:00:02.0: Unclaimed write to register 0x1e0100
>> <4> [120.056924] WARNING: CPU: 1 PID: 164 at drivers/gpu/drm/i915/intel_=
uncore.c:1166 __unclaimed_reg_debug+0x69/0x80 [i915]
>> <4> [120.056935] Modules linked in: vgem snd_hda_codec_hdmi snd_hda_code=
c_realtek snd_hda_codec_generic btusb btrtl btbcm btintel i915 bluetooth co=
retemp crct10dif_pclmul crc32_pclmul snd_hda_intel snd_intel_dspcfg snd_hda=
_codec ghash_clmulni_intel snd_hwdep ecdh_generic ecc snd_hda_core r8169 sn=
d_pcm lpc_ich realtek pinctrl_cherryview i2c_designware_pci prime_numbers
>> <4> [120.057027] CPU: 1 PID: 164 Comm: kworker/u4:3 Tainted: G     U    =
        5.5.0-CI-CI_DRM_7854+ #1
>> <4> [120.057038] Hardware name:  /NUC5CPYB, BIOS PYBSWCEL.86A.0055.2016.=
0812.1130 08/12/2016
>> <4> [120.057058] Workqueue: events_unbound async_run_entry_fn
>> <4> [120.057275] RIP: 0010:__unclaimed_reg_debug+0x69/0x80 [i915]
>> <4> [120.057289] Code: 48 8b 78 18 48 8b 5f 50 48 85 db 74 2d e8 1f a0 3=
f e1 45 89 e8 48 89 e9 48 89 da 48 89 c6 48 c7 c7 00 8c 48 a0 e8 67 82 df e=
0 <0f> 0b 83 2d ce e2 2b 00 01 5b 5d 41 5c 41 5d c3 48 8b 1f eb ce 66
>> <4> [120.057301] RSP: 0018:ffffc90000bcfd08 EFLAGS: 00010082
>> <4> [120.057315] RAX: 0000000000000000 RBX: ffff888079919b60 RCX: 000000=
0000000003
>> <4> [120.057326] RDX: 0000000080000003 RSI: 0000000000000000 RDI: 000000=
00ffffffff
>> <4> [120.057336] RBP: ffffffffa04c9f4e R08: 0000000000000000 R09: 000000=
0000000001
>> <4> [120.057348] R10: 0000000025c3d560 R11: 000000006815f798 R12: 000000=
0000000000
>> <4> [120.057359] R13: 00000000001e0100 R14: 0000000000000286 R15: ffffff=
ff8234a76b
>> <4> [120.057371] FS:  0000000000000000(0000) GS:ffff888074b00000(0000) k=
nlGS:0000000000000000
>> <4> [120.057382] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>> <4> [120.057393] CR2: 000055f4197df0d8 CR3: 000000006f326000 CR4: 000000=
00001006e0
>> <4> [120.057404] Call Trace:
>> <4> [120.057635]  fwtable_write32+0x114/0x1d0 [i915]
>> <4> [120.057892]  intel_power_domains_init_hw+0x4ff/0x650 [i915]
>> <4> [120.058150]  intel_power_domains_resume+0x3d/0x70 [i915]
>> <4> [120.058363]  i915_drm_resume_early+0x97/0xd0 [i915]
>> <4> [120.058575]  ? i915_resume_switcheroo+0x30/0x30 [i915]
>> <4> [120.058594]  dpm_run_callback+0x64/0x280
>> <4> [120.058626]  device_resume_early+0xa7/0xe0
>> <4> [120.058652]  async_resume_early+0x14/0x40
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1089
>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Imre Deak <imre.deak@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_power.c | 5 ++---
>>   1 file changed, 2 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/driver=
s/gpu/drm/i915/display/intel_display_power.c
>> index 64943179c05e..492668d5a193 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -5163,11 +5163,10 @@ static void chv_phy_control_init(struct drm_i915=
_private *dev_priv)
>>   		dev_priv->chv_phy_assert[DPIO_PHY1] =3D true;
>>   	}
>>   =

>> -	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
>> -		       dev_priv->chv_phy_control);
>> -
>>   	drm_dbg_kms(&dev_priv->drm, "Initial PHY_CONTROL=3D0x%08x\n",
>>   		    dev_priv->chv_phy_control);
>> +
>> +	/* Defer application of initial phy_control to enabling the powerwell =
*/
> =

> Can't recall if there was a specific reason for wanting to write this
> immediately. Maybe not. At least all the asserts are after we write
> the register elsewhere so should trip that stuff. I suppose the other
> option would be to check that the display power well is enabled before
> we write this. But this is probably OK.
> =

> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> What I don't undestand is what actually changed to cause this? Did we
> reorganize something in the init/resume sequence that previously forced
> the display power well on before this point, or did we simply not check
> for the unclaimed reg access?

I have been seeing this happen occasionally for quite a while now, but it
was not always reproducible (IIRC), so I guess that we were racing with some
other code-path which did grab the power-well ?   I might be completely
wrong here, but the WARN triggered by this has been on my radar for quite
a while now.

Anyways, thank you for fixing this Chris.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
