Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA92492E44C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 12:14:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5277F10EA15;
	Thu, 11 Jul 2024 10:14:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=gmx.de header.i=deller@gmx.de header.b="cuq8LBOM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB99210EA15;
 Thu, 11 Jul 2024 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1720692892; x=1721297692; i=deller@gmx.de;
 bh=+bMT5NnSxXNV7Rt+gMDNsk011QJNzOVj00VzFIO0UKw=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
 References:From:In-Reply-To:Content-Type:
 Content-Transfer-Encoding:cc:content-transfer-encoding:
 content-type:date:from:message-id:mime-version:reply-to:subject:
 to;
 b=cuq8LBOMMH5OH76pCGSvF4MAbCVKmI5kH+wWxaPqT67k4E5DVlJw9fJaEc/CFD0D
 7MEYg+inYGljCYbn86OTX8w9828pEyQJFfh1nifAQxldKwSn0a8lB/mqadpnxcM+E
 CzgtmwqFlz163fUZh95euDcjiVmLcwLH8wF4fASL3tFFTmcKrw2MalXT2xy2zOKFt
 dNkJGFcfX1O8QEdE0NFhKQ/i7BSJi/c/oHahtFaOjbA5x4BGdS7AEEWyxdlIx77MC
 wauNB+avJ06AS+lDj/74Z8Epi6fr8up30mkV03ZSbcsk3ENsfUNtWP9a3InJvMUjb
 n0Wf8LwPxadVY4RVmg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.8.0.6] ([78.94.87.245]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N4hvR-1sH10246rP-016NPq; Thu, 11
 Jul 2024 12:09:30 +0200
Message-ID: <f057217d-0427-4f6a-9d46-a14204a70c77@gmx.de>
Date: Thu, 11 Jul 2024 12:09:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/6] fbdev/viafb: Make I2C terminology more inclusive
To: Easwar Hariharan <eahariha@linux.microsoft.com>,
 Florian Tobias Schandinat <FlorianSchandinat@gmx.de>,
 "open list:VIA UNICHROME(PRO)/CHROME9 FRAMEBUFFER DRIVER"
 <linux-fbdev@vger.kernel.org>,
 "open list:FRAMEBUFFER LAYER" <dri-devel@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 "open list:RADEON and AMDGPU DRM DRIVERS" <amd-gfx@lists.freedesktop.org>,
 "open list:INTEL DRM DISPLAY FOR XE AND I915 DRIVERS"
 <intel-gfx@lists.freedesktop.org>,
 "open list:INTEL DRM DISPLAY FOR XE AND I915 DRIVERS"
 <intel-xe@lists.freedesktop.org>,
 "open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20240711052734.1273652-1-eahariha@linux.microsoft.com>
 <20240711052734.1273652-7-eahariha@linux.microsoft.com>
Content-Language: en-US
From: Helge Deller <deller@gmx.de>
Autocrypt: addr=deller@gmx.de; keydata=
 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
In-Reply-To: <20240711052734.1273652-7-eahariha@linux.microsoft.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:nTuEi+J0pO0QgpxrgihiAsnCVNswa6CfvW/ncZy/Hs0dN75/QwL
 9CJuepXisexVP3qvIR3DTqFij72hsr02Fn6MqPAWfSuv7bdDMiYBUyB9wjrmFpTFhYM+gXw
 CZQwNY41QL9vKDMxUPnNkP1DpnmXqLiZQ5i3IqDP8opjHDVhMdXuQUB+QX7BTTWOQsXBOCe
 SJfefIJN1Tu/UviGe40aQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:BEXkSxZ1jlw=;dp3dCzGeHgph129AhFxtSNqKljG
 VL33vKAYV7ke2cBLlNqLKLHVs5QM4BCGq0IlcYM7Y1mTRNB4taC9dhWqOBGBsb9a4qyCVhNek
 x5WKLpd6MlG27/fvtzQaTmre98jhzsqOAF54UOdblgee6XXDuaM6Qf35eADgcoTFlZfb2GG3t
 F0SBiLCmxsMv8ezmpp/xE6n7efEjGJHKMIuyIoLbyweh+RlhQRYrIHSP1sYoMRadGxhcQhwLX
 Mhs0u9XoU8AcRlMl+ZX/u8nDTl/jYwKcdWVcf2+Z1s+5yUoc7zi50RVNE7JKCIb1DZCbHw57Y
 ev91axsNNFSWcWHjpWtYio/EMGowj21DcH6du25vPvj1s3B1KZs2jrfo0v4M8CcnGCtXZ2E+x
 JxJQuZNhywnARm32rWGN4Rtkf8TRjkq8YwHBx/uv9B7MQMeXt83G/3lYscE5fwQCsrW2j+Puf
 ybthtYM2bKsStnOCMNy4NnUaaYugi2vbs2rrYRc6YnvkJ/2AAlf2hzu8IUJktzVS4mSUE1o7a
 VLOuL/ZpmvuweSe8bay6xGs8CoUlyvx75w3clJtnHICo982db7SxN8/biimkSTQvfCztW+Z0g
 2PXK3OMV5muVT84nEKEoGnygM+z6+oazwUD8nZifvGzTFxJnmWpfJ0hGRkj8Mw46kmIh7w6QQ
 MUpkZXy9cgaGWSgILb9DQPZi9HR1ZeOLL2FMDxOHviuGzDt5kBuRgUF4Cpj8EzNJVYzFcJ/Na
 H2OnfgLxQlRPw6QkDCovrgIFHys85htu2/jitjB9ORa8++M2fBX5yIpnaGgr2Z6IQiPO8wPx2
 SitZRwKfn2FQ0GbJsk53lobA==
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

On 7/11/24 07:27, Easwar Hariharan wrote:
> I2C v7, SMBus 3.2, and I3C 1.1.1 specifications have replaced "master/sl=
ave"
> with more appropriate terms. Inspired by Wolfram's series to fix drivers=
/i2c/,
> fix the terminology for users of I2C_ALGOBIT bitbanging interface, now t=
hat
> the approved verbiage exists in the specification.
>
> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
> Signed-off-by: Easwar Hariharan <eahariha@linux.microsoft.com>
> ---
>   drivers/video/fbdev/via/chip.h    |  8 ++++----
>   drivers/video/fbdev/via/dvi.c     | 24 ++++++++++++------------
>   drivers/video/fbdev/via/lcd.c     |  6 +++---
>   drivers/video/fbdev/via/via_aux.h |  2 +-
>   drivers/video/fbdev/via/via_i2c.c | 12 ++++++------
>   drivers/video/fbdev/via/vt1636.c  |  6 +++---
>   6 files changed, 29 insertions(+), 29 deletions(-)

This patch was applied to the fbdev git tree.

Thanks!
Helge
