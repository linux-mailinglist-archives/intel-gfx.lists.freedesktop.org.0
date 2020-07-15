Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 719FE220D94
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 15:02:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 399D06E092;
	Wed, 15 Jul 2020 13:02:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43DDF6E092
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 13:02:11 +0000 (UTC)
IronPort-SDR: DBKi1yzr0iWEwifoSEUFT6nqPZNeH8NNXDBfSp1K/pBUbY7jAd2PAy91QDUAnUS7w9hGuyXfjj
 FNhL5rMnqK3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="149133622"
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="149133622"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 06:02:07 -0700
IronPort-SDR: fEPj+p7yz6GNvCgCi37RGBu28Jrpaphb5XIqz5423+pODXjZiGmZtvTIk8jv6BbZ8RVupupcY2
 g1qrkQPhvheQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="308242280"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by fmsmga004.fm.intel.com with ESMTP; 15 Jul 2020 06:02:05 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.143) by
 IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 15 Jul 2020 14:02:04 +0100
Date: Wed, 15 Jul 2020 16:02:02 +0300
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: Melissa Wen <melissa.srw@gmail.com>
Message-ID: <20200715130202.33duapecrt6ljbgv@ahiler-desk1.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
References: <cover.1592840756.git.melissa.srw@gmail.com>
 <a1dabf70afc82f5069871489b409200e41e6ac0c.1592840756.git.melissa.srw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a1dabf70afc82f5069871489b409200e41e6ac0c.1592840756.git.melissa.srw@gmail.com>
X-Originating-IP: [10.237.68.143]
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] test/kms_cursor_crc: align the
 start of the CRC capture to a vblank
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
Cc: intel-gfx@lists.freedesktop.org, twoerner@gmail.com,
 Rodrigo.Siqueira@amd.com, rodrigosiqueiramelo@gmail.com,
 kernel-usp@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 22, 2020 at 01:38:26PM -0300, Melissa Wen wrote:
> When running subtests in sequence using vkms, the beginning of CRC capture
> process does not match the simulated vblank timing. This mismatch leads to
> an endless busy wait and, consequently, timeout failures for the remaining
> subtests in the test sequence. This patch sets the pace by waiting for
> vblank before starting the CRC capture.
> 
> Signed-off-by: Melissa Wen <melissa.srw@gmail.com>

This one is quite interetesing. The test seems to be working just fine
on the real hardware and causes the endless busy wait on VKMS only...

DRM is bad at describing usage sequences and what's defined and what's
undefined when it comes to behavior. We just try not to break any of the
existing users. On top of that CRC capture is a testing/debug feature
that doesn't have have to be stable - it's not really obvious what's the
correct course of action here.

The vblank wait won't harm anyone, especially in the context presented
above. You have to keep in mind that other implementations of CRC
caputring doesn't have that requirement and you will likely find more
similar instances of this usage pattern. There may be even more of them
introduced over time - there's no CI on VKMS (fingers crossed that this
is going to change).

Have you thought about what's easier here - making the current code work
on the VKMS side or fixing the test? I would like to know your thoughts
on this.

-- 
Cheers,
Arek




> ---
>  tests/kms_cursor_crc.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/tests/kms_cursor_crc.c b/tests/kms_cursor_crc.c
> index 5976df5f..755c34ed 100644
> --- a/tests/kms_cursor_crc.c
> +++ b/tests/kms_cursor_crc.c
> @@ -474,6 +474,7 @@ static void prepare_crtc(data_t *data, igt_output_t *output,
>  		igt_assert(data->batch);
>  	}
>  
> +	igt_wait_for_vblank(data->drm_fd, data->pipe);
>  	igt_pipe_crc_start(data->pipe_crc);
>  }
>  
> -- 
> 2.27.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
