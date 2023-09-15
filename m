Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9457A4980
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 14:24:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 897AE10E272;
	Mon, 18 Sep 2023 12:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4329B10E02B;
 Fri, 15 Sep 2023 14:01:37 +0000 (UTC)
Received: from fews01-sea.riseup.net (fews01-sea-pn.riseup.net [10.0.1.109])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx1.riseup.net (Postfix) with ESMTPS id 4RnG805hhHzDqxc;
 Fri, 15 Sep 2023 14:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1694786497; bh=MI98SM5+oIIZ1M8pFYjcc+BLWFeGwbKK+O7tzV7KOxM=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=H/0xbQDojJ9PqAIpuYOvPW/2v51NTDOmiXWDHOUtooveB53TaEK3NCEJ/ynBes0LK
 MNnrnbHAAi+TlBzZv3CyqXG3dwoNFTyPaENNDyEdJM8BBjSOKqQGLCdDAIGa6JVdyT
 CXxYAMeSVtOea7pPqUw4jl053DVTJvGS+BFC9La8=
X-Riseup-User-ID: BD85FA056706F238D9D8FBF4100C612ADFDC3F7F8EB4E34EFD2C83A48B0CEC69
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by fews01-sea.riseup.net (Postfix) with ESMTPSA id 4RnG7x6mt5zJmpf;
 Fri, 15 Sep 2023 14:01:33 +0000 (UTC)
Message-ID: <4fb393ff-3b2a-369a-5e9f-f96d802b2d87@riseup.net>
Date: Fri, 15 Sep 2023 11:01:31 -0300
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 dri-devel@lists.freedesktop.org
References: <20230911130323.7037-2-janusz.krzysztofik@linux.intel.com>
Content-Language: en-US
From: Maira Canal <mairacanal@riseup.net>
In-Reply-To: <20230911130323.7037-2-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 18 Sep 2023 12:24:43 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/tests: Fix incorrect argument in
 drm_test_mm_insert_range
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
Cc: Daniel Latypov <dlatypov@google.com>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Arthur Grillo <arthurgrillo@riseup.net>, igt-dev@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, intel-xe@lists.freedesktop.org,
 David Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 9/11/23 10:03, Janusz Krzysztofik wrote:
> While drm_mm test was converted form igt selftest to kunit, unexpected
> value of "end" argument equal "start" was introduced to one of calls to a
> function that executes the drm_test_mm_insert_range for specific start/end
> pair of arguments.  As a consequence, DRM_MM_BUG_ON(end <= start) is
> triggered.  Fix it by restoring the original value.
> 
> Fixes: fc8d29e298cf ("drm: selftest: convert drm_mm selftest to KUnit")
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Maíra Canal <mairacanal@riseup.net>

Do you need me to push it to drm-misc-fixes?

Best Regards,
- Maíra

> Cc: "Maíra Canal" <mairacanal@riseup.net>
> Cc: Arthur Grillo <arthurgrillo@riseup.net>
> Cc: Javier Martinez Canillas <javierm@redhat.com>
> Cc: Daniel Latypov <dlatypov@google.com>
> Cc: stable@vger.kernel.org # v6.1+
> ---
>   drivers/gpu/drm/tests/drm_mm_test.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/tests/drm_mm_test.c b/drivers/gpu/drm/tests/drm_mm_test.c
> index 186b28dc70380..05d5e7af6d250 100644
> --- a/drivers/gpu/drm/tests/drm_mm_test.c
> +++ b/drivers/gpu/drm/tests/drm_mm_test.c
> @@ -939,7 +939,7 @@ static void drm_test_mm_insert_range(struct kunit *test)
>   		KUNIT_ASSERT_FALSE(test, __drm_test_mm_insert_range(test, count, size, 0, max - 1));
>   		KUNIT_ASSERT_FALSE(test, __drm_test_mm_insert_range(test, count, size, 0, max / 2));
>   		KUNIT_ASSERT_FALSE(test, __drm_test_mm_insert_range(test, count, size,
> -								    max / 2, max / 2));
> +								    max / 2, max));
>   		KUNIT_ASSERT_FALSE(test, __drm_test_mm_insert_range(test, count, size,
>   								    max / 4 + 1, 3 * max / 4 - 1));
>   
