Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2815F19E045
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 23:25:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B1026E062;
	Fri,  3 Apr 2020 21:25:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEAD36E062
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 21:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585949151;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nmOs+gNBA3A3RFDuApgZzXFC5QSnN9Fej+tOdiZ+2y4=;
 b=GdKsXRmVKhxiFc77D9OZgMOtvVP+8ZlAiTObQgwlE1igIHrWqkl9GKqgvN7P05onKb4UCC
 AqZzURg+Ly1KLAxuo+fagegioQnKJdd6RCIwBw9CnrrQJWO4KDgXTnwcaX9bXYjtv7LS26
 wY+SsMjJVzunG2qzYSHXwyNnGnf0PIc=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-263-NIswwGE5O7qqXs7X7xh30A-1; Fri, 03 Apr 2020 17:25:45 -0400
X-MC-Unique: NIswwGE5O7qqXs7X7xh30A-1
Received: by mail-qv1-f70.google.com with SMTP id z2so6993289qvw.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 14:25:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=nmOs+gNBA3A3RFDuApgZzXFC5QSnN9Fej+tOdiZ+2y4=;
 b=DiE/bcwbrOpWS9SqKcc9/NrMM0Vq/OQ+W9caUFfR3vYlH9ibBR47yF+GPNPEa5DziN
 vsX7DAW1ud9MTLgJqt++UgGuK9rgI7kSECB/gelTEAKOLQ76UFA+Xmry0qHagGbS614q
 lBRyCBZYF8178Mxje7AcrVVbxGTMu6hTgHqkqLnV/YAfmAGk2X54XUpqjQid3Qiuu294
 7EaH7y7e0FHtB5MNIKWhdHMuSRBMoc+yw08JUQVaeR0jD7WURNYfwpSqnzeGl2QXkWdh
 AHGuH5hJmC4m/GnoJjuTunVLIdvPa0+pFUlg7Px+JzA30Thg2qRbJ/P0f01ph5OHH7La
 QWqQ==
X-Gm-Message-State: AGi0PubEjGheW/nkGtpr9wnXfjIrFfCceUFd1FIfOe6hgobJ3egdF8Bt
 Xj5vAgPsBYnz6KwB3WVaeMputSq0J/DoJib+vcE2XdcUsX7M0E3+LsKTxKK6OwopHDcYFZoQ/VG
 xGFM8r+icSMnTwk0WWsvmQnzx6C1i
X-Received: by 2002:ac8:499a:: with SMTP id f26mr10159839qtq.71.1585949144858; 
 Fri, 03 Apr 2020 14:25:44 -0700 (PDT)
X-Google-Smtp-Source: APiQypJNm2ldwZMZhtl85cBFvK3k3YW4Pslyz0u22fh0AoGcUxpZgArhHI3+1gyWGuO51/Jw62zcDQ==
X-Received: by 2002:ac8:499a:: with SMTP id f26mr10159823qtq.71.1585949144613; 
 Fri, 03 Apr 2020 14:25:44 -0700 (PDT)
Received: from Ruby.lyude.net (static-173-76-190-23.bstnma.ftas.verizon.net.
 [173.76.190.23])
 by smtp.gmail.com with ESMTPSA id q1sm6882409qtn.69.2020.04.03.14.25.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 14:25:43 -0700 (PDT)
Message-ID: <2e16cf3229e6a49f12cc3f4d42d713588f779d1b.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Date: Fri, 03 Apr 2020 17:25:43 -0400
In-Reply-To: <20200322154018.15951-1-chris@chris-wilson.co.uk>
References: <20200322154018.15951-1-chris@chris-wilson.co.uk>
Organization: Red Hat
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Treat idling as a RPS
 downclock event
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

Hey - almost forgot to reply to this, I actually probably won't be able to
test this properly for a while since my razer laptop is actually stuck in the
office I work at, and I legally can't get to it with COVID-19 shelter-in-
place. Sorry about that!

On Sun, 2020-03-22 at 15:40 +0000, Chris Wilson wrote:
> If we park/unpark faster than we can respond to RPS events, we never
> will process a downlock event after expiring a waitboost, and thus we
> will forever restart the GPU at max clocks even if the workload switches
> and doesn't justify full power.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1500
> Fixes: 3e7abf814193 ("drm/i915: Extract GT render power state management")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Lyude Paul <lyude@redhat.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c
> b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 7bf631ca560b..50884aeac49c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -771,6 +771,19 @@ void intel_rps_park(struct intel_rps *rps)
>  	intel_uncore_forcewake_get(rps_to_uncore(rps), FORCEWAKE_MEDIA);
>  	rps_set(rps, rps->idle_freq, false);
>  	intel_uncore_forcewake_put(rps_to_uncore(rps), FORCEWAKE_MEDIA);
> +
> +	/*
> +	 * Since we will try and restart from the previously requested
> +	 * frequency on unparking, treat this idle point as a downlock
> +	 * interrupt and reduce the frequency for resume. If we park/unpark
> +	 * more frequently than the rps worker can run, we will not respond
> +	 * to any EI and never see a change in frequency.
> +	 *
> +	 * (Note the we accommodate Cherryview's limitation of only using
> +	 * an even bin by applying it to all.)
> +	 */
> +	rps->cur_freq =
> +		max_t(u8, round_down(rps->cur_freq - 1, 2), rps->min_freq);
>  }
>  
>  void intel_rps_boost(struct i915_request *rq)
-- 
Cheers,
	Lyude Paul (she/her)
	Associate Software Engineer at Red Hat

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
